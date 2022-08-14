package com.caffena.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.caffena.beans.Address;
import com.caffena.beans.Cart;
import com.caffena.beans.Orders;
import com.caffena.beans.Product;
import com.caffena.beans.User;
import com.caffena.beans.Wholesale;
import com.caffena.dao.AdminDao;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao adminDao;

	@Override
	public User getUser(String email_id, String password) {
		return adminDao.getUser(email_id, password);
	}

	@Override
	public boolean save_product(Product product) {
		return adminDao.save_product(product);
	}

	@Override
	public List<Product> getProductList() {
		return adminDao.getProductList();
	}

	@Override
	public Product getProductListById(Integer id) {
		return adminDao.getProductListById(id);
	}

	@Override
	public List<User> getAllMemberDetail() {
		return adminDao.getAllMemberDetail();
	}

	@Override
	public List<Cart> getAllOrder() {
		return adminDao.getAllOrder();
	}

	@Override
	public boolean save_customer_detail(User cs) {
		return adminDao.save_customer_detail(cs);
	}

	@Override
	public boolean saveOrder(Cart Cart) {
		return adminDao.saveOrder(Cart);
	}


	@Override
	public List<Cart> getAllOrderCardByUser(User usr) {
		return adminDao.getAllOrderCardByUser(usr);
	}

	@Override
	public boolean deleteOrderById(Integer id) {
		return adminDao.deleteOrderById(id);
	}

	@Override
	public User getUserById(int user_id) {
		return adminDao.getUserById(user_id);
	}


	public boolean saveAddress(Address address) {
		return adminDao.saveAddress(address);
	}

	@Override
	public boolean saveOrderList(List<Cart> orderList) {
		return adminDao.saveOrderList(orderList);
	}

	
	public List<Product> getPopularProductList() {
		return adminDao.getPopularProductList();
	}

	@Override
	public List<Cart> getCartListByUserId(Integer user_id) {
		return adminDao.getCartListByUserId( user_id);
	}

	@Override
	public List<Cart> getCartListByStatus(int i) {
		return adminDao.getCartListByStatus( i);
	}

	@Override
	public List<Product> getProductListGroupByName() {
		return adminDao.getProductListGroupByName() ;
	}

	@Override
	public List<Wholesale> getAllWholesaleEnquiryList() {
		return adminDao.getAllWholesaleEnquiryList();
	}

	@Override
	public Wholesale viewWholesalerDetail(Integer id) {
		// TODO Auto-generated method stub
		return adminDao.viewWholesalerDetail(id);
	}

	@Override
	public List<Orders> getOrderListByPaymentDone() {
		// TODO Auto-generated method stub
		return adminDao.getOrderListByPaymentDone();
	}

	@Override
	public Orders getOrderDetailByOrderId(Integer order_id) {
		return adminDao.getOrderDetailByOrderId(order_id);
	}

	@Override
	public boolean deleteProductById(Integer productid) {
		// TODO Auto-generated method stub
		return adminDao.deleteProductById(productid);
	}

	
}
