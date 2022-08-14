<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Admin Mintone">
<meta name="author" content="Admin Mintone">
<link rel="icon" type="image/png" sizes="16x16" href='<c:url value="/admin-panel2/images/favicon.png"/>'>

<link href='<c:url value="/admin-panel2/css/fontawesome-all.min.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/font-awesome.min.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/simple-line-icons.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/weather-icons.min.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/iconmind.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/themify-icons.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/flag-icon.min.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/materialdesignicons.min.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/spinners.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/animate.css"/>' rel="stylesheet">



<link href='<c:url value="/admin-panel2/css/bootstrap.min.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/perfect-scrollbar.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/morris.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/c3.min.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/jquery.toast.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/switchery.min.css"/>' rel="stylesheet" />
<link rel="stylesheet" type="text/css" href='<c:url value="/admin-panel2/css/product-slider.css"/>'>
<link href='<c:url value="/admin-panel2/css/awesome-bootstrap-checkbox.css"/>' rel="stylesheet" type="text/css">
<link href='<c:url value="/admin-panel2/css/switchery.min.css"/>' rel="stylesheet" />
<link href='<c:url value="/admin-panel2/css/bootstrap-tagsinput.css"/>' rel="stylesheet" />
<link rel="stylesheet" href='<c:url value="/admin-panel2/css/dropify.min.css"/>'>
<link href='<c:url value="/admin-panel2/css/file-upload.css"/>' rel="stylesheet">
<link href='<c:url value="/admin-panel2/css/style.css"/>' rel="stylesheet">
<style type="text/css">

/* <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> */
</style>
</head>
<body class="fix-header fix-sidebar card-no-border">
<div class="preloader">
  <div class="loader">
    <div class="loader__figure"></div>
    <p class="loader__label">Admin Mintone</p>
  </div>
