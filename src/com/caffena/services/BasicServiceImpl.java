package com.caffena.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.caffena.beans.Address;
import com.caffena.beans.Cart;
import com.caffena.beans.Orders;
import com.caffena.beans.Payment;
import com.caffena.beans.Product;
import com.caffena.beans.Review;
import com.caffena.beans.User;
import com.caffena.beans.Wholesale;
import com.caffena.dao.BasicDao;

public class BasicServiceImpl implements BasicService {

	@Autowired
	BasicDao basicDao;
	
	@Override
	public List<Product> getProductListOnPriceRange(Integer price_from, Integer price_to, Integer sortby) {
		return basicDao.getProductListOnPriceRange(price_from,  price_to, sortby);
	}

	@Override
	public List<Product> getProductListOnCategoryAndGrade(String cat, String grd, Integer sortby, Integer price_from1, Integer price_to1) {
		return basicDao.getProductListOnCategoryAndGrade(cat,  grd, sortby, price_from1,price_to1);
	}

	@Override
	public List<Product> getproductListOnCategory(String categ, Integer sortby, Integer price_from1, Integer price_to1) {
		return basicDao.getproductListOnCategory(categ ,sortby, price_from1,price_to1);
	}

	@Override
	public List<Product> getProductListOnGrade(String grad, Integer sortby, Integer price_from1, Integer price_to1) {
		return basicDao.getProductListOnGrade(grad, sortby, price_from1,price_to1);
	}

	@Override
	public List<Product> getproductListNotnCategory(String category) {
		return basicDao.getproductListNotnCategory(category);
	}

	@Override
	public List<Review> getReviewListOnProductId(Product product) {
		return basicDao.getReviewListOnProductId( product);
	}

	@Override
	public boolean saveReview(Review review) {
		return basicDao.saveReview( review);
	}

	@Override
	public Product getProductOnName(String product_name) {
		return basicDao.getProductOnName(product_name);
	}

	@Override
	public Product checkAvailabilityByProductNameUnit(String product_name, String unit) {
		// TODO Auto-generated method stub
		return basicDao.checkAvailabilityByProductNameUnit(product_name,unit);
	}

	@Override
	public List<Product> getProductEquipmentList(String equpment) {
		return basicDao.getProductEquipmentList( equpment);
	}

	@Override
	public List<Product> getProductListByNameLike(String input) {
		return basicDao.getProductListByNameLike(input);
	}

	@Override
	public List<Product> getProductListOnPriceRangeEquipment(Integer price_from1, Integer price_to1, Integer sortby) {
		// TODO Auto-generated method stub
		return basicDao.getProductListOnPriceRangeEquipment(price_from1,  price_to1, sortby);
	}

	@Override
	public boolean saveOrUpdate(Wholesale wholesale) {
		// TODO Auto-generated method stub
		return basicDao.saveOrUpdate(wholesale);
	}

	@Override
	public boolean saveOrUpdate(Payment paymentDetails) {
		return basicDao.saveOrUpdate(paymentDetails);
	}

	@Override
	public List<Address> getAllAddressListByUserId(User usr) {
		return basicDao.getAllAddressListByUserId(usr);
	}

	@Override
	public Address getAddressById(Integer address_id) {
		return basicDao.getAddressById( address_id);
	}

	@Override
	public Cart getCartById(Integer cartId) {
		return basicDao.getCartById(cartId);
	}

	@Override
	public boolean saveOrderList(List<Orders> newOrderList) {
		return basicDao.saveOrderList(newOrderList) ;
	}

}
