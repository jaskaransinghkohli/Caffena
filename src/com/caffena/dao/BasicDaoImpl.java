package com.caffena.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.caffena.beans.Address;
import com.caffena.beans.Cart;
import com.caffena.beans.Orders;
import com.caffena.beans.Payment;
import com.caffena.beans.Product;
import com.caffena.beans.Review;
import com.caffena.beans.User;
import com.caffena.beans.Wholesale;

@Transactional
public class BasicDaoImpl implements BasicDao {

	@Autowired
	SessionFactory sessionFactory;
	
	
	@Override
	public List<Product> getProductListOnPriceRange(Integer price_from, Integer price_to ,Integer sortby) {

		List<Product> list=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Product> query = null;
		switch (sortby) {
		case 0:
			 query=session.createQuery("from Product where  product_price>:price_from and product_price<:price_to and category<>:category GROUP BY product_name",Product.class);
			break;
		case 1:
			query=session.createQuery("from Product where   product_price>:price_from and product_price<:price_to GROUP BY product_name ORDER BY product_price ASC",Product.class);
			break;
		case 9: 	
			query=session.createQuery("from Product where   product_price>:price_from and product_price<:price_to GROUP BY product_name ORDER BY product_price DESC",Product.class);
		
		}
		query.setParameter("price_from", price_from);
		query.setParameter("price_to", price_to);
		query.setParameter("category", "EQUIPMENTS");
		list=query.getResultList();
		System.out.println("pr list "+ list.size());
		return list;
	}


	@Override
	public List<Product> getProductListOnCategoryAndGrade(String cat, String grd, Integer sortby, Integer price_from1, Integer price_to1) {

		List<Product> products=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Product> query = null;
		switch (sortby) {
		case 0:
			 query=session.createQuery("from Product where  category=:cat  AND grade=:grd AND product_price>:product_price_from and product_price<:product_price_to GROUP BY product_name",Product.class);
			break;
		case 1:
			query=session.createQuery("from Product where  category=:cat  AND grade=:grd AND product_price>:product_price_from and product_price<:product_price_to GROUP BY product_name ORDER BY product_price ASC",Product.class);
			break;
		case 9: 	
			query=session.createQuery("from Product where  category=:cat  AND grade=:grd AND product_price>:product_price_from and product_price<:product_price_to GROUP BY product_name ORDER BY product_price DESC",Product.class);
		
		}
		query.setParameter("cat", cat);
		query.setParameter("grd", grd);
		query.setParameter("product_price_from",price_from1 );
		query.setParameter("product_price_to", price_to1);
		products=query.getResultList();
		System.out.println("pr list "+ products.size());
		return products;
	}


	@Override
	public List<Product> getproductListOnCategory(String categ, Integer sortby, Integer price_from1, Integer price_to1) {
		List<Product> products=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Product> query = null;
		switch (sortby) {
		case 0:
			 query=session.createQuery("from Product where  category=:categ AND product_price>:product_price_from and product_price<:product_price_to GROUP BY product_name",Product.class);
			break;
		case 1:
			query=session.createQuery("from Product where  category=:categ AND product_price>:product_price_from and product_price<:product_price_to GROUP BY product_name ORDER BY product_price ASC",Product.class);
			break;
		case 9: 	
			query=session.createQuery("from Product where  category=:categ AND product_price>:product_price_from and product_price<:product_price_to GROUP BY product_name ORDER BY product_price DESC",Product.class);
		}
		query.setParameter("categ", categ);
		query.setParameter("product_price_from",price_from1 );
		query.setParameter("product_price_to", price_to1);
		products=query.getResultList();
		System.out.println("pr list "+ products.size());
		return products;
	}


	@Override
	public List<Product> getProductListOnGrade(String grad, Integer sortby, Integer price_from1, Integer price_to1) {
		List<Product> products=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Product> query = null;
		switch (sortby) {
		case 0:
			 query=session.createQuery("from Product where grade=:grad  AND product_price>:product_price_from and product_price<:product_price_to GROUP BY product_name",Product.class);
			break;
		case 1:
			query=session.createQuery("from Product where  grade=:grad AND product_price>:product_price_from and product_price<:product_price_to GROUP BY product_name ORDER BY product_price ASC",Product.class);
			break;
		case 9: 	
			query=session.createQuery("from Product where  grade=:grad AND product_price>:product_price_from and product_price<:product_price_to GROUP BY product_name ORDER BY product_price DESC",Product.class);
		}
		query.setParameter("grad", grad);
		query.setParameter("product_price_from",price_from1 );
		query.setParameter("product_price_to", price_to1);
		products=query.getResultList();
		System.out.println("pr list::::::::: "+ products.size());
		return products;
	}


