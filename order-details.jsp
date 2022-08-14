<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="admin-header&sidebar.jsp"></jsp:include>         

<div class="page-wrapper">
      <div class="container-fluid">
        <div class="row">
          <!-- Column -->
          <div class="col-lg-12 col-md-12">
            <div class="card">
              <div class="card-body">
                <h5 style="text-align: right;">Order Detail</h5>
							<div class="orderInfo-order-details">
								<div class="orderInfo-block">
									<div>
										<span style="font-size: 16px;font-weight: 500;"> Placed On: </span>
										<span class="orderInfo-value">
										  
										    <fmt:parseDate var="date" value="${ORDERDETAILS.payment_id.TXNDATE}" pattern="yyyy-MM-dd HH:mm:ss"  />
										    <fmt:formatDate var="date1" value="${date}" pattern="E dd MMM yyyy HH:mm"/>
										
											<!-- react-text: 62 --> <!-- /react-text -->
											<!-- react-text: 63 -->${date1}<!-- /react-text -->
											<!-- react-text: 64 --> <!-- /react-text -->
										</span>
									</div>
									<div>
										<span style="font-size: 16px;font-weight: 500;"> Order No: </span><span
											class="orderInfo-value">
											<!-- react-text: 68 --> <!-- /react-text -->
											<!-- react-text: 69 -->${ORDERDETAILS.payment_id.ORDERID}<!-- /react-text -->
											<!-- react-text: 70 --> <!-- /react-text -->
										</span>
									</div>
									<div>
										<span style="font-size: 16px;font-weight: 500;">Price Details: </span>
										
										<span class="orderInfo-value">
											<!-- react-text: 68 --> <!-- /react-text -->
											<!-- react-text: 69 -->${ORDERDETAILS.payment_id.TXNAMOUNT}<!-- /react-text -->
											<!-- react-text: 70 --> <!-- /react-text -->
										</span>
										</div>
								</div>
								
								<hr>
								<div class="orderInfo-block">
									<div style="font-size: 16px;font-weight: 500;">Updates sent to:</div>
									<div>
										<i class="fa fa-mobile-phone" style="font-size:15px"></i><span class="icon-icon icon-call "
											style="font-size: 16px; margin-right: 4px; vertical-align: middle; color: rgb(83, 87, 102);"></span><span>${ORDERDETAILS.address_id.user_id.contact_number}</span>
									</div>
									<div>
										<i class="fa fa-envelope-o" style="font-size:15px"></i><span class="icon-icon icon-email "
											style="font-size: 16px; margin-right: 4px; vertical-align: middle; color: rgb(83, 87, 102);"></span><span>${ORDERDETAILS.address_id.user_id.email_id}</span>
									</div>
								</div>
								<hr>
								<div class="address-address">
									<div class="address-shippingAddress">
										<div style="font-size: 16px;font-weight: 500;">Shipping Address:</div>
										<br>
										<div style="font-weight: 500;">${ORDERDETAILS.address_id.first_name} ${ORDERDETAILS.address_id.last_name}</div>
										<div>${ORDERDETAILS.address_id.address_line1}, ${ORDERDETAILS.address_id.address_line2}
											Road</div>
										<div>
											<!-- react-text: 99 -->
											${ORDERDETAILS.address_id.city}
											<!-- /react-text -->
											<!-- react-text: 100 -->
											,
											<!-- /react-text -->
											<!-- react-text: 101 -->
											${ORDERDETAILS.address_id.state}
											<!-- /react-text -->
											<!-- react-text: 102 -->
											-
											<!-- /react-text -->
											<!-- react-text: 103 -->
											${ORDERDETAILS.address_id.postcode}
											<!-- /react-text -->
										</div>
									</div>
								</div>
								
								
								<hr>
								
								<div class="address-address">
									<div class="address-shippingAddress">
										<div style="font-size: 16px;font-weight: 500;">Product Detail:</div>
										<br>
										
										<div class="row" style="height: 150px;">
										   <div class="col-md-1">
										   <c:set var="imagename1" value="${ORDERDETAILS.cart_id.product_id.imageName}"></c:set>
                                           <c:set var = "string3" value = "${fn:split(imagename1, ',')}" />
										   <img alt="" src="getImagebyName?imageName=${string3[0]}" style="border: 1px solid green; margin: 0px 0px 0px 0px; height:8%;" >
										   
										   </div>
										   <div class="col-md-5">
										        Product Name: ${ORDERDETAILS.cart_id.product_id.product_name}<br>
										        Grade: ${ORDERDETAILS.cart_id.product_id.grade}<br>
										        Category: ${ORDERDETAILS.cart_id.product_id.category}
										   
										   
										   </div>
										   <div class="col-md-4"></div>
										
										</div>
									</div>
								</div>
								
							</div>
					</div>
             </div>
           </div>
         </div>
        </div>
</div>
</body>
</html>