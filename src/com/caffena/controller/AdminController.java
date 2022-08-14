package com.caffena.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.util.SystemOutLogger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.caffena.beans.Cart;
import com.caffena.beans.Orders;
import com.caffena.beans.Product;
import com.caffena.beans.User;
import com.caffena.beans.Wholesale;
import com.caffena.services.AdminService;
import com.caffena.services.BasicService;

@Controller
@RequestMapping(value="admin")
public class AdminController {

	InputStream inputStream = this.getClass().getClassLoader().getResourceAsStream("/caffena/configuration.properties");
	static Properties prop = new Properties();
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	BasicService basicService;
	
	@Autowired
	BasicController basicController;
	
	@RequestMapping(method=RequestMethod.GET)
	public String admin(HttpServletRequest request)
	{
		System.out.println("Hiii work is going on");
		int i=1,j=0,count=0;
		List<Cart> cartList=adminService.getCartListByStatus(i);
		List<Product> productList=adminService.getProductList();
		List<User> userList=adminService.getAllMemberDetail();
		List<Wholesale> wholesales=adminService.getAllWholesaleEnquiryList();
		List<Orders> orders=adminService.getOrderListByPaymentDone();
		
		for(Orders os:orders)
		{
			if(os.getOrder_notify()==1)
			{
				j++;
			}
		}
		for(Wholesale ws:wholesales)
		{
			if(ws.getActive_status()==0)
			{
				count++;
			}
		}
		if(cartList!=null)
		{
			request.getSession().setAttribute("WHOLESALELIST", wholesales);
			request.setAttribute("CARTSIZE", cartList.size());
			request.setAttribute("CARTLIST", cartList);
			request.setAttribute("PRODUCTSIZE", productList.size());
			request.setAttribute("PRODUCTLIST", productList);
			request.setAttribute("CUSTOMERSIZE", userList.size());
			request.setAttribute("ORDERLIST", orders);
			request.setAttribute("ORDERCOUNT", j);
			request.setAttribute("WHOLESALERCOUNT", count);
		}
		
		return "admin-index1";
	}
	
	
	
	
	/*@RequestMapping(value="deskboard", method=RequestMethod.GET)
	public String deskboard(HttpServletRequest request)
	{
		String ustype=(String) request.getSession().getAttribute("USERTYPE");
		return "redirect:/"+ustype+"";
	}*/
	
	
	
	@RequestMapping(value="ecommerce", method=RequestMethod.GET)
	public String ecommerce()
	{
		return "ecommerce-index";
	}
	
	
	
	@RequestMapping(value="add_product_jsp", method=RequestMethod.GET)
	public String add_product_jsp()
	{
		return "add-new-product";
	}
	
	
	@RequestMapping(value="add_product", method=RequestMethod.POST)
	public String add_product(@ModelAttribute("product") Product product, BindingResult result,
			                  @RequestParam(value="available", required=false )Integer available,
			                  @RequestParam("image") CommonsMultipartFile[] image, HttpServletRequest request) throws IOException{
		
				String Image_name="";
				if(available==null)
				{
					product.setStock(0);
				}
		boolean status=adminService.save_product(product);
		
		
		System.out.println();
		//IMAGE UPLOAD
		System.out.println("Image Length:::::"+image.length);
        try{
		if(status)
        {
			for(int i=0;i<image.length;i++)
        	{
        		System.out.println("Hello Status is true:"+image[i].getOriginalFilename());
        		
        		
        	String fileExtension = image[i].getOriginalFilename().substring(image[i].getOriginalFilename().lastIndexOf("."));
      		System.out.println("checking file name in callSummary Method in AdminController ="+fileExtension);
      		byte[] decoded = image[i].getBytes();
      		prop.load(inputStream);
      		String path1 = prop.getProperty("employee.profile.image.file");

      		File f = new File(path1);
      		if (! f.exists())
      		{     f.mkdirs();    }
      		File filePath = new File(prop.getProperty("employee.profile.image.file")+product.getId()+""+i + fileExtension);
       			  
      		OutputStream out1 = new BufferedOutputStream(new FileOutputStream(filePath));
      		out1.write(decoded);
      		out1.close();
      		
      		Image_name += String.valueOf(product.getId()+""+i+fileExtension+",");
      		product.setImageName(Image_name);
      		
        	}
        	System.out.println(Image_name);
        	status=adminService.save_product(product);
        	if(status){
        		request.setAttribute("MESSAGE", "value");
        	}
        }
        }
        catch(Exception ex)
        {
        	ex.printStackTrace();
        }
        
		return "add-new-product";
	}
	