	@Override
	public List<Product> getproductListNotnCategory(String category) {
		List<Product> products=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Product> query = null;
		query=session.createQuery("from Product where  category<>:category ",Product.class);
		query.setParameter("category",category );
		query.setMaxResults(4);
		products=query.getResultList();
		System.out.println("pr list "+ products.size());
		return products;
	
	}
	
	
	@Override
	public boolean saveReview(Review review) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(review);
		return true;
	}
	
	@Override
	public List<Review> getReviewListOnProductId(Product product) {
		List<Review> reviewList=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Review> query=session.createQuery("from Review where product_id=:product_id",Review.class);
		query.setParameter("product_id", product);
		reviewList=query.getResultList();
		return reviewList;
	}
	
	@Override
	public Product getProductOnName(String product_name) {
		
		Product product=null;
		try{
			Session session=sessionFactory.getCurrentSession();
			TypedQuery<Product> query=session.createQuery("from Product where product_name=:product_name",Product.class);
			query.setParameter("product_name", product_name);
			query.setMaxResults(1);
			product=query.getSingleResult();
			}
			catch(Exception e)
			{
				System.out.println(e);
				}
		return product;
	}


	@Override
	public Product checkAvailabilityByProductNameUnit(String product_name, String unit) {
		Product product=null;
		try{
			Session session=sessionFactory.getCurrentSession();
			TypedQuery<Product> query=session.createQuery("from Product where product_name=:product_name and unit=:unit",Product.class);
			query.setParameter("product_name", product_name);
			query.setParameter("unit", unit);
			product=query.getSingleResult();
		}
		catch(Exception e){
			System.out.println(e);
		}
		return product;
		}


	@Override
	public List<Product> getProductEquipmentList(String equpment) {
		List<Product> equipmentList=null;
		try{
			Session session=sessionFactory.getCurrentSession();
			TypedQuery<Product> query=session.createQuery("from Product where category=:equpment",Product.class);
			query.setParameter("equpment", equpment);
			equipmentList=query.getResultList();
		}
		catch(Exception e){
			System.out.println(e);
		}
		
		return equipmentList;
	}


	@Override
	public List<Product> getProductListByNameLike(String input) {
		List<Product> products=null;
		input=input.toLowerCase();
		input="%"+input+"%";
		try{
			TypedQuery<Product> query=sessionFactory.getCurrentSession().createQuery("from Product p where lower(p.product_name) like:input OR lower(p.grade) like:input OR lower(p.category) like:input Group By id ", Product.class);
			query.setParameter("input", input);
			products=query.getResultList();
		}catch(Exception e){
			System.out.println(e);
		}
		return products;
	}


	@Override
	public List<Product> getProductListOnPriceRangeEquipment(Integer price_from1, Integer price_to1, Integer sortby) {
		List<Product> list=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Product> query = null;
		switch (sortby) {
		case 0:
			 query=session.createQuery("from Product where  product_price>:price_from and product_price<:price_to and category=:category GROUP BY product_name",Product.class);
			break;
		case 1:
			query=session.createQuery("from Product where   product_price>:price_from and product_price<:price_to GROUP BY product_name ORDER BY product_price ASC",Product.class);
			break;
		case 9: 	
			query=session.createQuery("from Product where   product_price>:price_from and product_price<:price_to GROUP BY product_name ORDER BY product_price DESC",Product.class);
		
		}
		query.setParameter("price_from", price_from1);
		query.setParameter("price_to", price_to1);
		query.setParameter("category", "EQUIPMENTS");
		list=query.getResultList();
		System.out.println("pr list "+ list.size());
		return list;
	}


	@Override
	public boolean saveOrUpdate(Wholesale wholesale) {
		// TODO Auto-generated method stub
		boolean status=false;
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(wholesale);
		status=true;
		return status;
	}


	@Override
	public boolean saveOrUpdate(Payment paymentDetails) {

		boolean status=false;
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(paymentDetails);
		status=true;
		return status;
	}


	@Override
	public List<Address> getAllAddressListByUserId(User usr) {
		List<Address> addressList=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Address> query = null;
			 query=session.createQuery("From Address where user_id=:usr", Address.class);
		query.setParameter("usr", usr);
		addressList=query.getResultList();
		return addressList;
	}


	@Override
	public Address getAddressById(Integer address_id) {
		Address address= null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Address> query = null;
			 query=session.createQuery("From Address where address_id=:address_id", Address.class);
		query.setParameter("address_id", address_id);
		address=query.getSingleResult();
		return address;
		
	}


	@Override
	public Cart getCartById(Integer cartId) {
		Cart cart=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Cart> query = null;
			 query=session.createQuery("From Cart where cart_id=:cart_id", Cart.class);
		query.setParameter("cart_id", cartId);
		cart=query.getSingleResult();
		
		return cart;
	}


	@Override
	public boolean saveOrderList(List<Orders> newOrderList) {
		boolean status=false;
		Session session=sessionFactory.getCurrentSession();
		for(Orders orders: newOrderList){
			System.out.println("ddddaooo "+ orders.getCart_id());
			session.saveOrUpdate(orders);
		}
		status=true;
		return status;
	}

}
