package com.caffena.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.caffena.beans.Address;
import com.caffena.beans.Cart;
import com.caffena.beans.Orders;
import com.caffena.beans.Payment;
import com.caffena.beans.Product;
import com.caffena.beans.Review;
import com.caffena.beans.User;
import com.caffena.beans.Wholesale;

@Repository
public interface BasicDao {

	List<Product> getProductListOnPriceRange(Integer price_from, Integer price_to, Integer sortby);

	List<Product> getProductListOnCategoryAndGrade(String cat, String grd, Integer sortby, Integer price_from1, Integer price_to1);

	List<Product> getproductListOnCategory(String categ, Integer sortby, Integer price_from1, Integer price_to1);

	List<Product> getProductListOnGrade(String grad, Integer sortby, Integer price_from1, Integer price_to1);

	List<Product> getproductListNotnCategory(String category);

	List<Review> getReviewListOnProductId(Product product);

	boolean saveReview(Review review);

	Product getProductOnName(String product_name);

	Product checkAvailabilityByProductNameUnit(String product_name, String unit);

	List<Product> getProductEquipmentList(String equpment);

	List<Product> getProductListByNameLike(String input);

	List<Product> getProductListOnPriceRangeEquipment(Integer price_from1, Integer price_to1, Integer sortby);

	boolean saveOrUpdate(Wholesale wholesale);

	boolean saveOrUpdate(Payment paymentDetails);

	List<Address> getAllAddressListByUserId(User usr);

	Address getAddressById(Integer address_id);

	Cart getCartById(Integer cartId);

	boolean saveOrderList(List<Orders> newOrderList);

}
