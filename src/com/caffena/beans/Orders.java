package com.caffena.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="order_details")
public class Orders {

	@Id
	@Column(name = "order_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orders_id;
	
	@ManyToOne
	@JoinColumn(name = "payment_id")
	private Payment payment_id;

	@ManyToOne
	@JoinColumn(name = "cart_id")
	private Cart cart_id;

	@ManyToOne
	@JoinColumn(name = "customer_address_id")
	private Address address_id;

	@Column(name = "order_status")
	private String order_status;

	@Column(name="order_notes")
	private String order_notes;
	
	@Column(name="order_notify")
	private int order_notify;
	
	public int getOrder_notify() {
		return order_notify;
	}

	public void setOrder_notify(int order_notify) {
		this.order_notify = order_notify;
	}

	public int getOrders_id() {
		return orders_id;
	}

	public void setOrders_id(int orders_id) {
		this.orders_id = orders_id;
	}

	
	public Payment getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(Payment payment_id) {
		this.payment_id = payment_id;
	}

	public Cart getCart_id() {
		return cart_id;
	}

	public void setCart_id(Cart cart_id) {
		this.cart_id = cart_id;
	}

	public Address getAddress_id() {
		return address_id;
	}

	public void setAddress_id(Address address_id) {
		this.address_id = address_id;
	}

	public String getOrder_status() {
		return order_status;
	}

	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}

	public String getOrder_notes() {
		return order_notes;
	}

	public void setOrder_notes(String order_notes) {
		this.order_notes = order_notes;
	}

	
}
