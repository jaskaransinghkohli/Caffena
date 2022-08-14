package com.caffena.beans;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "wholesale")
public class Wholesale {

	@Id
	@Column(name = "wholesaler_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int wholesaler_id;

	
	@Column(name = "email_id")
	private String email_id;

	@Column(name = "name")
	private String name;

	@Column(name = "contact_number")
	private long contact_number;

	@Column(name = "created_on")
	private Date created_on;

	@Column(name = "active_status")
	private int active_status;

	@Column(name="company_name")
	private String company_name;

	@Column(name="business_type")
	private String business_type;

	@Column(name="street_address")
	private String street_address;

	@Column(name="city")
	private String city;

	@Column(name="state")
	private String state;

	@Column(name="seating_capacity")
	private String seating_capacity;

	public int getWholesaler_id() {
		return wholesaler_id;
	}

	public void setWholesaler_id(int wholesaler_id) {
		this.wholesaler_id = wholesaler_id;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getContact_number() {
		return contact_number;
	}

	public void setContact_number(long contact_number) {
		this.contact_number = contact_number;
	}

	public Date getCreated_on() {
		return created_on;
	}

	public void setCreated_on(Date created_on) {
		this.created_on = created_on;
	}

	public int getActive_status() {
		return active_status;
	}

	public void setActive_status(int active_status) {
		this.active_status = active_status;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getBusiness_type() {
		return business_type;
	}

	public void setBusiness_type(String business_type) {
		this.business_type = business_type;
	}

	public String getStreet_address() {
		return street_address;
	}

	public void setStreet_address(String street_address) {
		this.street_address = street_address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getSeating_capacity() {
		return seating_capacity;
	}

	public void setSeating_capacity(String seating_capacity) {
		this.seating_capacity = seating_capacity;
	}

		
	}

