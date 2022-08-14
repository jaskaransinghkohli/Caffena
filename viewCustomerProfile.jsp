<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Profile</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<style type="text/css">


.emp-profile{
    padding: 3%;
    margin-top: 3%;
    margin-bottom: 3%;
    border-radius: 0.5rem;
    background: #fff;
}
.profile-img{
    text-align: center;
}
.profile-img img{
    width: 70%;
    height: 100%;
}
.profile-img .file {
    position: relative;
    overflow: hidden;
    margin-top: -20%;
    width: 70%;
    border: none;
    border-radius: 0;
    font-size: 15px;
    background: #212529b8;
}
.profile-img .file input {
    position: absolute;
    opacity: 0;
    right: 0;
    top: 0;
}
.profile-head h5{
    color: #333;
}
.profile-head h6{
    color: #0062cc;
}
.profile-edit-btn{
    border: none;
    border-radius: 1.5rem;
    width: 70%;
    padding: 2%;
    font-weight: 600;
    color: #6c757d;
    cursor: pointer;
}
.proile-rating{
    font-size: 12px;
    color: #818182;
    margin-top: 5%;
}
.proile-rating span{
    color: #495057;
    font-size: 15px;
    font-weight: 600;
}
.profile-head .nav-tabs{
    margin-bottom:5%;
}
.profile-head .nav-tabs .nav-link{
    font-weight:600;
    border: none;
}
.profile-head .nav-tabs .nav-link.active{
    border: none;
    border-bottom:2px solid #0062cc;
}
.profile-work{
    padding: 14%;
    margin-top: -15%;
}
.profile-work p{
    font-size: 12px;
    color: #818182;
    font-weight: 600;
    margin-top: 10%;
}
.profile-work a{
    text-decoration: none;
    color: #495057;
    font-weight: 600;
    font-size: 14px;
}
.profile-work ul{
    list-style: none;
}
.profile-tab label{
    font-weight: 600;
}
.profile-tab p{
    font-weight: 600;
    color: #0062cc;
}

</style>

</head>
<body>
	<jsp:include page="customerheader.jsp"></jsp:include>
	<br><br><br><br>
	<div class="page-wrapper">
		<div class="container-fluid">
	<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="profile-head">
                                    <h5>
                                    <c:if test="${CARTLIST!=null}">
                                        ${CARTLIST.get(0).user_id.name}
                                        </c:if>
                                        <c:if test="${USERLIST!=null}">
                                        ${USERLIST.name}
                                        </c:if>
                                    </h5>
                                    <h6>
                                        Customer
                                    </h6>
                                    <p class="proile-rating">RANKINGS : <span>8/10</span></p>
                                    
                        
                        </div>
                    </div>
                    <div class="col-md-4" >
                    <div class="profile-work" style="margin-top: -65px;">
                            <p>Email_Address</p>
                            
                            <c:if test="${CARTLIST!=null}">
                            <a href="">${CARTLIST.get(0).user_id.email_id}</a><br/>
                            </c:if>
                            <c:if test="${USERLIST!=null}">
                            <a href="">${USERLIST.email_id}</a><br/>
                            </c:if>
                            <p>Contact Number</p>
                            <c:if test="${CARTLIST!=null}">
                            <a href="">${CARTLIST.get(0).user_id.contact_number}</a><br/>
                            </c:if>
                            <c:if test="${USERLIST!=null}">
                            <a href="">${USERLIST.contact_number}</a><br/>
                            </c:if>
                            
                        </div>
                    
                    </div>
                    
                    <div class="col-md-2">
				<input type="button" data-toggle="modal" data-target="#myModal" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
                    </div>
                </div>
                <c:set var="add_to_cart" value="${0}" />
						<c:set var="delivery" value="${0}" />
						<c:set var="returns" value="${0}" />
						<c:if test="${CARTLIST != null}">
							<c:forEach var="customer_detail" items="${CARTLIST}">

								<c:if test="${customer_detail.order_status == 0}">
									<c:set var="add_to_cart" value="${add_to_cart+1}" />
								</c:if>

								<c:if test="${customer_detail.order_status == 1}">
									<c:set var="delivery" value="${delivery+1}" />
								</c:if>

								<c:if test="${customer_detail.order_status == 2}">
									<c:set var="returns" value="${returns+1}" />
								</c:if>

							</c:forEach>
						</c:if>
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" onclick="fun1()" id="home-tab" data-toggle="tab" href="#" role="tab" aria-controls="home" aria-selected="true">Delivered Items (${delivery})</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" onclick="fun2()" id="govind-tab" data-toggle="tab" href="#" role="tab" aria-controls="govind" aria-selected="false">Add To Cart (${add_to_cart})</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" onclick="fun3()" id="profile-tab" data-toggle="tab" href="#" role="tab" aria-controls="profile" aria-selected="false">Return Item (${returns})</a>
                                </li>
                            </ul>
                <div class="row">
                    
						<div class="col-md-12">
						
						<c:if test="${CARTLIST != null}">
                  <div class="row" style="width: 100%;background-color: gray;font-size: 18px; color: white; padding: 10px 0px 8px 0px; margin-left: 3px; border-radius:4px">
                    <div class="col-md-2">Order Id</div>
                    <div class="col-md-2">Product Name</div>
                    <div class="col-md-2">Quantity</div>
                    <div class="col-md-2">Product Price</div>
                    <div class="col-md-2">Total Price</div>
                    <div class="col-md-2">Status</div>
                 </div></c:if>
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="active" id="home">
                                        <div class="row" id="tab1" style="width: 100%; font-weight: 500; font-size: 15px; height: 70px; margin-left: 5px">

											<c:forEach var="customer_detail" items="${CARTLIST}">
												<c:if test="${customer_detail.order_status==1}">
													<div class="col-md-2">${customer_detail.order_id}</div>
													<div class="col-md-2">${customer_detail.product_id.product_name}</div>
													<div class="col-md-2">${customer_detail.quantity}</div>
													<div class="col-md-2">${customer_detail.product_id.product_price}</div>
													<div class="col-md-2">${customer_detail.product_id.product_price * customer_detail.quantity}</div>
													<div class="col-md-2" style="color: blue;">Delivered</div>
												</c:if>
											</c:forEach>

										</div>
