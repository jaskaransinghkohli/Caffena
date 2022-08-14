package com.caffena.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.caffena.beans.Address;
import com.caffena.beans.Cart;
import com.caffena.beans.Orders;
import com.caffena.beans.Payment;
import com.caffena.beans.Product;
import com.caffena.beans.Review;
import com.caffena.beans.User;
import com.caffena.email.Emailer;
import com.caffena.forms.Paytm_PaymentForm;
import com.caffena.services.AdminService;
import com.caffena.services.BasicService;
import com.paytm.pg.merchant.CheckSumServiceHelper;

@Controller
@RequestMapping(value = "customer")
public class CustomerController {

	static InputStream inputStream = LoginController.class.getClassLoader()
			.getResourceAsStream("/caffena/configuration.properties");
	static Properties prop = new Properties();
	static {
		try {
			prop.load(inputStream);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	// payment
	private String MID = "IGqRym41579845624004";

	public String getMID() {
		return MID;
	}

	public void setMID(String mID) {
		MID = mID;
	}

	@Autowired
	BasicController basicController;

	@Autowired
	AdminService adminService;

	@Autowired
	BasicService basicService;

	/* to be deleted */

	@RequestMapping("/Payment_logistics")
	public String Payment_logistics() {
		return "payment&logistics";
	}

	@RequestMapping("/Intellectual_property")
	public String Intellectual_property() {
		return "intellectual-property";
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
	public String shippingpolicy() {
		return "shiping-policy";
	}

	/* to be deleted */

	@RequestMapping(method = RequestMethod.GET)
	public String customer(HttpServletRequest request) {
		User usr = (User) request.getSession().getAttribute("USER");
		List<Cart> cart = null;
		cart = adminService.getAllOrderCardByUser(usr);
		if (cart != null) {
			request.setAttribute("SIZE", cart.size());
			request.setAttribute("ORDER", cart);
		}
		List<Product> product = adminService.getProductListGroupByName();
		String eq = "EQUIPMENTS";
		List<Product> equipment = basicService.getProductEquipmentList(eq);
		System.out.println("list size of product =" + product.size() + equipment.size());
		request.getSession().setAttribute("PRODUCT", product);
		request.getSession().setAttribute("EQUIPMENTS", equipment);
		return "customerHome";
	}

	@RequestMapping(value = "product-shop", method = RequestMethod.GET)
	public String product_shop(HttpServletRequest request) {

		User usr = (User) request.getSession().getAttribute("USER");
		System.out.println("Com e djdjdjjd");
		List<Product> popularProductList = adminService.getPopularProductList();
		List<Product> productList = null;
		productList = adminService.getProductListGroupByName();
		List<Cart> cart = null;
		cart = adminService.getAllOrderCardByUser(usr);
		if (cart != null) {
			request.getSession().setAttribute("SIZE", cart.size());
			request.getSession().setAttribute("ORDER", cart);
		}

		if (productList != null) {
			request.setAttribute("POPPRODUCT", popularProductList);
			request.setAttribute("PRODUCTLIST", productList);
		}
		return "shop-now";
	}

	@RequestMapping(value = "add_to_cart", method = RequestMethod.POST)
	public String add_to_cart(@RequestParam(value = "id") Integer id,
			@RequestParam(value = "quantity") Integer quantity,
			@RequestParam(value = "grind", required = false) String grind,
			@RequestParam(value = "unit", required = false) String unit, HttpServletRequest request) {
		// System.out.println(id+"::::::"+quantity+"::::::::"+grind+":::::::::"+unit);
		User usr = (User) request.getSession().getAttribute("USER");
		Cart cart = new Cart();
		Product product = adminService.getProductListById(id);
		cart.setOrder_status(0);
		cart.setProduct_id(product);
		cart.setUser_id(usr);
		cart.setGrind(grind);
		cart.setUnit(unit);
		cart.setQuantity(quantity);
		boolean status = adminService.saveOrder(cart);
		request.getSession().setAttribute("MSG", "NEWADD");
		if (status) {
			List<Cart> orderlist = null;
			orderlist = adminService.getAllOrderCardByUser(usr);
			request.setAttribute("SIZE", orderlist.size());
			request.setAttribute("ORDER", orderlist);
			return "redirect:product-shop";
		}
		return "redirect:product-shop";
	}

	@RequestMapping(value = "/product_detail", method = RequestMethod.GET)
	public String product_detail(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		Product product = adminService.getProductListById(id);
		if (product != null) {
			request.setAttribute("PRODUCTDETAIL", product);
		}
		return "product-detail";
	}

	@RequestMapping(value = "/shopSinglePage", method = RequestMethod.GET)
	public String shopSinglePage(@RequestParam("id") int id, HttpServletRequest request) {
		basicController.shopSinglePage(id, request);

		return "shopsingle";
	}

	@RequestMapping(value = "/getImagebyName")
	public void getImagebyName(@RequestParam(value = "imageName") String imageName, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		System.out.println("Image Name :" + imageName);
		inputStream = LoginController.class.getResourceAsStream("/caffena/configuration.properties");
		prop.load(inputStream);
		String destnpathfromconfig = prop.getProperty("employee.profile.image.file");
		System.out.println("Image Path: " + destnpathfromconfig);
		File image = new File(destnpathfromconfig + "" + imageName);

		if (image.exists()) {
			System.out.println("file found :" + image.getName());
		}
		try {
			response.getOutputStream().write(Files.readAllBytes(Paths.get(image.getPath())));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("view_cart")
	public String view_cart(HttpServletRequest request) {
		User usr = (User) request.getSession().getAttribute("USER");

		List<Cart> cart = null;
		cart = adminService.getAllOrderCardByUser(usr);
		if (cart != null) {
			request.setAttribute("SIZE", cart.size());
			request.setAttribute("ORDER", cart);

		}

		return "cart";
	}

	@RequestMapping("check_out")
	public String check_out(HttpServletRequest request) {
		User usr = (User) request.getSession().getAttribute("USER");
		List<Cart> cart = null;
		cart = adminService.getAllOrderCardByUser(usr);
		List<Address> addressesListByUser = basicService.getAllAddressListByUserId(usr);
		request.setAttribute("ADDRESSLIST", addressesListByUser);
		if (cart != null) {
			request.setAttribute("SIZE", cart.size());
			request.setAttribute("CARTLIST", cart);

		}
		return "checkout";
	}

	@RequestMapping(value = "save&make-payment", method = RequestMethod.POST)
	public String save_and_make_payment(@ModelAttribute("address") Address address,
			@RequestParam(value = "cart_id", required = false) String cart_id[],
			@RequestParam(value = "total_price") String price,
			@RequestParam(value = "address_id", required = false) Integer address_id,
			@RequestParam(value = "order_notes", required = false) String order_notes, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("USER");
		List<Orders> orderList = new ArrayList<Orders>();
		System.out.println("adddd " + address_id + "  vvvv " + cart_id.length);
		if (address_id != null) {
			Address addressById = basicService.getAddressById(address_id);
			for (int i = 0; i < cart_id.length; i++) {
				Orders orders = new Orders();
				Cart cart = basicService.getCartById(Integer.parseInt(cart_id[i]));
				orders.setCart_id(cart);
				orders.setAddress_id(addressById);
				orders.setOrder_notes(order_notes);
				orderList.add(orders);
			}
		} else {
			address.setUser_id(user);
			boolean status = adminService.saveAddress(address);
			for (int i = 0; i < cart_id.length; i++) {
				Orders orders = new Orders();
				orders.setAddress_id(address);
				orderList.add(orders);
			}
		}
		try {
			inputStream = CustomerController.class.getClassLoader()
					.getResourceAsStream("/caffena/configuration.properties");
			prop.load(inputStream);
			String callBackURL = prop.getProperty("application.url");
			request.getSession().setAttribute("APPLICATION_URL", callBackURL);
			request.getSession().setAttribute("ORDERLIST", orderList);
			request.getSession().setAttribute("TOTAL_AMOUNT", price);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return "pgRedirect";
	}

	@RequestMapping("delete_order")
	public String delete_order(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		boolean status = adminService.deleteOrderById(id);
		if (status) {
			User usr = (User) request.getSession().getAttribute("USER");

			List<Cart> cart = null;
			cart = adminService.getAllOrderCardByUser(usr);
			request.setAttribute("SIZE", cart.size());
			request.setAttribute("ORDER", cart);
		}
		return "cart";
	}

	@RequestMapping("viewCustomer")
	public String viewCustomer(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("USER");
		List<Cart> cartList = null;
		cartList = adminService.getCartListByUserId(user.getUser_id());
		customer(request);

		if (cartList.size() > 0) {
			request.setAttribute("CARTLIST", cartList);
			return "viewCustomerProfile";
		} else {
			request.setAttribute("USERLIST", user);
			return "viewCustomerProfile";
		}

	}

	@RequestMapping("verifyUserPassword")
	public String verifyUserPassword(@RequestParam("cnfrmPassword") String cnfrmPassword, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("USER");
		System.out.println("testing in customer controller =" + user.getName());
		if (cnfrmPassword.equals(user.getPassword())) {
			request.setAttribute("USER", user);
			return "signUp";
		}
		return "viewCustomerProfile";
	}

	@RequestMapping("updateUser")
	public String updateUser(@RequestParam(value = "firstname") String firstName,
			@RequestParam(value = "mobileno") Long mobileno, @RequestParam(value = "email") String email,
			@RequestParam(value = "password") String password, @RequestParam(value = "user_id") int user_id,
			HttpServletRequest request) {
		User cs = adminService.getUserById(user_id);
		String name = firstName;
		cs.setName(name);
		cs.setPassword(password);
		cs.setContact_number(mobileno);
		cs.setUser_id(user_id);
		boolean status = adminService.save_customer_detail(cs);
		if (status == true) {
			viewCustomer(request);
			return "viewCustomerProfile";
		}

		return "viewCustomerProfile";
	}

	@RequestMapping(value = "/products-on-price-range", method = RequestMethod.POST)
	public void productListBypriceRange(@RequestParam(value = "sortby", required = false) Integer sortby,
			@RequestParam(value = "category", required = false) String category,
			@RequestParam(value = "grade", required = false) String grade,
			@RequestParam(value = "from", required = false) String price_from,
			@RequestParam(value = "to", required = false) String price_to, HttpServletResponse response) {
		basicController.productListBypriceRange(sortby, category, grade, price_from, price_to, response);
	}

	@RequestMapping(value = "/products-on-price-range1", method = RequestMethod.POST)
	public void productListBypriceRange1(@RequestParam(value = "sortby", required = false) Integer sortby,
			@RequestParam(value = "category", required = false) String category,
			@RequestParam(value = "grade", required = false) String grade,
			@RequestParam(value = "from", required = false) String price_from,
			@RequestParam(value = "to", required = false) String price_to, HttpServletResponse response) {
		basicController.productListBypriceRange1(sortby, category, grade, price_from, price_to, response);
	}

	@RequestMapping(value = "/products-on-grade-or-category", method = RequestMethod.POST)
	public void productListByGrade(@RequestParam(value = "sortby", required = false) Integer sortby,
			@RequestParam(value = "category", required = false) String category,
			@RequestParam(value = "grade", required = false) String grade,
			@RequestParam(value = "from", required = false) String price_from,
			@RequestParam(value = "to", required = false) String price_to, HttpServletResponse response) {

		basicController.productListByGrade(sortby, category, grade, price_from, price_to, response);
	}

	@RequestMapping(value = "/products-on-grade-or-category1", method = RequestMethod.POST)
	public void productListByGrade1(@RequestParam(value = "sortby", required = false) Integer sortby,
			@RequestParam(value = "category", required = false) String category,
			@RequestParam(value = "grade", required = false) String grade,
			@RequestParam(value = "from", required = false) String price_from,
			@RequestParam(value = "to", required = false) String price_to, HttpServletResponse response) {

		basicController.productListByGrade1(sortby, category, grade, price_from, price_to, response);
	}

	@RequestMapping(value = "/products-list-orderby", method = RequestMethod.POST)
	public void productListOrderedBy(@RequestParam(value = "sortby", required = false) Integer sortby,
			@RequestParam(value = "category", required = false) String category,
			@RequestParam(value = "grade", required = false) String grade,
			@RequestParam(value = "from", required = false) String price_from,
			@RequestParam(value = "to", required = false) String price_to, HttpServletResponse response) {
		basicController.productListOrderedBy(sortby, category, grade, price_from, price_to, response);

	}

	@RequestMapping(value = "/products-on-category", method = RequestMethod.GET)
	public ModelAndView productListByCategory(@RequestParam(value = "category_id") String category,
			ModelAndView model) {
		model = basicController.productListByCategory(category, model);
		return model;
	}

	@RequestMapping(value = "add_review", method = RequestMethod.POST)
	public String add_review(@RequestParam(value = "rating") int rate, @RequestParam(value = "comment") String comment,
			@RequestParam(value = "name") String name, @RequestParam(value = "email") String email,
			@RequestParam(value = "product_id") int product_id, HttpServletRequest request) {
		System.out.println(rate + " " + comment + " " + name + " " + email + " " + product_id);
		Product productId = adminService.getProductListById(product_id);
		Review review = new Review();
		review.setRate(rate);
		review.setComment(comment);
		review.setName(name);
		review.setEmail(email);
		review.setProduct_id(productId);
		String usString = (String) request.getSession().getAttribute("USERTYPE");

		boolean status = basicService.saveReview(review);
		if (status) {
			return "redirect:/" + usString + "";
		}

		return "error";
	}

	@RequestMapping("/your-order")
	public String yourOrder(HttpServletRequest request) {
		User customer = (User) request.getSession().getAttribute("USER");
		List<Cart> orderList = adminService.getCartListByUserId(customer.getUser_id());
		request.setAttribute("CARTLIST", orderList);
		return "myOrder";
	}

	@RequestMapping("getProductByName")
	public String getProductByName(@RequestParam(value = "productName") String product_name,
			HttpServletRequest request) {
		return basicController.getProductByName(product_name, request);
	}

	@RequestMapping(value = "check-availability-of-product", method = RequestMethod.POST)
	public void check_availability(@RequestParam(value = "product_name") String product_name,
			@RequestParam(value = "unit") String unit, HttpServletResponse response) {
		
		System.out.println(product_name+" "+unit);
		basicController.check_availability(product_name, unit, response);
	}

	@RequestMapping("equipment")
	public ModelAndView equipment(ModelAndView model, HttpServletRequest request) {
		model = basicController.equipment(model);
		List<Product> popularProductList = adminService.getPopularProductList();
		request.setAttribute("POPPRODUCT", popularProductList);
		return model;

	}

	@RequestMapping("getSearchBoxList")
	public void getSearchBoxList(@RequestParam(value = "input") String input, HttpServletResponse response) {

		basicController.getSearchBoxList(input, response);

	}

	@RequestMapping(value = "pgresponse")
	public String pgresponse(@ModelAttribute("paytm_paymentFrom") Paytm_PaymentForm paytm_paymentFrom,
			HttpServletRequest request, HttpSession httpSession) {

		Date date = new Date();
		String chks = request.getParameter("CHECKSUMHASH");
		System.out.println("dddd  " + chks);
		Enumeration<String> paramNames = request.getParameterNames();
		Map<String, String[]> mapData = request.getParameterMap();
		TreeMap<String, String> parameters = new TreeMap<String, String>();
		String paytmChecksum = "";
		while (paramNames.hasMoreElements()) {
			String paramName = (String) paramNames.nextElement();
			System.out.println("paramName : " + paramName + "  chesksum  " + mapData.get("ORDERID")[0]);
			if (paramName.equals("CHECKSUMHASH")) {
				System.out.println("chcksum equals");
				paytmChecksum = mapData.get(paramName)[0];
			} else {
				parameters.put(paramName, mapData.get(paramName)[0]);
			}
		}
		boolean isValideChecksum = false;
		try {
			isValideChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().verifycheckSum(Payment.merchantKey,
					parameters, paytmChecksum);
			if (isValideChecksum && parameters.containsKey("RESPCODE")) {
				System.out.println("pgresponse3");
				TreeMap<String, String> tmap = new TreeMap<String, String>();
				tmap.put("MID", getMID());
				tmap.put("ORDERID", paytm_paymentFrom.getORDERID());
				// System.out.println("Hello Java::::s"+getMID()+"
				// "+getORDER_ID());
				String checksum = CheckSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum(Payment.merchantKey,
						tmap);
				// System.out.println("Hello Java::::s"+getMID()+"
				// "+getORDERID()+" "+checksum);
				tmap.put("CHECKSUMHASH", checksum);
				JSONObject obj = new JSONObject(tmap);
				String urlParameters = obj.toString();
				System.out.println("url   ppp  " + urlParameters);
				urlParameters = URLEncoder.encode(urlParameters);

				URL url = new URL("https://securegw.paytm.in/merchant-status/getTxnStatus");
				HttpURLConnection connection = (HttpURLConnection) url.openConnection();
				connection.setRequestMethod("POST");
				connection.setRequestProperty("contentType", "application/json");

				connection.setUseCaches(false);
				connection.setDoOutput(true);
				DataOutputStream wr = new DataOutputStream(connection.getOutputStream());
				wr.writeBytes("JsonData=");
				wr.writeBytes(urlParameters);
				wr.close();

				InputStream is = connection.getInputStream();
				BufferedReader rd = new BufferedReader(new InputStreamReader(is));
				String line = "";
				StringBuffer response = new StringBuffer();
				while ((line = rd.readLine()) != null) {
					System.out.println("line : " + line);
					response.append(line);
				}
				rd.close();

				JSONObject json = new JSONObject(response.toString());
				String responseStatus = json.getString("STATUS");
				if (!responseStatus.equalsIgnoreCase("TXN_FAILURE")) {
					User user = (User) request.getSession().getAttribute("USER");
					// Integer preboardfee=(Integer)
					// request.getSession().getAttribute("TOTAL_AMOUNT");
					// System.out.println("ffdfd "+ preboardfee);
					Payment paymentDetails = new Payment();
					// paymentDetails.setAmount();
					System.out.println("after payment:  " + paytm_paymentFrom.toString());
					paymentDetails.setBANKNAME(paytm_paymentFrom.getBANKNAME());
					paymentDetails.setBANKTXNID(paytm_paymentFrom.getBANKTXNID());
					paymentDetails.setGATEWAYNAME(paytm_paymentFrom.getGATEWAYNAME());
					paymentDetails.setORDERID(paytm_paymentFrom.getORDERID());
					paymentDetails.setPAYMENTMODE(paytm_paymentFrom.getPAYMENTMODE());
					paymentDetails.setRESPCODE(paytm_paymentFrom.getRESPCODE());
					paymentDetails.setRESPMSG(paytm_paymentFrom.getRESPMSG());
					paymentDetails.setSTATUS(paytm_paymentFrom.getSTATUS());
					paymentDetails.setTXNAMOUNT(paytm_paymentFrom.getTXNAMOUNT());
					paymentDetails.setTXNDATE(paytm_paymentFrom.getTXNDATE());
					paymentDetails.setTXNID(paytm_paymentFrom.getTXNID());
					paymentDetails.setCustomer_id(user.getUser_id());
					boolean done = basicService.saveOrUpdate(paymentDetails);
					if (done) {
						List<Orders> orderList = (List<Orders>) request.getSession().getAttribute("ORDERLIST");

						System.out.println("aaaa " + orderList.size());
						List<Orders> newOrderList = new ArrayList<>();
						List<Cart> cartList = new ArrayList<>();
						for (Orders orders : orderList) {
							System.out.println("in for lloop aaaa " + orderList.size());
							orders.setPayment_id(paymentDetails);
							orders.setOrder_status("1");
							newOrderList.add(orders);
							Cart cart = new Cart();
							cart = orders.getCart_id();
							Product product=cart.getProduct_id();
							
							
							cart.setOrder_status(1);
							boolean st = adminService.saveOrder(cart);
							
							if(product.getStock()-cart.getQuantity()==0 || product.getStock()-cart.getQuantity()>0){
							    product.setId(product.getId());
								product.setStock(product.getStock()-cart.getQuantity());
								boolean status=adminService.save_product(product);
							}
							
						}
						boolean status = basicService.saveOrderList(newOrderList);
						httpSession.removeAttribute("ORDERLIST");
						request.setAttribute("NEWORDERLIST", newOrderList);
						String email_body = " ";	
						String name = "govind";
						String email = "govi";
						String message = "message";
						
						email_body = "<div style='background:#f2f2f2;margin:0 auto;max-width:640px;padding:0 20px'><div class='adM'></div><table width='100%' border='0' align='center' cellpadding='0' cellspacing='0'><tbody><tr><td></td></tr> "
								+ "<tr><td><div style='width:96%;margin:auto;padding:20px 0 0px 0'> <img src='http://caffenaindia.com/images/logo.png' width='104' height='80' style='float:left;margin:0 0 0 0' class='CToWUd'></div> "
								+ " <div style='background:#fff;color:#5b5b5b;border-radius:4px;font-family:arial;font-size:13px;padding:10px 20px;width:90%;margin:100px auto 20px auto;line-height:17px;border:1px #ddd solid;border-top:0;clear:both'><p>Hi Caffena Team!</p><p>Here is customer enquiry details,"
								+ "<p>Customer Name :- <b>"+ name +"</b></p><p>Contact :- <b>"+email+"</p>Message :- <b>"+message+"</p>"
								+ "</div><table width='100%' border='0' cellspacing='0' cellpadding='0'> <tbody><tr></tr> "
								+ "<tr><td align='center'><table width='173' border='0' cellspacing='0' cellpadding='0'> <tbody><tr>"
								+ " </tr></tbody></table></td></tr> <tr><td height='35'> </td></tr> <tr> <td><table width='100%' border='0' cellspacing='0' cellpadding='0'><tbody style='font-family: verdana; font-size: 11px;'>"
								+ "<tr></tr><tr><td></td></tr></tbody></table><br></td></tr></tbody></table></td></tr> "
								+ "</tbody></table></div>";
						Emailer emailer = new Emailer();
						System.out.println("gggv "+ user.getEmail_id());
						emailer.emailSend("Order Details", user.getEmail_id(), email_body);
						}
					}
				}
		} catch (Exception e) {
			System.out.println("c : " + e.getCause() + " m : " + e.getMessage() + "  err  " + e);
			return "ERROR";
		}
		return "ordercomplete";
	}

}
