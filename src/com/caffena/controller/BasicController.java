package com.caffena.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.caffena.beans.Cart;
import com.caffena.beans.Product;
import com.caffena.beans.Review;
import com.caffena.beans.User;
import com.caffena.beans.Wholesale;
import com.caffena.services.AdminService;
import com.caffena.services.BasicService;

@Controller
public class BasicController {
	
/*	public 	Integer price_from1 = null;
	public  Integer price_to1 = null;*/
	
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
	BasicService basicService;
	
	
	
	@RequestMapping("/")
	public String indexPage(HttpServletRequest request) {
		
		List<Product> product =  adminService.getProductListGroupByName();
		String eq="EQUIPMENTS";
		List<Product> equipment=basicService.getProductEquipmentList(eq);
		System.out.println("list size of product ="+product.size()+equipment.size());
		request.getSession().setAttribute("PRODUCT", product);
		request.getSession().setAttribute("EQUIPMENTS", equipment);
		
		return "index";
	}

	@RequestMapping(value="/products-on-category", method=RequestMethod.GET)
	public ModelAndView productListByCategory(@RequestParam(value="category_id")String category, ModelAndView model){
	
		int sortBy=0,price_from=0, price_to=1000;
		List<Product> productlist=basicService.getproductListOnCategory(category, sortBy, price_from, price_to);
		if(productlist.size()>0)
		{
			model.addObject("PRODUCTLIST",productlist);	
		}
		else
		{
			model.addObject("NOPRODUCTFOUND","no product");
		}
		
		model.setViewName("shop-now");
		return model;
	}
	
	@RequestMapping(value="/products-on-price-range", method=RequestMethod.POST)
	public void productListBypriceRange(@RequestParam(value="sortby", required=false)Integer sortby, @RequestParam(value="category" , required=false)String category, @RequestParam(value="grade", required=false)String grade ,@RequestParam(value="from" , required=false)String price_from, @RequestParam(value="to" , required=false)String price_to,HttpServletResponse response){
		List<Product> product_list_on_price = null;
		String buffer="";
		Integer price_from1 = null;
		Integer price_to1 = null;
		price_from=price_from.replaceAll("[^a-zA-Z0-9\\s+]", "");
		price_to=price_to.replaceAll("[^a-zA-Z0-9\\s+]", "");
		System.out.println("from "+ price_from + " to: "+ price_to );
		if(price_from=="" ||price_from==null)
		{
			price_from1=0;
			}
		else
		{
			price_from1=Integer.parseInt(price_from);
			}
		if(price_to=="" || price_to ==null)
		{
			price_to1=1000;
			}
		else 
		{
			price_to1=Integer.parseInt(price_to);
			}
		if(category==null && grade==null)
		{
			
			 product_list_on_price=getProductList(category, grade, sortby, price_from1, price_to1);
			 if(product_list_on_price.size()<=0)
			 {
					buffer="<h5>No items found in the given range</h5>";
					}
			else
			{
				buffer=bufferGenerator(product_list_on_price);
				}
			}
		else
		{
			product_list_on_price=getProductList(category, grade, sortby, price_from1, price_to1);
			if(product_list_on_price.size()<=0)
			{
				buffer="<h5>No items found in the given range</h5>";
				}
			else
			{
				buffer=bufferGeneratorWithPriceRange(product_list_on_price,price_from1,price_to1);
				
				}
			}
			try 
			{
				response.getWriter().println(buffer);
				}
			catch (IOException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
				}
		}
	
	
	
	
	
