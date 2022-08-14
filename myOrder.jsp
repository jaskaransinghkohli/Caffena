<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

#orderBox .row h6
{

margin-bottom: 5px !important;

}

</style>

</head>
<body  class="archive post-type-archive post-type-archive-product woocommerce woocommerce-page wpb-js-composer js-comp-ver-5.2 vc_responsive">
<div class="wrapper">
<jsp:include page="customerheader.jsp"></jsp:include>
<main>
	<div class="main-part"><hr>
		<div class="container">
			<c:forEach var="order" items="${CARTLIST}">
				<c:if test="${order.order_status==1 || order.order_status==2}">
			<div class="row" id="orderBox">
			<div class="col-sm-12" style="border:1px solid grey;">
				
				<div class="row" style="background-color: #80808038;  color: black; padding: 20px">
				<div class="col-sm-2">
				<h6>ORDER PLACED</h6>
				<h6>${order.date}</h6>
				</div>
				<div class="col-sm-2">
				<h6>TOTAL</h6>
				<h6>${order.quantity * order.product_id.product_price}</h6>
				</div>
				<div class="col-sm-2">
				<h6>SHIP TO</h6>
				<h6> ${order.user_id.name}</h6>
				</div>
				<div class="col-sm-3"></div>
				<div class="col-sm-3">
				<h6>ORDER#  403-6747549-0099569</h6>
				<h6>Order Details | Invoice</h6>
				</div>
				</div>	
				
				<div class="row" style="padding: 20px">
				<div class="col-sm-9">
				<h4 style="color: black"><b>Delivered Today</b></h4>
				<h6>Package was handled directly to the customer.</h6>
				<h6>Received by:  ${order.user_id.name}</h6>
				<c:set var="imagename1" value="${order.product_id.imageName}"></c:set>
            	<c:set var = "string3" value = "${fn:split(imagename1, ',')}" />
				<div class="row">
				<div class="col-sm-2">
				<img alt="" src='<c:url value="/${USERTYPE}/getImagebyName?imageName=${string3[0]}"/>'>
				</div>
				<div class="col-sm-10" style="color: blue">
				${order.product_id.grade} &nbsp;&nbsp; ${order.product_id.product_name} &nbsp;&nbsp; ${order.product_id.category}

				<br><br>
				Sold by: CaffenaIndia  <br>
				Rs. ${order.quantity * order.product_id.product_price}
				</div><br><br>
				</div>
				
				</div>
				<div class="col-sm-3">
				
				<button class="btn btn-default" style="width: 200px">Track Package</button><br><br>
				<button class="btn btn-default" style="width: 200px">Return or replace items</button>
				<button class="btn btn-default" style="width: 200px">Share gift receipt</button>
				<button class="btn btn-default" style="width: 200px">Leave feedback</button>
				
				</div>
				</div>		

			</div>
			</div>
			</c:if>
		</c:forEach>
		</div>
	</div>
</main>	
</div>

</body>
</html>