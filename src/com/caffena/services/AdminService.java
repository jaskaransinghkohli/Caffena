package com.caffena.services;

import java.util.List;

import com.caffena.beans.Address;
import com.caffena.beans.Cart;
import com.caffena.beans.Orders;
import com.caffena.beans.Product;
import com.caffena.beans.User;
import com.caffena.beans.Wholesale;


public interface AdminService {

	User getUser(String email_id, String password);

	boolean save_product(Product product);

	List<Product> getProductList();

	Product getProductListById(Integer id);

	List<User> getAllMemberDetail();

	List<Cart> getAllOrder();

	boolean save_customer_detail(User cs);

	boolean saveOrder(Cart Cart);

	List<Cart> getAllOrderCardByUser(User usr);

	boolean deleteOrderById(Integer id);

	User getUserById(int user_id);

	boolean saveAddress(Address address);

	boolean saveOrderList(List<Cart> orderList);

	List<Product> getPopularProductList();

	List<Cart> getCartListByUserId(Integer user_id);

	List<Cart> getCartListByStatus(int i);

	List<Product> getProductListGroupByName();

	List<Wholesale> getAllWholesaleEnquiryList();

	Wholesale viewWholesalerDetail(Integer id);

	List<com.caffena.beans.Orders> getOrderListByPaymentDone();

	Orders getOrderDetailByOrderId(Integer order_id);

	boolean deleteProductById(Integer productid);



}
