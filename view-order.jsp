<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order List</title>
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
                <h5 style="text-align: center;">View List</h5>
                <div class="row">
                  <div class="col-lg-1 col-md-1">
                    
                    </div>
                    <div class="col-lg-11 col-md-11">
                    
                    
                    <div class="d-flex m-b-10 no-block">
                  <h5 class="card-title m-b-0 align-self-center">Order List</h5>
                  <div class="ml-auto text-light-blue">
					<ul class="nav nav-tabs customtab default-customtab list-inline text-uppercase lp-5 font-medium font-12" role="tablist">
                      <li>
					  <%-- <a href='<c:url value="/${USERTYPE}/add_product_jsp"/>' class="btn waves-effect waves-light btn-rounded btn-primary">Add Product</a> --%>
					  </li>
						</ul>
                  </div>
                </div>
			    <div class="table-responsive m-t-10">
                  <table id="myTable" class="table color-table table-bordered product-table table-hover">
                    <thead>
                      <tr>
                         <td>ID</td>
						 <td>Customer Name</td>
						 <td>Product Name</td>
						 <td>Price</td>
						 <td>Status</td>
						 <td>Action</td>
						 <td class="op-0">&nbsp;</td>
						
						
                      </tr>
                    </thead>
                    <tbody>
                      
                      <c:forEach var="order_list" items="${ORDERLIST}">
                      <tr>
					  <td>${order_list.orders_id}</td>
                       <%--   <td class="text-dark weight-600"><img src="assets/imgs/pro4.jpg" alt="" title="">${product_list.product_name}<br>
                          </td> --%>
                         <td>${order_list.address_id.user_id.name}</td>
						 <td>${order_list.cart_id.product_id.product_name}</td>
						 <td>${order_list.cart_id.product_id.product_price}</td>
						 <%-- <c:if test="${product_list.stock>0}">
						 <td>In Stock</td>
						 </c:if> --%>
						 <td>Delivered</td>
						 <%-- <c:if test="${product_list.stock==0}">
						 <td>Out of Stock</td>
						 </c:if>
						  --%>
						 <td><a href='<c:url value="/${USERTYPE}/order_detail?user_id=${order_list.orders_id}"/>'>view order</a></td>
						 	 <td class="text-center"><a href="#"><i class="fas fa-trash-alt text-danger"></i></a></td>
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

<script>
   $(function() {
       $('#myTable').DataTable();
           var table = $('#example').DataTable({
              "columnDefs": [{
                  "visible": false,
                  "targets": 2
            }],
            "order": [
                  [2, 'asc']
            ],
            "displayLength": 18,
             "drawCallback": function(settings) {
                var api = this.api();
                 var rows = api.rows({
                     page: 'current'
                 }).nodes();
                var last = null;
             api.column(2, {
                        page: 'current'
                    }).data().each(function(group, i) {
                        if (last !== group) {
                            $(rows).eq(i).before('<tr class="group"><td colspan="5">' + group + '</td></tr>');
                            last = group;
                        }
                    });
                }
            });
            // Order by the grouping
            $('#example tbody').on('click', 'tr.group', function() {
                var currentOrder = table.order()[0];
                if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
                    table.order([2, 'desc']).draw();
                } else {
                    table.order([2, 'asc']).draw();
                }
            });
        
    });
    $('#example23').DataTable({
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    });
</script>
                
</body>
</html>