	@RequestMapping(value="view_product", method=RequestMethod.GET)
	public String view_product(HttpServletRequest request)
	{
		List<Product> products=null;
		products=adminService.getProductList();
		if(products!=null)
		{
			request.setAttribute("PRODUCTLIST", products);
		}
        return "view-product";
	}
	
    @RequestMapping(value="update_product", method=RequestMethod.GET)
    public String updateProduct(@RequestParam(value="id")Integer id,HttpServletRequest request)
    {
    	Product product=null;
    	product=adminService.getProductListById(id);
    	
    	if(product!=null)
    	{
    		request.setAttribute("PRODUCTLISTBYID", product);
    		return "add-new-product";
    	}
    	return "add-new-product";
    }
    
    /*@RequestMapping(value="/view-member-detail",method=RequestMethod.GET)
    public String view_member_detail(HttpServletRequest request)
    {
    	List<User> memberList=null;
    	memberList=adminService.getAllMemberDetail();
    	if(memberList!=null)
    	{
    	    request.setAttribute("MEMBERLIST", memberList);
    	}
    	return "member-list";
    }*/
    
    @RequestMapping(value="view_order_list",method=RequestMethod.GET)
    public String view_order_list(HttpServletRequest request)
    {
        List<Orders> orderList=null;
        Orders orderBean=null;
        orderList=adminService.getOrderListByPaymentDone();
        
        List<Orders> ordersList=new ArrayList<>();
        for(Orders os:orderList)
        {
        	orderBean=new Orders();
        	orderBean.setOrders_id(os.getOrders_id());
        	orderBean.setAddress_id(os.getAddress_id());
        	orderBean.setCart_id(os.getCart_id());
        	orderBean.setOrder_notes(os.getOrder_notes());
        	orderBean.setOrder_notify(0);
        	orderBean.setOrder_status(os.getOrder_status());
        	orderBean.setPayment_id(os.getPayment_id());
        	ordersList.add(orderBean);
        }
        
        boolean status=basicService.saveOrderList(ordersList);
        
        if(orderList.size()>0 || status)
        {
        	request.setAttribute("ORDERLIST", orderList);
        	return "view-order";
        }
        return "admin-index1";
    }

