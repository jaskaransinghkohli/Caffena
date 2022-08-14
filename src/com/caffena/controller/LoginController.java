 package com.caffena.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.caffena.beans.Cart;
import com.caffena.beans.Product;
import com.caffena.beans.User;
import com.caffena.email.Emailer;
import com.caffena.forms.Users;
import com.caffena.services.AdminService;

@Controller
public class LoginController {
	
	
	static InputStream inputStream = LoginController.class.getClassLoader().getResourceAsStream("/caffena/configuration.properties");
	static Properties prop = new Properties();
	static
	{
		try
		{
			prop.load(inputStream);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	@Autowired 
	AdminService adminService ;
	
	@Autowired
	BasicController basicController;
	
	
	
	@RequestMapping("/home")
	public String home() {
		return "redirect:/";
	}
	
	
	@RequestMapping("/Payment_logistics")
	public String Payment_logistics() {
		return "payment&logistics";
	}
	
	@RequestMapping("/Intellectual_property")
	public String Intellectual_property() {
		return "intellectual-property";
	}

	@RequestMapping("/loginPage")
	public String loginPage() {
	    return "login";
	}
	
	@RequestMapping("/aboutus")
	public String aboutus() {
		return "aboutus";
	}
	
	@RequestMapping("/contactus")
	public String contactus() {
		return "contactus";
	}
	
	@RequestMapping("/privacy")
	public String privacy() {
		return "privacy";
	}
	
	@RequestMapping("/disclaimer")
	public String disclaimer() {
		return "disclaimer";
	}
	
	
	@RequestMapping("/returnscancel")
	public String returnscancel() {
		return "returnscancel";
	}
	
	@RequestMapping("/tc")
	public String tc() {
		return "tc";
	}
	@RequestMapping("shipping-policy")
	public String shippingpolicy(){
		return "shiping-policy";
	}
	
	@RequestMapping("/shopPage")
	public String shopPage() {
		return "shop";
	}
	
	@RequestMapping("/shopSinglePage")
	public String shopSinglePage(@RequestParam("id") int id, HttpServletRequest request) 
	{
		Product product=null;
    	product=adminService.getProductListById(id);
    	
    	if(product!=null)
    	{
    		request.setAttribute("PRODUCT", product);
    	}
		
		return "shopsingle";
	}
	
	@RequestMapping(value = {"/login"})
	public String login(@ModelAttribute(value="form") Users form, HttpServletRequest request, HttpSession session)
	{
		String s=basicController.name;
		s="";
		System.out.println("dddkkdk"+s);
		if(form.getEmail_id()==""|| form.getEmail_id()==null){
			User customer=(User) request.getSession().getAttribute("CUSTOMERZZ");
			form.setEmail_id(customer.getEmail_id());
			form.setPassword(customer.getPassword());
			session.removeAttribute("CUSTOMERZZ");
			System.out.println("caffena work ::::::");
			/*Enumeration<String> sessionObjects = session.getAttributeNames();
			while (sessionObjects.hasMoreElements()) {
				session.removeAttribute(sessionObjects.nextElement());
			}
			session.invalidate();*/
			//session = request.getSession();
		}
		
		
		
		User user = adminService.getUser(form.getEmail_id(), form.getPassword());
		Cart cart=(Cart) request.getSession().getAttribute("CARTZZ");
		String UserType=null;
		
		String NextView=null;
		if(user != null)
		{
			if(user.getRole() == 1)
			{
				UserType="admin";
				request.getSession().setAttribute("USER", user);
				request.getSession().setAttribute("USERTYPE", UserType);
			    NextView="redirect:/admin";
			}
			if(user.getRole() == 2)
			{
				
				UserType="customer";
			    if(cart!=null){
			    	
			    	System.out.println("cart me h");
					session.removeAttribute("CARTZZ");
					Enumeration<String> sessionObjects = session.getAttributeNames();
					while (sessionObjects.hasMoreElements()) {
						session.removeAttribute(sessionObjects.nextElement());
					}
					session.invalidate();
					session = request.getSession();
					cart.setUser_id(user);
					boolean status=adminService.saveOrder(cart);
					request.getSession().setAttribute("USER", user);
					request.getSession().setAttribute("USERTYPE", UserType);
					request.getSession().setAttribute("MSG", "NEWADD");
					NextView="redirect:/"+UserType+"/product-shop";
				}
			    else{
			    	List<Product> product =  adminService.getProductList();
					System.out.println("list size of product ="+product.size());
					request.getSession().setAttribute("PRODUCT", product);
					request.getSession().setAttribute("USER", user);
					request.getSession().setAttribute("USERTYPE", UserType);
					NextView="redirect:/customer";
			    }
			  
			}
			
		}
		
		
		return NextView;	
	}
	
	@RequestMapping(value="product-shop",method=RequestMethod.GET)
	public String product_shop(HttpServletRequest request)
	{
		List<Product> popularProductList=adminService.getPopularProductList();
		List<Product> productList=null;
		productList=adminService.getProductListGroupByName();
		if(productList.size()>0)
		{
			request.setAttribute("POPPRODUCT", popularProductList);
			request.setAttribute("PRODUCTLIST", productList);
		}
		else{
			request.setAttribute("NOPRODUCTFOUND", "no product");
		}
		return "shop-now";
	}

	@RequestMapping(value="/getImagebyName")
	public void getImagebyName(@RequestParam(value="imageName")String imageName,HttpServletRequest request, HttpServletResponse response) throws IOException{
		System.out.println("Image Name :"+ imageName);
		inputStream = LoginController.class.getResourceAsStream("/caffena/configuration.properties");
		prop.load(inputStream);
		String destnpathfromconfig = prop.getProperty("employee.profile.image.file");
		System.out.println("Image Path: "+ destnpathfromconfig);
		File image=new File(destnpathfromconfig+""+imageName);
		
		if(image.exists()){
		System.out.println("file found :"+ image.getName());}
		try {
			response.getOutputStream().write(Files.readAllBytes(Paths.get(image.getPath())));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		
	}

	@RequestMapping(value="/add_customer_details", method=RequestMethod.POST)
	public String add_customer_details(@RequestParam(value="firstname")String firstName,
			                           @RequestParam(value="mobileno")Long mobileno,
			                           @RequestParam(value="email")String email,
			                           @RequestParam(value="password")String password,
			                           HttpServletRequest request)
	{
		User cs=new User();
		cs.setName(firstName);
		cs.setPassword(password);
		cs.setContact_number(mobileno);
		cs.setEmail_id(email);
		cs.setActive_status(1);
		cs.setRole(2);
		boolean status=adminService.save_customer_detail(cs);
		if(status==true)
		{
			request.getSession().setAttribute("CUSTOMERZZ", cs);
			return "redirect:/login";
		}
		
		return "login";
	}
	
	/*------------------govind---11-------------*/
	
	@RequestMapping(value = "/**/logout")
	public ModelAndView logout(ModelAndView model, HttpSession httpSession, HttpServletRequest request) {

		httpSession.removeAttribute("USER");
		httpSession.removeAttribute("USERTYPE");
		httpSession.invalidate();
		clearSession( request.getSession());
		model.setViewName("redirect:/");
		return model;

	}

	 public void clearSession(HttpSession session) {
		 
			Enumeration<String> keys=session.getAttributeNames();
			while (keys.hasMoreElements()) {
				@SuppressWarnings("unused")
				String string = (String) keys.nextElement();
				
			}
		}
	
	 @RequestMapping(value="/sendEnquiry", method=RequestMethod.POST)
	 public String sendEnquiry(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String email_body = " ";	
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String message = request.getParameter("message");
			/*String question = request.getParameter("question");
			String city = request.getParameter("city");
			String page = request.getParameter("page");*/
			
			/*System.out.println(" checking ="+page);*/
			
			/*email_body = email_body.concat("Name - "+ name+ "\n").concat(", Email - " + email+ "\n").concat(", Contact - " + message+ "\n");*/ 
				
			email_body = "<div style='background:#f2f2f2;margin:0 auto;max-width:640px;padding:0 20px'><div class='adM'></div><table width='100%' border='0' align='center' cellpadding='0' cellspacing='0'><tbody><tr><td></td></tr> "
					+ "<tr><td><div style='width:96%;margin:auto;padding:20px 0 0px 0'> <img src='http://caffenaindia.com//images/logo.png' width='104' height='80' style='float:left;margin:0 0 0 0' class='CToWUd'></div> "
					+ " <div style='background:#fff;color:#5b5b5b;border-radius:4px;font-family:arial;font-size:13px;padding:10px 20px;width:90%;margin:100px auto 20px auto;line-height:17px;border:1px #ddd solid;border-top:0;clear:both'><p>Hi Caffena Team!</p><p>Here is customer enquiry details,"
					+ "<p>Customer Name :- <b>"+ name +"</b></p><p>Contact :- <b>"+email+"</p>Message :- <b>"+message+"</p>"
					+ "</div><table width='100%' border='0' cellspacing='0' cellpadding='0'> <tbody><tr></tr> "
					+ "<tr><td align='center'><table width='173' border='0' cellspacing='0' cellpadding='0'> <tbody><tr>"
					+ " </tr></tbody></table></td></tr> <tr><td height='35'> </td></tr> <tr> <td><table width='100%' border='0' cellspacing='0' cellpadding='0'><tbody style='font-family: verdana; font-size: 11px;'>"
					+ "<tr></tr><tr><td></td></tr></tbody></table><br></td></tr></tbody></table></td></tr> "
					+ "</tbody></table></div>";
			
			Emailer emailer = new Emailer();
			
			emailer.emailSend("Customer Enquiry", "caffenaindia@gmail.com", email_body);
				
			request.getSession().setAttribute("msg", "EMAILSENT");
			
			
			/*if(page != null)
			{
				response.sendRedirect("thank-you.jsp");
			}
			else
			{
				response.sendRedirect("thank-you.jsp");
			}*/
			return "thankyou";
		}

	
	
}
