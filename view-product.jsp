<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>
<jsp:include page="admin-header&sidebar.jsp"></jsp:include>         
<div class="page-wrapper">
	<div class="container-fluid">
    	<div class="row">
          <div class="col-lg-12 col-md-12">
          	<div class="card">
            	<div class="card-body">
                	<div class="row">
                  		<div class="col-lg-1 col-md-1"> </div>
                    	<div class="col-lg-12  col-md-12">
		                    <div class="d-flex m-b-10 no-block">
                  				<h5 class="card-title m-b-0 align-self-center">Product List</h5>
                 	 			<div class="ml-auto text-light-blue">
									<ul class="nav nav-tabs customtab default-customtab list-inline text-uppercase lp-5 font-medium font-12" role="tablist">
                      					<li>
					  						<a href='<c:url value="/${USERTYPE}/add_product_jsp"/>' class="btn waves-effect waves-light btn-rounded btn-primary">Add Product</a>
					  					</li>
									</ul>
                  				</div>
                			</div>
			    			<div class="table-responsive m-t-10">
                  				<table id="myTable" class="table color-table table-bordered product-table table-hover">
                    				<thead>
                      					<tr>
                         					<td>ID</td>
						 					<td>Product</td>
						 					<td>Category</td>
						 					<td>Price</td>
						 					<td>QTY</td>
						 					<td>Status</td>
						 					<td>Action</td>
						 					<td class="op-0">Action</td>
					                      </tr>
                    				</thead>
                    				<tbody>
				  	                  <c:forEach var="product_list" items="${PRODUCTLIST}">
                    		  			<tr>
					  						<td>${product_list.id}</td>
                         					<td class="text-dark weight-600"><img src="assets/imgs/pro4.jpg" alt="" title="">${product_list.product_name}<br> </td>
                       						<td>${product_list.category}</td>
						 					<td>${product_list.product_price}</td>
						 					<td>${product_list.stock}</td>
						 					<c:if test="${product_list.stock>0}">
						 						<td>In Stock</td>
						 					</c:if>
						 					<c:if test="${product_list.stock==0}">
						 						<td>Out of Stock</td>
						 					</c:if>
				   							<td><a href='<c:url value="/${USERTYPE}/update_product?id=${product_list.id}"/>'>Update</a></td>
						 	 				<td><a href='<c:url value="/${USERTYPE}/delete_product?id=${product_list.id}"/>'>Delete</a></td>
					  					</tr>
					  				</c:forEach>
					  			</tbody>
                 			 </table>
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