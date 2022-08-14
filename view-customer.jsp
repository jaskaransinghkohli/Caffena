<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer</title>
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
                <h5 style="text-align: center;">View Customer</h5>
                <div class="row">
                  <div class="col-lg-1 col-md-1">
                    
                    </div>
                    <div class="col-lg-12  col-md-12">
                    
                    
                    <div class="d-flex m-b-10 no-block">
                  <h5 class="card-title m-b-0 align-self-center">Customer List</h5>
                  <div class="ml-auto text-light-blue">
					<ul class="nav nav-tabs customtab default-customtab list-inline text-uppercase lp-5 font-medium font-12" role="tablist">
                      <li>
					  
					  </li>
						</ul>
                  </div>
                </div>
			    <div class="table-responsive m-t-10">
                  <table id="myTable" class="table color-table table-bordered product-table table-hover">
                    <thead>
                      <tr>
                         <td>ID</td>
						 <td>Name</td>
						 <td>Email_id</td>
						 <td>Contact_Number</td>
						 <td>Action</td>
						 
						
                      </tr>
                    </thead>
                    <tbody>
                      <c:set var="i" value="${1}" />
                      <c:forEach var="customer_list" items="${CUSTOMERLIST}">
                      <tr>
					  <td>${i}</td>
                      <td>${customer_list.name}</td>
					  <td>${customer_list.email_id}</td>
					  <td>${customer_list.contact_number}</td>
						 
						 <td><a href='<c:url value="/${USERTYPE}/getCartListById?id=${customer_list.user_id}"/>'>View Detail</a></td>
						
					  </tr>
					  <c:set var="i" value="${i+1}" />
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