</div>
                            <div id="govind"  style="display: none">
                                <div class="row" id="tab2" style="width: 100%; font-weight: 500; font-size: 15px; height: 70px; margin-left: 5px">

											<c:forEach var="customer_detail" items="${CARTLIST}">
												<c:if test="${customer_detail.order_status==0}">
													<div class="col-md-2">${customer_detail.order_id}</div>
													<div class="col-md-2">${customer_detail.product_id.product_name}</div>
													<div class="col-md-2">${customer_detail.quantity}</div>
													<div class="col-md-2">${customer_detail.product_id.product_price}</div>
													<div class="col-md-2">${customer_detail.product_id.product_price * customer_detail.quantity}</div>
													<div class="col-md-2" style="color: green;">Buy Now</div>
												</c:if>
											</c:forEach>


										</div>
                                
                                
                                
                            </div>
                            <div  id="profile" role="tabpanel"  style="display: none">
                             <div class="row" id="ta3" style="width: 100%; font-weight: 500; font-size: 15px; height: 70px; margin-left: 5px">
											<c:forEach var="customer_detail" items="${CARTLIST}">
												<c:if test="${customer_detail.order_status==2}">
													<div class="col-md-2">${customer_detail.order_id}</div>
													<div class="col-md-2">${customer_detail.product_id.product_name}</div>
													<div class="col-md-2">${customer_detail.quantity}</div>

													<div class="col-md-2">${customer_detail.product_id.product_price}</div>
													<div class="col-md-2">${customer_detail.product_id.product_price * customer_detail.quantity}</div>
													<div class="col-md-2" style="color: red;">Return Item</div>
												</c:if>
											</c:forEach>

										</div>
                            
                        </div>   
                        </div>
                    </div>
                </div>
            </form>           
        </div>
        
        </div>
        </div>

 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
           <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
        <div class="modal-body">
        <br><br>
        <form action="verifyUserPassword" >
        	<input width="50%" type="password" name="cnfrmPassword" placeholder="Enter Your Current Password">
        	<center><input type="submit" class="btn btn-primary" ></center>
        </form>
        <br><br>
        </div>
      </div>
      
    </div>
  </div>
  

	
	<script>
		$(function() {
			$('#myTable').DataTable();
			var table = $('#example').DataTable(
					{
						"columnDefs" : [ {
							"visible" : false,
							"targets" : 2
						} ],
						"order" : [ [ 2, 'asc' ] ],
						"displayLength" : 18,
						"drawCallback" : function(settings) {
							var api = this.api();
							var rows = api.rows({
								page : 'current'
							}).nodes();
							var last = null;
							api.column(2, {
								page : 'current'
							}).data().each(
									function(group, i) {
										if (last !== group) {
											$(rows).eq(i).before(
													'<tr class="group"><td colspan="5">'
															+ group
															+ '</td></tr>');
											last = group;
										}
									});
						}
					});
			// Order by the grouping
			$('#example tbody').on('click', 'tr.group', function() {
				var currentOrder = table.order()[0];
				if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
					table.order([ 2, 'desc' ]).draw();
				} else {
					table.order([ 2, 'asc' ]).draw();
				}
			});

		});
		$('#example23').DataTable({
			dom : 'Bfrtip',
			buttons : [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
		});
	</script>
	
<script type="text/javascript">

function fun1() {
	$("#home").show();
	$("#govind").hide();
	$("#profile").hide();
	
	
}
function fun2() {
	$("#home").hide();
	$("#profile").hide();
	$("#govind").show();
	
}
function fun3() {
	
	$("#home").hide();
	$("#govind").hide();
	$("#profile").show();
}


</script>

</body>
</html>