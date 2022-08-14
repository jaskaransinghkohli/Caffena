package com.caffena.forms;

import java.sql.Date;

public class Users{


	private int role;
	
	private String email_id;
	
	private String password;
	
	private String name;
	
	private int contact_number;
	
	private Date created_on;

	private int created_by;
	
	private int active_status;
	
	private int apartment_id;


	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
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

	public int getContact_number() {
		return contact_number;
	}

	public void setContact_number(int contact_number) {
		this.contact_number = contact_number;
	}

	public Date getCreated_on() {
		return created_on;
	}

	public void setCreated_on(Date created_on) {
		this.created_on = created_on;
	}

	public int getCreated_by() {
		return created_by;
	}

	public void setCreated_by(int created_by) {
		this.created_by = created_by;
	}

	public int getActive_status() {
		return active_status;
	}

	public void setActive_status(int active_status) {
		this.active_status = active_status;
	}

	public int getApartment_id() {
		return apartment_id;
	}

	public void setApartment_id(int apartment_id) {
		this.apartment_id = apartment_id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	}

	

	