    @RequestMapping(value="home", method=RequestMethod.GET)
    public String home()
    {
    	return "admin-index";
    }
    
	
    @RequestMapping(value="/getImagebyName")
    public void getImagebyName(@RequestParam(value="imageName")String imageName,HttpServletRequest request, HttpServletResponse response){
    	
    	LoginController loginController =new LoginController();
    	try {
			loginController.getImagebyName(imageName, request, response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    }
    
    
    @RequestMapping(value="update_product", method=RequestMethod.POST)
	public String addproduct(@RequestParam(value="product_name",required=false)String product_name,
			                  @RequestParam(value="product_price",required=false)Integer product_price,
			                  @RequestParam(value="category",required=false)String category,
			                  @RequestParam(value="grade",required=false)String grade,
			                  @RequestParam(value="description",required=false)String description,
			                  @RequestParam(value="stock",required=false)Integer stock,
			                  @RequestParam(value="unit", required=false)String unit,HttpServletRequest request,
			                  @RequestParam(value="id", required=false)Integer id,
			                  @RequestParam(value="available", required=false )Integer available,
			                  @RequestParam("image1") CommonsMultipartFile[] finger_print_image) throws IOException{
		
				Product product=adminService.getProductListById(id);
				String Image_name="";
				
				product.setId(id);
		product.setGrade(grade);
		product.setProduct_name(product_name);
		product.setProduct_price(product_price);
		product.setCategory(category);
		product.setDescription(description);
		if(available==null)
		{
			product.setStock(0);
		}
		else
		{
		product.setStock(stock);
		}
		product.setUnit(unit);
		boolean status=adminService.save_product(product);
		
		//IMAGE UPLOAD
		System.out.println("Hello Java"+finger_print_image.length);
        if(status)
        {
        	
        	
        	for(int i=0;i<finger_print_image.length;i++)
        	{
        		System.out.println("Hello Status is true:"+finger_print_image[i].getOriginalFilename());
        		
        		if(!finger_print_image[i].getOriginalFilename().equals("")){
        			System.out.println("come in finger_print Block");
        	String fileExtension = finger_print_image[i].getOriginalFilename().substring(finger_print_image[i].getOriginalFilename().lastIndexOf("."));
      		System.out.println("checking file name in callSummary Method in AdminController ="+fileExtension);
      		byte[] decoded = finger_print_image[i].getBytes();
      		prop.load(inputStream);
      		String path1 = prop.getProperty("employee.profile.image.file");

      		File f = new File(path1);
      		if (! f.exists())
      		{     f.mkdirs();    }
      		File filePath = new File(prop.getProperty("employee.profile.image.file")+product.getId()+""+i + fileExtension);
       			  
      		OutputStream out1 = new BufferedOutputStream(new FileOutputStream(filePath));
      		out1.write(decoded);
      		out1.close();
      		
      		Image_name += String.valueOf(product.getId()+""+i+fileExtension+",");
      		//product.setImageName(Image_name);
        		}
        		
        	}
        	//System.out.println(Image_name);
        	status=adminService.save_product(product);
        }
    
		

		
		
		return "add-new-product";
	}
	
	@RequestMapping(value="/view_customer", method=RequestMethod.GET)
    public String view_customer(HttpServletRequest request)
    {
    	List<User> userList=null;
    	userList=adminService.getAllMemberDetail();
    	if(userList!=null)
    	{
    		request.setAttribute("CUSTOMERLIST", userList);
    		return "view-customer";
    	}
    	return "admin-header&sidebar";
    }
    
    @RequestMapping("getCartListById")
    public String getCartListById(@RequestParam(value="id")Integer user_id,HttpServletRequest request)
    {
    	
    	List<Cart> cartList=null;
    	System.out.println("Work in progress"+user_id);
        cartList=adminService.getCartListByUserId(user_id);
    	
        User userList=null;
		userList=adminService.getUserById(user_id);
        if(cartList.size()>0)
    	{
    		request.setAttribute("CARTLIST", cartList);
    		return "customer-profile";
    	}
    	else
    	{
    		request.setAttribute("USERLIST", userList);
    		return "customer-profile";
    	}
    	
        
    	
    }
    @RequestMapping(value="wholesale_enquiry")
    public ModelAndView wholesale_enquiry(ModelAndView model){
    	List<Wholesale> wholesale_enquiryList=adminService.getAllWholesaleEnquiryList();
    	model.addObject("WHOLESALELIST", wholesale_enquiryList);
    	model.setViewName("wholesale-list");
    	
    	return model;
    }
    
    @RequestMapping(value="view-WholeSale-Detail", method=RequestMethod.GET)
    public String viewWholesaleDetail(@RequestParam(value="id")Integer id,HttpServletRequest request)
    {
    	Wholesale wholesale=adminService.viewWholesalerDetail(id);
    	wholesale.setActive_status(1);
    	//BasicController basicController=null;
    	boolean status=basicService.saveOrUpdate(wholesale);
    	if(status)
    	{
    	request.setAttribute("WHOLESALE", wholesale);
    	}
    	
    	return "wholesaler-profile";
    }
    
    @RequestMapping(value="order_detail", method=RequestMethod.GET)
    public String getOrderDetail(@RequestParam(value="user_id")Integer order_id,HttpServletRequest request)
    {
    	System.out.println("what is order id:::"+order_id);
    	Orders orders=null;
    	orders=adminService.getOrderDetailByOrderId(order_id);
    	List<Orders> OrderList=new ArrayList<Orders>();
    	orders.setOrder_notify(0);
    	OrderList.add(orders);
    	boolean status=basicService.saveOrderList(OrderList);
    	if(status)
    	{
    		request.setAttribute("ORDERDETAILS", orders);
    		System.out.println("dhdhkdLLL:::"+orders.getOrder_status()+orders.getOrders_id());
    		return "order-details";
    	}
    	return "order-details";
    }
    
    
    @RequestMapping("delete_product")
    public String deleteProduct(@RequestParam(value="id",required=false)Integer productid, HttpServletRequest request)
    {
    	System.out.println("Delete Id:"+productid);
    	boolean status=adminService.deleteProductById(productid);
    	String usertType=(String) request.getSession().getAttribute("USERTYPE");
    	if(status)
    	{
    		return "redirect:view_product";
    	}
    	
    	return "admin-index1";
    }
    
    
}
