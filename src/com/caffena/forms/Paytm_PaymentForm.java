package com.caffena.forms;

public class Paytm_PaymentForm {

	private String MID = "IGqRym41579845624004";
	private String BANKNAME;//99
	private String BANKTXNID;//2
	private String CHECKSUMHASH;
	private String CURRENCY;
	private String GATEWAYNAME;//6
	private String ORDERID;//3
	private String PAYMENTMODE;//77
	private String RESPCODE;//7
	private String RESPMSG;//8
	private String STATUS;//5
	private String TXNAMOUNT;//4
	private String TXNDATE;//
	private String TXNID;//l
	public String getMID() {
		return MID;
	}
	public void setMID(String mID) {
		MID = mID;
	}
	public String getBANKNAME() {
		return BANKNAME;
	}
	public void setBANKNAME(String bANKNAME) {
		BANKNAME = bANKNAME;
	}
	public String getBANKTXNID() {
		return BANKTXNID;
	}
	public void setBANKTXNID(String bANKTXNID) {
		BANKTXNID = bANKTXNID;
	}
	public String getCHECKSUMHASH() {
		return CHECKSUMHASH;
	}
	public void setCHECKSUMHASH(String cHECKSUMHASH) {
		CHECKSUMHASH = cHECKSUMHASH;
	}
	public String getCURRENCY() {
		return CURRENCY;
	}
	public void setCURRENCY(String cURRENCY) {
		CURRENCY = cURRENCY;
	}
	public String getGATEWAYNAME() {
		return GATEWAYNAME;
	}
	public void setGATEWAYNAME(String gATEWAYNAME) {
		GATEWAYNAME = gATEWAYNAME;
	}
	public String getORDERID() {
		return ORDERID;
	}
	public void setORDERID(String oRDERID) {
		ORDERID = oRDERID;
	}
	public String getPAYMENTMODE() {
		return PAYMENTMODE;
	}
	public void setPAYMENTMODE(String pAYMENTMODE) {
		PAYMENTMODE = pAYMENTMODE;
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
	public String getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}
	public String getTXNAMOUNT() {
		return TXNAMOUNT;
	}
	public void setTXNAMOUNT(String tXNAMOUNT) {
		TXNAMOUNT = tXNAMOUNT;
	}
	public String getTXNDATE() {
		return TXNDATE;
	}
	public void setTXNDATE(String tXNDATE) {
		TXNDATE = tXNDATE;
	}
	public String getTXNID() {
		return TXNID;
	}
	public void setTXNID(String tXNID) {
		TXNID = tXNID;
	}
	@Override
	public String toString() {
		return "Paytm_PaymentForm [MID=" + MID + ", BANKNAME=" + BANKNAME + ", BANKTXNID=" + BANKTXNID
				+ ", CHECKSUMHASH=" + CHECKSUMHASH + ", CURRENCY=" + CURRENCY + ", GATEWAYNAME=" + GATEWAYNAME
				+ ", ORDERID=" + ORDERID + ", PAYMENTMODE=" + PAYMENTMODE + ", RESPCODE=" + RESPCODE + ", RESPMSG="
				+ RESPMSG + ", STATUS=" + STATUS + ", TXNAMOUNT=" + TXNAMOUNT + ", TXNDATE=" + TXNDATE + ", TXNID="
				+ TXNID + "]";
	}
	
	
	
}
