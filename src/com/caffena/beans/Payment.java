package com.caffena.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "payment_details")
public class Payment {
	
	public static final String PAYMENT_MODE_ONLINE = "1";
	public static final String PAYMENT_MODE_CHEQUE = "2";
	public static final String PAYMENT_MODE_CASH = "3";
	public static final String PAYMENT_MODE_DD = "4";
	public static final String PAYMENT_MODE_OTHER = "5";
	public static final String MID ="IGqRym41579845624004";
	public static final String merchantKey ="YbeHv77u2lYjma9m";

	@Id
	@Column(name = "payment_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int payment_id;

	@Column(name = "TXNID")
	private String TXNID;

	@Column(name = "BANKTXNID")
	private String BANKTXNID;

	@Column(name = "ORDERID")
	private String ORDERID;

	@Column(name = "TXNAMOUNT")
	private String TXNAMOUNT;

	@Column(name = "STATUS")
	private String STATUS;


	@Column(name = "GATEWAYNAME")
	private String GATEWAYNAME;

	@Column(name = "RESPCODE")
	private String RESPCODE;

	@Column(name = "RESPMSG")
	private String RESPMSG;

	@Column(name = "BANKNAME")
	private String BANKNAME;

	@Column(name = "PAYMENTMODE")
	private String PAYMENTMODE;

	
	@Column(name = "TXNDATE")
	private String TXNDATE;

	

	@Column(name = "Customer_id")
	private int Customer_id;



	public int getPayment_id() {
		return payment_id;
	}



	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}



	public String getTXNID() {
		return TXNID;
	}



	public void setTXNID(String tXNID) {
		TXNID = tXNID;
	}



	public String getBANKTXNID() {
		return BANKTXNID;
	}



	public void setBANKTXNID(String bANKTXNID) {
		BANKTXNID = bANKTXNID;
	}



	public String getORDERID() {
		return ORDERID;
	}



	public void setORDERID(String oRDERID) {
		ORDERID = oRDERID;
	}



	public String getTXNAMOUNT() {
		return TXNAMOUNT;
	}



	public void setTXNAMOUNT(String tXNAMOUNT) {
		TXNAMOUNT = tXNAMOUNT;
	}



	public String getSTATUS() {
		return STATUS;
	}



	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}



	public String getGATEWAYNAME() {
		return GATEWAYNAME;
	}



	public void setGATEWAYNAME(String gATEWAYNAME) {
		GATEWAYNAME = gATEWAYNAME;
	}



	public String getRESPCODE() {
		return RESPCODE;
	}



	public void setRESPCODE(String rESPCODE) {
		RESPCODE = rESPCODE;
	}



	public String getRESPMSG() {
		return RESPMSG;
	}



	public void setRESPMSG(String rESPMSG) {
		RESPMSG = rESPMSG;
	}



	public String getBANKNAME() {
		return BANKNAME;
	}



	public void setBANKNAME(String bANKNAME) {
		BANKNAME = bANKNAME;
	}



	public String getPAYMENTMODE() {
		return PAYMENTMODE;
	}



	public void setPAYMENTMODE(String pAYMENTMODE) {
		PAYMENTMODE = pAYMENTMODE;
	}



	public String getTXNDATE() {
		return TXNDATE;
	}



	public void setTXNDATE(String tXNDATE) {
		TXNDATE = tXNDATE;
	}



	



	public static String getPaymentModeOnline() {
		return PAYMENT_MODE_ONLINE;
	}



	public static String getPaymentModeCheque() {
		return PAYMENT_MODE_CHEQUE;
	}



	public static String getPaymentModeCash() {
		return PAYMENT_MODE_CASH;
	}



	public static String getPaymentModeDd() {
		return PAYMENT_MODE_DD;
	}



	public static String getPaymentModeOther() {
		return PAYMENT_MODE_OTHER;
	}



	public static String getMid() {
		return MID;
	}
	



	public static String getMerchantkey() {
		return merchantKey;
	}



	public int getCustomer_id() {
		return Customer_id;
	}



	public void setCustomer_id(int customer_id) {
		Customer_id = customer_id;
	}


}