	@RequestMapping(value="/products-on-price-range1", method=RequestMethod.POST)
	public void productListBypriceRange1(@RequestParam(value="sortby", required=false)Integer sortby, @RequestParam(value="category" , required=false)String category, @RequestParam(value="grade", required=false)String grade ,@RequestParam(value="from" , required=false)String price_from, @RequestParam(value="to" , required=false)String price_to,HttpServletResponse response){
		List<Product> product_list_on_price = null;
		String buffer="";
		Integer price_from1 = null;
		Integer price_to1 = null;
		price_from=price_from.replaceAll("[^a-zA-Z0-9\\s+]", "");
		price_to=price_to.replaceAll("[^a-zA-Z0-9\\s+]", "");
		System.out.println("Equpdjdlkjf   jjdsfrom "+ price_from + " to: "+ price_to );
		if(price_from=="" ||price_from==null)
		{
			price_from1=1000;
			}
		else
		{
			price_from1=Integer.parseInt(price_from);
			}
		if(price_to=="" || price_to ==null)
		{
			price_to1=99999;
			}
		else 
		{
			price_to1=Integer.parseInt(price_to);
			}
		if(grade==null)
		{
			
			 product_list_on_price=getProductList1( grade, sortby, price_from1, price_to1);
			 if(product_list_on_price.size()<=0)
			 {
					buffer="<h5>No items found in the given range</h5>";
					}
			else
			{
				buffer=bufferGenerator(product_list_on_price);
				}
			}
		else
		{
			product_list_on_price=getProductList(category, grade, sortby, price_from1, price_to1);
			if(product_list_on_price.size()<=0)
			{
				buffer="<h5>No items found in the given range</h5>";
				}
			else
			{
				buffer=bufferGeneratorWithPriceRange(product_list_on_price,price_from1,price_to1);
				
				}
			}
			try 
			{
				response.getWriter().println(buffer);
				}
			catch (IOException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
				}
		}
	
	
	@RequestMapping(value="/products-on-grade-or-category", method=RequestMethod.POST)
	public void productListByGrade(@RequestParam(value="sortby", required=false)Integer sortby, @RequestParam(value="category" , required=false)String category, @RequestParam(value="grade", required=false)String grade ,@RequestParam(value="from" , required=false)String price_from, @RequestParam(value="to" , required=false)String price_to,HttpServletResponse response){
		Integer price_from1 = null;
		Integer price_to1 = null;
		price_from=price_from.replaceAll("[^a-zA-Z0-9\\s+]", "");
		price_to=price_to.replaceAll("[^a-zA-Z0-9\\s+]", "");
		System.out.println("from "+ price_from + " to: "+ price_to );
		if(price_from=="" ||price_from==null)
		{
			price_from1=0;
			}
		else
		{
			price_from1=Integer.parseInt(price_from);
			}
		if(price_to=="" || price_to ==null)
		{
			price_to1=1000;
			}
		else 
		{
			price_to1=Integer.parseInt(price_to);
			}
		
		List<Product> productList=getProductList(category, grade, sortby, price_from1, price_to1);
		
		/////
		String buffer="";
		if(productList.size()<=0)
		{
			buffer="<h5>No items found in the given range</h5>";

		}
		else
		{
			buffer=bufferGeneratorWithPriceRange(productList, price_from1, price_to1);	
		}

		
	//	System.out.println("categry "+ category+ " grade:  "+grade );
		try 
		{
			System.out.println("ggg: ");
			response.getWriter().println(buffer);
			} 
		catch (IOException e)
		{
			e.printStackTrace();
			}
	}

	
	
	
	@RequestMapping(value="/products-on-grade-or-category1", method=RequestMethod.POST)
	public void productListByGrade1(@RequestParam(value="sortby", required=false)Integer sortby, @RequestParam(value="category" , required=false)String category, @RequestParam(value="grade", required=false)String grade ,@RequestParam(value="from" , required=false)String price_from, @RequestParam(value="to" , required=false)String price_to,HttpServletResponse response){
		Integer price_from1 = null;
		Integer price_to1 = null;
		System.out.println("hello rana ji");
		price_from=price_from.replaceAll("[^a-zA-Z0-9\\s+]", "");
		price_to=price_to.replaceAll("[^a-zA-Z0-9\\s+]", "");
		System.out.println("from "+ price_from + " to: "+ price_to );
		if(price_from=="" ||price_from==null)
		{
			price_from1=0;
			}
		else
		{
			price_from1=Integer.parseInt(price_from);
			}
		if(price_to=="" || price_to ==null)
		{
			price_to1=1000;
			}
		else 
		{
			price_to1=Integer.parseInt(price_to);
			}
		
		List<Product> productList=getProductList1( grade, sortby, price_from1, price_to1);
		
		/////
		String buffer="";
		if(productList.size()<=0)
		{
			buffer="<h5>No items found in the given range</h5>";

		}
		else
		{
			buffer=bufferGeneratorWithPriceRange(productList, price_from1, price_to1);	
		}

		
	//	System.out.println("categry "+ category+ " grade:  "+grade );
		try 
		{
			System.out.println("ggg: ");
			response.getWriter().println(buffer);
			} 
		catch (IOException e)
		{
			e.printStackTrace();
			}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/products-list-orderby", method=RequestMethod.POST)
	public void productListOrderedBy(@RequestParam(value="sortby", required=false)Integer sortby, @RequestParam(value="category" , required=false)String category, @RequestParam(value="grade", required=false)String grade ,@RequestParam(value="from" , required=false)String price_from, @RequestParam(value="to" , required=false)String price_to,HttpServletResponse response){
			
		System.out.println("s  :  "+ sortby);
		
		Integer price_from1 = null;
		Integer price_to1 = null;
		price_from=price_from.replaceAll("[^a-zA-Z0-9\\s+]", "");
		price_to=price_to.replaceAll("[^a-zA-Z0-9\\s+]", "");
		System.out.println("from "+ price_from + " to: "+ price_to );
		if(price_from=="" ||price_from==null)
		{
			price_from1=0;
			}
		else
		{
			price_from1=Integer.parseInt(price_from);
			}
		if(price_to=="" || price_to ==null)
		{
			price_to1=1000;
			}
		else 
		{
			price_to1=Integer.parseInt(price_to);
			}
		
		List<Product> productList=getProductList(category, grade, sortby, price_from1, price_to1);
		String buffer=bufferGenerator(productList);
		try {
			response.getWriter().println(buffer);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
	
	public String name="";
	List<Product> getProductList(String category, String grade, Integer sortby, Integer price_from1, Integer price_to1){
		
		List<Product> productListFinal=new ArrayList<>();
		List<Product> productList=null;
		String [] categoryArr = null; 
		String [] gradeArr = null;
		if(category==null || category==""){
			System.out.println("category null");
		}
		
		else if(category.length()>0 || category!="" || category !=null){
			categoryArr=category.split(",");
			System.out.println("xxxxx "+ categoryArr.length);
			
		}
		if(grade==null || grade== ""){
			System.out.println("grade null hai");
		}
		else if(grade.length()>0 || grade!="" || grade !=null){
			gradeArr=grade.split(",");
			System.out.println("ccccccc "+ gradeArr.length);
			
		}
		if(category!=null){
			if(grade!=null){
				for(String cat: categoryArr){
					for(String grd: gradeArr){
						productList=new ArrayList<Product>();
						productList=basicService.getProductListOnCategoryAndGrade(cat, grd, sortby, price_from1,price_to1);
						name=grd;
						//System.out.println("1:::"+name);
						productListFinal.addAll(productList);
					}
				}
			}
			else{
				for (String categ:categoryArr) {
					productList=new ArrayList<Product>();
					name=categ;
					//System.out.println("2::::"+name);
					productList=basicService.getproductListOnCategory(categ, sortby, price_from1,price_to1);
					productListFinal.addAll(productList);
				}
			}
		}
		
		else if(grade!=null){
			
			name=grade;
			System.out.println("Hello Grade"+name);
			for(String grad: gradeArr){
				productList=new ArrayList<Product>();
				productList=basicService.getProductListOnGrade( grad ,sortby, price_from1,price_to1);
				productListFinal.addAll(productList);
			}
			
		}
		else{
				/*System.out.println("naam kya hai"+name);
				if(name.equals("HOUSE BLEND") || name.equals("100% ARABICA") || name.equals("HOLY TRINITY") || name.equals("FOREIGN BLENDS"))
				{*/
					productListFinal=basicService.getProductListOnPriceRange(price_from1, price_to1, sortby);
				/*}
				else{
					productListFinal=basicService.getProductListOnPriceRangeEquipment(price_from1, price_to1, sortby);
				}*/
		
				
	
		}
		return productListFinal;
	}
List<Product> getProductList1( String grade, Integer sortby, Integer price_from1, Integer price_to1){
		
		List<Product> productListFinal=new ArrayList<>();
		List<Product> productList=null;
		String [] categoryArr = null; 
		String [] gradeArr = null;
		
		
		
		if(grade==null || grade== ""){
			System.out.println("grade null hai");
		}
		else if(grade.length()>0 || grade!="" || grade !=null){
			gradeArr=grade.split(",");
			System.out.println("ccccccc "+ gradeArr.length);
			
		}
		
		
		 if(grade!=null){
			
			name=grade;
			System.out.println("Hello Grade"+name);
			for(String grad: gradeArr){
				productList=new ArrayList<Product>();
				productList=basicService.getProductListOnGrade( grad ,sortby, price_from1,price_to1);
				productListFinal.addAll(productList);
			}
			
		}
		else{
			System.out.println("naam kya hai"+name);
			//if(name.equals("HOUSE BLEND") || name.equals("100% ARABICA") || name.equals("HOLY TRINITY") || name.equals("FOREIGN BLENDS")){
			productListFinal=basicService.getProductListOnPriceRangeEquipment(price_from1, price_to1, sortby);}
/*			//else{
				productListFinal=basicService.getProductEquipmentList("EQUIPMENTS");
			}
		
*/return productListFinal;
		}
	
	
	
	
	String bufferGenerator(List<Product> products){
		String buffer="";
		for(Product product : products){
			String imagename=product.getImageName();
			String string2[]=imagename.split(",");
			buffer +="<div class='col-md-4 col-sm-4 col-xs-12 wow fadeInDown' data-wow-duration='1000ms' data-wow-delay='300ms'><div class='shop-main-list'><div class='shop-product'><img width='263' height='241' src='getImagebyName?imageName="+string2[0]+"' class='attachment-despina-shop-slider size-despina-shop-slider wp-post-image wp-post-image1' alt='product-5' title='product-5' />"
				   + "<div class='cart-overlay-wrap'><div class='cart-overlay'><a href='shopSinglePage?id="+product.getId()+"'></a> <a href='shopSinglePage?id="+product.getId()+"' class='ho-a'><p class='ho-p'>"+product.getCategory()+"</p> <span class='span-divider'></span>"
				   + "<p class='ho1-p'>"+product.getGrade()+"</p></a><a href='shopSinglePage?id="+product.getId()+"' class='button buy-button button button-tertiary-flip'>Order</a> </div></div></div> <h5> <a href='shopSinglePage?id="+product.getId()+"'>"+product.getProduct_name()+"</a></h5>"
				   + "<span><span class='woocommerce-Price-amount amount'><span class='woocommerce-Price-currencySymbol'>&#8377;</span>"+product.getProduct_price()+"</span></span></div></div>";
				}
		return buffer;
	}
	
	String bufferGeneratorWithPriceRange(List<Product> products,Integer price_from1,Integer price_to1){
		String buffer="";
		for(Product product : products){
			if(product.getProduct_price()>price_from1 && product.getProduct_price()<price_to1){
			String imagename=product.getImageName();
			String string2[]=imagename.split(",");
			buffer +="<div class='col-md-4 col-sm-4 col-xs-12 wow fadeInDown' data-wow-duration='1000ms' data-wow-delay='300ms'><div class='shop-main-list'><div class='shop-product'><img width='263' height='241' src='getImagebyName?imageName="+string2[0]+"' class='attachment-despina-shop-slider size-despina-shop-slider wp-post-image wp-post-image1' alt='product-5' title='product-5' />"
					   + "<div class='cart-overlay-wrap'><div class='cart-overlay'><a href='shopSinglePage?id="+product.getId()+"'></a> <a href='shopSinglePage?id="+product.getId()+"' class='ho-a'><p class='ho-p'>"+product.getCategory()+"</p> <span class='span-divider'></span>"
					   + "<p class='ho1-p'>"+product.getGrade()+"</p></a><a href='shopSinglePage?id="+product.getId()+"' class='button buy-button button button-tertiary-flip'>Order</a> </div></div></div> <h5> <a href='shopSinglePage?id="+product.getId()+"'>"+product.getProduct_name()+"</a></h5>"
					   + "<span><span class='woocommerce-Price-amount amount'><span class='woocommerce-Price-currencySymbol'>&#8377;</span>"+product.getProduct_price()+"</span></span></div></div>";
				}
			}
		return buffer;
	}

	
	
	
	@RequestMapping(value="/shopSinglePage", method=RequestMethod.GET)
	public String shopSinglePage(@RequestParam("id") int id, HttpServletRequest request) 
	{
		Product product=null;
    	product=adminService.getProductListById(id);
        List<Review> reviewList=basicService.getReviewListOnProductId(product);
	
    	if(product!=null)
    	{
    		List<Product> productList=basicService.getproductListNotnCategory(product.getCategory());
    		request.setAttribute("PRODUCTLIST", productList);
    		request.setAttribute("PRODUCT", product);
			request.setAttribute("REVIEWLIST", reviewList);
    	}
		
		return "shopsingle";
	}
	
	@RequestMapping(value="add_to_cart", method=RequestMethod.POST)
	public String add_to_cart(@RequestParam(value="id")Integer id,
			                  @RequestParam(value="quantity")Integer quantity,
			                  @RequestParam(value="grind",required=false)String grind,
			                  @RequestParam(value="unit",required=false)String unit,
			                  HttpServletRequest request)
	{
		System.out.println(id+"::::::"+quantity+"::::::::"+grind+":::::::::"+unit);
		User usr=(User) request.getSession().getAttribute("USER");
		Cart cart=new Cart();
		Product product=adminService.getProductListById(id);
		cart.setOrder_status(0);
		cart.setProduct_id(product);
		cart.setGrind(grind);
		cart.setUnit(unit);
		cart.setQuantity(quantity);
		if(usr==null){
			request.getSession().setAttribute("CARTZZ",cart);
			return "redirect:/loginPage";
		}
		else{
			
			boolean status=adminService.saveOrder(cart);
			if(status)
			{
				User usr1=(User) request.getSession().getAttribute("USER");
				System.out.println(usr.getUser_id());
				List<Cart> orderlist=null;
				orderlist=adminService.getAllOrderCardByUser(usr1);
				request.setAttribute("SIZE", orderlist.size());
				request.setAttribute("ORDER", orderlist);
				return "customerHome";
			}
			return "customerHome";
		}
			
	
	}
	
	@RequestMapping("getProductByName")
	 public String getProductByName(@RequestParam(value="productName")String product_name,HttpServletRequest request)
	 {
		 System.out.println("hello"+product_name);
		 Product product=basicService.getProductOnName(product_name);
	    if(product==null){
	    	request.setAttribute("NOPRODUCT", "NOTFOUND");
	    }
	    else {
	    	List<Product> productList=basicService.getproductListNotnCategory(product.getCategory());
    		request.setAttribute("PRODUCTLIST", productList);
	    	request.setAttribute("PRODUCT", product);
		}
	    	return "shopsingle";
	 }
	
	@RequestMapping(value="check-availability-of-product", method=RequestMethod.POST)
	public void check_availability(@RequestParam(value="product_name")String product_name,
			                          @RequestParam(value="unit")String unit, HttpServletResponse response)
	{
		System.out.println("Request"+product_name+":::::"+unit);
		Product product=basicService.checkAvailabilityByProductNameUnit(product_name,unit);
		String buffer="";
		if(product==null){
			buffer+="NOT AVAILABLE";
		}
		else {
			buffer+="FOUND"+product.getProduct_price()+","+product.getStock();
			}

		
		
		try {
			response.getWriter().println(buffer);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping("equipment")
	public ModelAndView equipment(ModelAndView model)
	{
		name="";
		List<Product> list=null;
		String equpment="EQUIPMENTS";
		list=basicService.getProductEquipmentList(equpment);
		if(list.size()>0)
		{
			model.addObject("PRODUCTLIST",list);
		}
		else
		{
			model.addObject("NOPRODUCTFOUND","no product");
		}
		model.setViewName("shop-now-equipment");
		return model;
	}
	
	
	
	
	
	@RequestMapping("getSearchBoxList")
	public void getSearchBoxList(@RequestParam(value="input")String input, HttpServletResponse response){
		try{
			List<Product> productList=new ArrayList<Product>();
			List<Product> productListByName=basicService.getProductListByNameLike(input);
			String buffer="";
			int i=1;
					/*for (Product product: productListByName){
					buffer+="<li class='result-entry' data-suggestion='Target "+i+"' tabindex='"+i+"' data-position='"+i+"'   ><a class='result-link' href='#' id='"+product.getId()+"'  onclick='ChooseContact(this)'>"+product.getProduct_name()+"</a>'"+product.getCategory()+"'</li>";
					i++;
					}
					
			response.getWriter().println(buffer);*/
			
			
			for (Product product: productListByName){
				buffer+="<li class='result-entry selected' data-suggestion='Target "+i+"' tabindex='"+i+"' data-position='"+i+"' ><p><a class='result-link' href='#' id='"+product.getId()+"'  onclick='ChooseContact(this)'><span style='font-size:13px !important;'>"+product.getProduct_name()+"</span> <span>,</span> <span class='cat-grd'> "+ product.getCategory().toLowerCase()+",  ";
				if(product.getGrade().length()>12){
					buffer+=product.getGrade().toLowerCase().substring(0, 10)+"..</a></p></li>";
				}
				else{
					
				buffer+=product.getGrade().toLowerCase()+"</a></p></li>";
				}
				
				i++;
			}
				
		response.getWriter().println(buffer);
			
			
		}catch(Exception e){
			System.out.println(e);
		}
	}
	@RequestMapping(value="wholesale" , method=RequestMethod.GET)
	public ModelAndView wholesale(ModelAndView model){
		model.setViewName("wholesalepage");
		return model;
		
	}
	
	
	@RequestMapping(value="wholesale",method=RequestMethod.POST)
	public String wholesalesave(@ModelAttribute(value="wholesale")Wholesale wholesale,HttpServletRequest request)
	{
		boolean status=basicService.saveOrUpdate(wholesale);
		request.setAttribute("MESSEGE", "success");
		return "thankyou";
	}
	
	
}