</div>
<div id="main-wrapper">
  <header class="topbar">
    <div Class="container">
      <nav class="navbar top-navbar navbar-expand-md navbar-light">
        <div class="navbar-header"> <a class="navbar-brand" href="index-2.html">
          <b>
          <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
          <!-- Dark Logo icon -->
          <%-- <img src='<c:url value="/wp-content/themes/despina/images/logo/Caffena.png"/>' alt="homepage" class="dark-logo" /> --%>
          <!-- Light Logo icon -->
          <img  src='<c:url value="/admin-panel2/images/logo-lighto-icn.png"/>' alt="homepage" class="light-logo" /> </b>
          <!--End Logo icon -->
          <!-- Logo text -->
          <span>
          <!-- dark Logo text -->
          <img style="margin-left: 50%;width: 105px;height: 105px;"  src='<c:url value="/wp-content/themes/despina/images/logo/Caffena.png"/>' alt="homepage" class="dark-logo dark-logo2" />
          <!-- Light Logo text -->
          <img src='<c:url value="/admin-panel2/images/logo-light-text.png"/>' class="light-logo" alt="homepage" /></span> </a> </div>
        <!-- ============================================================== -->
        <!-- End Logo -->
        <!-- ============================================================== -->
        <div class="top-bar-main">
          <div class="float-left">
            <ul class="navbar-nav">
              <li class="nav-item "><a class="nav-link navbar-toggler sidebartoggler waves-effect waves-dark float-right" href="javascript:void(0)"><span class="navbar-toggler-icon"></span></a></li>
              <!-- <li class="nav-item hidden-xs-down app-search">
                <input type="text" class="form-control float-left" placeholder="Type for search...">
              </li> -->
            </ul>
          </div>
          <!-- ============================================================== -->
          <!-- User profile and search -->
          <!-- ============================================================== -->
          <div class="float-right pr-3">
            <ul class="navbar-nav my-lg-0 float-right">
              <!-- ============================================================== -->
              <!-- Comment -->
              <!-- ============================================================== -->
              <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle waves-effect waves-dark" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-bell"></i>
                <div class="notify"> <span class="heartbit"></span> <span class="point"></span> </div>
                </a>
                <div class="dropdown-menu dropdown-menu-right mailbox animated fadeIn">
                  <ul>
                    <li>
                      <div class="drop-title">You have <span class="highlighted"> ${WHOLESALERCOUNT} new</span> Wholesaler</div>
                    </li>
                    <c:forEach var="wholelist" items="${WHOLESALELIST}">
                    <c:if test="${wholelist.active_status == 0}">
                    <li>
                    <fmt:formatDate var="date" type="both" dateStyle="short" timeStyle="short" value="${wholelist.created_on}"/>
                      <div class="message-center">
                        <!-- Message -->
                        <a href='<c:url value="/${USERTYPE}/view-WholeSale-Detail?id=${wholelist.wholesaler_id}"/>'>
                        <div class="mail-content"> <i class="fas fa-envelope"></i> ${wholelist.name} <span class="float-right text-light">${date}</span> </div>
                        </a>
                        </div>
                     </li>
                     </c:if>
                     </c:forEach>
                  </ul>
                </div>
              </li>
              <!-- ============================================================== -->
              <!-- End Comment -->
              <!-- ============================================================== -->
              <!-- ============================================================== -->
              <!-- Messages -->
              <!-- ============================================================== -->
              <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle waves-effect waves-dark" href="#" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-message"></i>
                <div class="notify"> <span class="heartbit"></span> <span class="point"></span> </div>
                </a>
                <div class="dropdown-menu mailbox dropdown-menu-right animated fadeIn" aria-labelledby="2">
                  <ul>
                    <li>
                      <div class="drop-title">You have <span class="highlighted">${ORDERCOUNT} new</span> Orders</div>
                    </li>
                    <li>
                      <c:forEach var="order_list" items="${ORDERLIST}">
                      
                      <c:if test="${order_list.order_notify==1}">
                      <div class="message-center">
                        <!-- Message -->
                        
                        <a href='<c:url value="/${USERTYPE}/order_detail?user_id=${order_list.orders_id}"/>'>
                        <div class="mail-content">
                          <div class="float-left">
                          
                            <h5 class="mt-0 text-dark">${order_list.address_id.user_id.name}</h5>
                            <span class="mail-desc text-light mt-1">${order_list.cart_id.product_id.product_name}</span> </div>
                          
                          <fmt:parseDate var="StringDate" pattern="yyyy-MM-dd HH:mm:ss" value="${order_list.payment_id.TXNDATE}" />
                          <fmt:formatDate var="date" type="both" dateStyle="short" timeStyle="short" value="${StringDate}"/>
                          <span class="float-right text-light text-right">${date}<span class="clearfix"></span> <span class="label label-rounded label-primary">${order_list.cart_id.quantity}</span> </span>
                           
                           </div>
                           
                        <div class="clearfix"></div>
                        </a>
                        </div>
                        </c:if>
                        </c:forEach>
                    </li>
                    <li> <a class="nav-link text-center" href='<c:url value="/${USERTYPE}/view_order_list"/>'>See all notifications </a> </li>
                  </ul>
                </div>
              </li>
              <!-- ============================================================== -->
              <!-- End Messages -->
              <!-- ============================================================== -->
              <!-- ============================================================== -->
              <!-- End mega menu -->
              <!-- ============================================================== -->
              <!-- ============================================================== -->
              <!-- Profile -->
              <!-- ============================================================== -->
              <li class="nav-item dropdown u-pro"> <a class="nav-link dropdown-toggle waves-effect waves-dark profile-pic" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src='<c:url value="/admin-panel2/images/users/user-50x50.jpg"/>' alt="user" class="" /><span class="circle-status"></span></a>
                <div class="dropdown-menu dropdown-menu-right animated fadeIn">
                  <ul class="dropdown-user">
                    <li class="text-center">
                      <div class="dw-user-box">
                        <div class="u-img"><img src='<c:url value="/admin-panel2/images/users/user-50x50.jpg"/>' alt="user"></div>
                        <div class="clearfix"></div>
                        <div class="u-text">
                          <h4>${USER.name}</h4>
                          <p class="text-light"><span class="status-circle bg-success"></span>online <i class="fas fa-chevron-down small"></i></p>
                        </div>
                      </div>
                    </li>
                    <li role="separator" class="divider"></li>
                    <%-- <li><a href="#"><span class="status-circle bg-success"></span> online</a></li>
                    <li><a href="#"><span class="status-circle bg-warning"></span> away</a></li>
                    <li><a href="#"><span class="status-circle bg-danger"></span> not disturb</a></li>
                    <li><a href="#"><span class="status-circle bg-light"></span> offline</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#"><i class="fas fa-user mr-1"></i> My Profile</a></li>
                    <li><a href="#"><i class="fas fa-cog mr-1"></i> Settings</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href='<c:url value="/${USERTYPE}/home"/>'><i class="fas fa-sign-in-alt mr-1"></i> Home</a></li> --%>
                    <li><a href='<c:url value="/${USERTYPE}/logout"/>'><i class="fas fa-sign-in-alt mr-1"></i> Logout</a></li>
                    </ul>
                </div>
              </li>
            </ul>
          </div>
          <div class="clearfix"></div>
        </div>
      </nav>
    </div>
  </header>
  <!-- ============================================================== -->
  <!-- End Topbar header -->
  <!-- ============================================================== -->
  <!-- ============================================================== -->
  <!-- Left Sidebar - style you can find in sidebar.scss  -->
  <!-- ============================================================== -->
  <div class="container">
    <aside class="left-sidebar" style="margin-left: -106px;">
      <ul class="nav-bar navbar-inverse">
        <li class="nav-item"> <a class="nav-link navbar-toggler sidebartoggler hidden-sm-down waves-effect waves-dark float-right" href="javascript:void(0)"><span class="navbar-toggler-icon"></span></a> </li>
      </ul>
      <!-- Sidebar scroll-->
      <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
          <ul id="sidebarnav">
            <li class="clearfix"></li>
            
            <li> <a  href='<c:url value="/${USERTYPE}/"/>' aria-expanded="false"><i class="flaticon-desktop-computer-screen-with-rising-graph"></i><span class="hide-menu">Dashboard</span></a>
            <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="fa fa-coffee"></i><span class="hide-menu">Product</span></a>              
              <ul aria-expanded="false" class="collapse">
           		<li class="nav-item"><a id="add-soc-sub-menu1" href='<c:url value="/${USERTYPE}/view_product"/>' class="nav-link">Product List</a></li>
           		<li class="nav-item"><a id="add-soc-sub-menu1" href='<c:url value="/${USERTYPE}/add_product_jsp"/>' class="nav-link">Add new product</a></li>
             </ul>
            <li> <a  href='<c:url value="/${USERTYPE}/view_order_list"/>' aria-expanded="false"><i class="fa fa-truck"></i><span class="hide-menu">Orders</span></a>
            <%-- <li> <a  href='<c:url value="/${USERTYPE}/"/>' aria-expanded="false"><i class="flaticon-file"></i><span class="hide-menu">Invoice</span></a> --%>
            <li> <a  href='<c:url value="/${USERTYPE}/view_customer"/>' aria-expanded="false"><i class="flaticon-user"></i><span class="hide-menu">Customer</span></a>           
           
           <li> <a  href='<c:url value="/${USERTYPE}/wholesale_enquiry"/>' aria-expanded="false"><i class="fas fa-bullhorn"></i><span class="hide-menu">Wholesale Enquiry</span></a>
           
          <%--  <li class="nav-item"><a id="add-soc-sub-menu1" href='<c:url value="/${USERTYPE}/view_order_list"/>' class="nav-link">Orders</a></li>
           <li class="nav-item"><a id="add-soc-sub-menu1" href='<c:url value="/${USERTYPE}/ "/>' class="nav-link">Invoice</a></li>
           <li class="nav-item"><a id="add-soc-sub-menu1" href='<c:url value="/${USERTYPE}/ "/>' class="nav-link">Customers</a></li>
            </li>
           --%>  
           
          			</ul>
        		</nav>
      		</div>
    	</aside>
    </div>
 </div>
