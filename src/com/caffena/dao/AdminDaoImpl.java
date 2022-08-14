package com.caffena.dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.caffena.beans.Address;
import com.caffena.beans.Cart;
import com.caffena.beans.Orders;
import com.caffena.beans.Product;
import com.caffena.beans.User;
import com.caffena.beans.Wholesale;

@Repository
@Transactional
public class AdminDaoImpl implements AdminDao {


	@Autowired
	SessionFactory sessionFactory;
	


	@Override
	public User getUser(String email_id, String password) {
		
		User users = null;
		try
		{
			Session session = sessionFactory.getCurrentSession();
			
		TypedQuery<User> query = session.createQuery("from User where email_id =:email_id and password =:password", User.class);
		query.setParameter("email_id", email_id);
		query.setParameter("password", password);
		users = query.getSingleResult();	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		return users;
	}



	@Override
	public boolean save_product(Product product) {
		// TODO Auto-generated method stub
		boolean status=false;
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		status=true;
		return status;
	}



	@Override
	public List<Product> getProductList() {
		// TODO Auto-generated method stub
		List<Product> list=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Product> query=session.createQuery("from Product",Product.class);
	    list=query.getResultList();
		return list;
	}



	@Override
	public Product getProductListById(Integer id) {
		// TODO Auto-generated method stub
		Product product=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Product> query=session.createQuery("from Product where id=:id",Product.class);
		query.setParameter("id", id);
		product=query.getSingleResult();
		return product;
	}



	@Override
	public List<User> getAllMemberDetail() {
		// TODO Auto-generated method stub
		List<User> list=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<User> query=session.createQuery("from User where role=:role",User.class);
        query.setParameter("role", 2);		
        list=query.getResultList();
		return list;
	}



	@Override
	public List<Cart> getAllOrder() {
		// TODO Auto-generated method stub
		List<Cart> list=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Cart> query=session.createQuery("from Cart",Cart.class);
		/*query.setParameter("cart_status", 1);*/
		list=query.getResultList();
		return list;
	}



	@Override
	public boolean save_customer_detail(User cs) {
		// TODO Auto-generated method stub
		boolean status=false;
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(cs);
		status=true;
		return status;
	}



	@Override
	public boolean saveOrder(Cart Cart) {
		// TODO Auto-generated method stub
		boolean status=false;
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(Cart);
		status=true;
		return status;
	}



	@Override
	public List<Cart> getAllOrderCardByUser(User usr) {
		// TODO Auto-generated method stub
		List<Cart> Cart=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Cart> query=session.createQuery("from Cart where user_id=:user_id and order_status=:order_status", Cart.class);
		query.setParameter("user_id", usr);
		query.setParameter("order_status", 0);
		Cart=query.getResultList();
		
		return Cart;
	}



	@Override
	public boolean deleteOrderById(Integer id) {
		// TODO Auto-generated method stub
		boolean status=false;
		Session session=sessionFactory.getCurrentSession();
		Object o=session.load(Cart.class, new  Integer(id));
		Cart od=(Cart)o;
		
		session.delete(od);
			status=true;
		return status;
	}



	public User getUserById(int user_id) {
		// TODO Auto-generated method stub
		User user=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<User> query=session.createQuery("from User where user_id=:user_id",User.class);
		query.setParameter("user_id", user_id);
		user=query.getSingleResult();
		
		return user;
	}



	@Override
	public boolean saveAddress(Address address) {
		// TODO Auto-generated method stub
		boolean status=false;
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(address);
		status=true;
		return status;
	}



	@Override
	public boolean saveOrderList(List<Cart> orderList) {
		boolean status=false;
		Session session=sessionFactory.getCurrentSession();
		for(Cart Cart:orderList)
		{
			session.saveOrUpdate(Cart);
		}
		status=true;
		
		return status;
	}

	@Override
	public List<Product> getPopularProductList() {
		List<Product> popProduct=null;
		Query<Object[]> query= null;
		Session session=sessionFactory.getCurrentSession();
		String sql="SELECT product_id , p.product_name,  COUNT(*) AS number FROM cart AS o , product AS p WHERE o.product_id =p.`id` AND o.`cart_status`=1 GROUP BY product_id ORDER BY number DESC";
		query = session.createNativeQuery(sql);
		query =  query.setMaxResults(3);
		List<Object[]> res=query.getResultList();
		Iterator<Object[]> it = res.iterator();
		 popProduct=new ArrayList<>();
		while(it.hasNext()){
			
			 Object[] line = (Object[]) it.next();
			 Product pro= new Product();
			 pro.setId((int) line[0]);
			 pro.setProduct_name((String) line[1]);
			 Long log1=((BigInteger) line[2]).longValue();
			 pro.setStock(log1.intValue());
			 popProduct.add(pro);
		}
		System.out.println("pop list "+ popProduct.size());
		return popProduct;
	}
	
	@Override
	public List<Cart> getCartListByUserId(Integer user_id) {
		List<Cart> cartlist=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Cart> query=session.createQuery("from Cart where user_id.user_id=:user_id",Cart.class);
		query.setParameter("user_id", user_id);
		cartlist=query.getResultList();
		return cartlist;
	}

	@Override
	public List<Cart> getCartListByStatus(int i) {
		List<Cart> cartList=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Cart> query=session.createQuery("from Cart where order_status=:order_status",Cart.class);
		query.setParameter("order_status", i);
		cartList=query.getResultList();
		return cartList;
	}



	@Override
	public List<Product> getProductListGroupByName() {
		List<Product> productList=null;
		try{
			Session session=sessionFactory.getCurrentSession();
		TypedQuery<Product>	query=session.createQuery("From Product where category<>:category Group By Product_name", Product.class);
		query.setParameter("category", "EQUIPMENTS");
		productList=query.getResultList();
		}catch(Exception e){
			System.out.println(e);
		}
		
		return productList;
	}



	@Override
	public List<Wholesale> getAllWholesaleEnquiryList() {
		List<Wholesale> wholesales=null;
		try{
			Session session=sessionFactory.getCurrentSession();
		TypedQuery<Wholesale>	query=session.createQuery("From Wholesale", Wholesale.class);
		wholesales=query.getResultList();
		}catch(Exception e){
			System.out.println(e);
		}
		
		return wholesales;
	}



	@Override
	public Wholesale viewWholesalerDetail(Integer id) {
		// TODO Auto-generated method stub
		Wholesale wholesale=null;
		try{
			Session session=sessionFactory.getCurrentSession();
			TypedQuery<Wholesale> query=session.createQuery("from Wholesale where wholesaler_id=:wholesaler_id", Wholesale.class);
		 	query.setParameter("wholesaler_id", id);
		 	wholesale=query.getSingleResult();
		}  
		catch(Exception e)
		{
			System.out.println(e);
		}
		return wholesale;
	}



	@Override
	public List<Orders> getOrderListByPaymentDone() {
		// TODO Auto-generated method stub
		List<Orders> orders=null;
		Session session=sessionFactory.getCurrentSession();
		TypedQuery<Orders> query=session.createQuery("from Orders",Orders.class);
		orders=query.getResultList();
		return orders;
	}



	@Override
	public Orders getOrderDetailByOrderId(Integer order_id) {
		Orders orders=null;
		Session session=sessionFactory.getCurrentSession();
		System.out.println("Dao impl ke pass to aa gya data::Order id ye hia:::"+order_id);
		TypedQuery<Orders> query=session.createQuery("from Orders where order_id=:order_id",Orders.class);
		query.setParameter("order_id", order_id);
		orders=query.getSingleResult();
		return orders;
	}



	@Override
	public boolean deleteProductById(Integer productid) {
		// TODO Auto-generated method stub
		boolean status=false;
		Session session=sessionFactory.getCurrentSession();
		Object o=session.load(Product.class, new  Integer(productid));
		Product od=(Product)o;
		session.delete(od);
		status=true;
		return status;
		}
}









