package com.caffena.beans;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class Cart {

	@Id
	@Column(name="cart_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int order_id;

	@ManyToOne
	@JoinColumn(name = "product_id")
	private Product product_id;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user_id;

	@Column(name = "cart_on")
	private Date date;

	@Column(name="cart_status")
	private int order_status;
	
	@Column(name="quantity")
	private int quantity;
	
	@Column(name="unit")
	private String unit;
	
	@Column(name="grind")
	private String grind;
	
	public String getGrind() {
		return grind;
	}

	public void setGrind(String grind) {
		this.grind = grind;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public int getOrder_status() {
		return order_status;
	}

	public void setOrder_status(int order_status) {
		this.order_status = order_status;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public Product getProduct_id() {
		return product_id;
	}

	public void setProduct_id(Product product_id) {
		this.product_id = product_id;
	}

	public User getUser_id() {
		return user_id;
	}

	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}


	
	
	}
