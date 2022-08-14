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
                         					<td>S.No</td>
						 					<td>From</td>
						 					<td>Email</td>
						 					<td>Mobile No</td>
						 					<td>Company Name</td>
						 					<td>Status</td>
						 					<td>Action</td>
						 					<td class="op-0">&nbsp;</td>
					                      </tr>
                    				</thead>
                    				<tbody>
                    					<c:set var="i" value="1"></c:set>
				  	                  <c:forEach var="wholesale" items="${WHOLESALELIST}">
                    		  			<tr>
					  						<td> ${i} </td>
                         					<td class="text-dark weight-600"><img src="" alt="" title="">${wholesale.name}<br> </td>
                       						<td>${wholesale.email_id}</td>
						 					<td>${wholesale.contact_number}</td>
						 					<td>${wholesale.company_name}</td>
						 					
						 						<td>${wholesale.active_status}</td>
						 					
						 					
				   							<td><a href='<c:url value="/${USERTYPE}/view-WholeSale-Detail?id=${wholesale.wholesaler_id}"/>'>view detail</a></td>
						 	 				<td class="text-center"><a href="#"><i class="fas fa-trash-alt text-danger"></i></a></td>
					  					</tr>
					  					<c:set var="i" value="${i+1}"></c:set>
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