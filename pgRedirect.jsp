<%@page import="com.caffena.beans.User"%>
<%@page import="com.caffena.beans.Orders"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.paytm.pg.merchant.CheckSumServiceHelper"%>    
<%@ page import="com.caffena.utils.CommonUtils"%> 
<%
Enumeration<String> paramNames = request.getParameterNames();
Map<String, String[]> mapData = request.getParameterMap();
TreeMap<String,String> parameters = new TreeMap<String,String>();
String paytmChecksum =  "";
/* while(paramNames.hasMoreElements()) {
	String paramName = (String)paramNames.nextElement();
	parameters.put(paramName,mapData.get(paramName)[0]);
}
 */
String bill_amount =(String)request.getSession().getAttribute("TOTAL_AMOUNT");
String userttype=(String)request.getSession().getAttribute("USERTYPE"); 
System.out.println("COST pgredirect : "+bill_amount);
String callBackURL = (String) request.getSession().getAttribute("APPLICATION_URL");
List<Orders> orderLIst=(List<Orders>) request.getSession().getAttribute("ORDERLIST");
User user=(User) request.getSession().getAttribute("USER");
/* int class_id=(Integer)request.getSession().getAttribute("STUDENT_CLASS_ID"); */
parameters.put("MID", "IGqRym41579845624004");
parameters.put("CHANNEL_ID","WEB");
parameters.put("INDUSTRY_TYPE_ID","Retail");
parameters.put("WEBSITE","DEFAULT");

parameters.put("CUST_ID", Integer.toString(user.getUser_id()));
String orderId="";
		orderId+=orderLIst.get(0).getOrders_id();
		String order_id="CR_"+user.getUser_id()+"_"+orderId+"";
		parameters.put("ORDER_ID",CommonUtils.generateUniqueOrderId(order_id));
    

parameters.put("TXN_AMOUNT",bill_amount);
parameters.put("CALLBACK_URL",callBackURL+userttype+"/"+"pgresponse");

String merchantKey ="YbeHv77u2lYjma9m";//P@SrKn8IwR5Z09t8   this is save in db with name acessCode
System.out.println(merchantKey);
String checkSum =  CheckSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum(merchantKey, parameters);
System.out.println("pg redirect jsp pe aya ;;; "+  checkSum);
//parameters.put("CHECKSUMHASH", checkSum);

StringBuilder outputHtml = new StringBuilder();
outputHtml.append("<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>");
outputHtml.append("<html>");
outputHtml.append("<head>");
outputHtml.append("<title>Merchant Check Out Page</title>");
outputHtml.append("</head>");
outputHtml.append("<body>");
outputHtml.append("<center><h1>Please do not refresh this page...</h1></center>");
outputHtml.append("<form method='post' action='https://securegw.paytm.in/theia/processTransaction' name='f1'>");
outputHtml.append("<table border='1'>");
outputHtml.append("<tbody>");

for(Map.Entry<String,String> entry : parameters.entrySet()) {
	String key = entry.getKey();
	String value = entry.getValue();
	outputHtml.append("<input type='hidden' name='"+key+"' value='" +value+"'>");	
}	  

outputHtml.append("<input type='hidden' name='CHECKSUMHASH' value='"+checkSum+"'>");
outputHtml.append("</tbody>");
outputHtml.append("</table>");
outputHtml.append("<script type='text/javascript'>");
outputHtml.append("document.f1.submit();");
outputHtml.append("</script>");
outputHtml.append("</form>");
outputHtml.append("</body>");
outputHtml.append("</html>");
out.println(outputHtml);
%>