<script src='<c:url value="/admin-panel2/js/jquery.min.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/popper.min.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/bootstrap.min.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/perfect-scrollbar.jquery.min.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/waves.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/sidebarmenu.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/custom.min.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/d3.min.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/c3.min.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/jquery.knob.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/jquery.sparkline.min.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/raphael-min.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/morris.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/jquery.toast.js"/>'></script>

<script src='<c:url value="/admin-panel2/js/dashboard-server.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/random-class.js"/>'></script>


<script src='<c:url value="/admin-panel2/js/bootstrap-tagsinput.min.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/switchery.min.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/jquery.dataTables.min.js"/>'></script>
<script>
    $(function() {
        // Switchery
        var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));
        $('.js-switch').each(function() {
            new Switchery($(this)[0], $(this).data());
        });
        
    });
    </script>
<!-- product jquery -->
<script src='<c:url value="/admin-panel2/js/product-slider.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/product-slider.init.js"/>'></script>
<script src='<c:url value="/admin-panel2/js/dropify.min.js"/>'></script>
<script>
    $(function() {
        // Basic
        $('.dropify').dropify();

        // Translated
        $('.dropify-fr').dropify({
            messages: {
        default: 'Glissez-déposez un fichier ici ou cliquez',
                replace: 'Glissez-déposez un fichier ou cliquez pour remplacer',
                remove: 'Supprimer',
                error: 'Désolé, le fichier trop volumineux'
            }
        });

        // Used events
        var drEvent = $('#input-file-events').dropify();

        drEvent.on('dropify.beforeClear', function(event, element) {
            return confirm("Do you really want to delete \"" + element.file.name + "\" ?");
        });

        drEvent.on('dropify.afterClear', function(event, element) {
            alert('File deleted');
        });

        drEvent.on('dropify.errors', function(event, element) {
            console.log('Has Errors');
        });

        var drDestroy = $('#input-file-to-destroy').dropify();
        drDestroy = drDestroy.data('dropify')
        $('#toggleDropify').on('click', function(e) {
            e.preventDefault();
            if (drDestroy.isDropified()) {
                drDestroy.destroy();
            } else {
                drDestroy.init();
            }
        })
    });
    </script>
<script src='<c:url value="/admin-panel2/js/jQuery.style.switcher.js" />' ></script>

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



