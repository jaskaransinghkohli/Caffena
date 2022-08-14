<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html >
<head>
<title></title>
</head>
  <body>
  <jsp:include page="admin-header&sidebar.jsp"></jsp:include>
    <div class="page-wrapper">
      <div class="container-fluid">
        <div class="row">
          <!-- Column -->
          <div class="col-lg-4 col-md-6">
            <div class="card">
              <div class="card-body">
                <div class="d-flex pt-3 pb-2 no-block">
                  <div class="align-self-center mr-3 knob-icon">
                    <input class="dial"   data-plugin="knob" data-width="70" data-height="70"  data-linecap="round" data-fgColor="#f95476" data-thickness=".2" value="85" />
                    <i class="flaticon-tool text-pink"></i> </div>
                  <div class="align-slef-center mr-auto">
                    <h2 class="m-b-0 text-uppercase font-18 font-medium lp-5">Order Placed</h2>
                    <h6 class="text-light m-b-0">Total <strong>${CARTSIZE}</strong> </h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Column -->
          <!-- Column -->
          <div class="col-lg-4 col-md-6">
            <div class="card">
              <div class="card-body">
                <div class="d-flex pt-3 pb-2 no-block">
                  <div class="align-self-center mr-3 knob-icon knob-icon-2">
                    <input  class="dial"  data-plugin="knob" data-width="70" data-height="70"  data-linecap="round" data-fgColor="#4886ff " data-thickness=".2" value="40" />
                    <i class="flaticon-tool-2 font-25 text-primary"></i> </div>
                  <div class="align-slef-center mr-auto">
                    <h2 class="m-b-0 text-uppercase font-18 font-medium lp-5">Member</h2>
                    <h6 class="text-light m-b-0">${CUSTOMERSIZE} Registered</h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Column -->
          <!-- Column -->
          <div class="col-lg-4 col-md-12">
            <div class="card">
              <div class="card-body">
                <div class="d-flex pt-3 pb-2 no-block">
                  <div class="align-self-center mr-3 knob-icon knob-icon-2">
                    <input class="dial"   data-plugin="knob" data-width="70" data-height="70"  data-linecap="round" data-fgColor="#ffb74e" data-thickness=".2" value="89" />
                    <i class="flaticon-reload font-25 text-warning"></i> </div>
                  <div class="align-slef-center mr-auto">
                    <h2 class="m-b-0 text-uppercase font-18 font-medium lp-5">Products</h2>
                    <h6 class="text-light m-b-0">Total ${PRODUCTSIZE}</h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Column -->
        </div>
        <!-- ============================================================== -->
        <!-- End Info box -->
        <!-- chart box one -->
        <!-- ============================================================== -->
        <div class="row">
          <!-- Column -->
          <div class="col-lg-8 col-md-12">
            <div class="card panel-main o-income panel-refresh">
              <div class="refresh-container">
                <div class="preloader">
                  <div class="loader">
                    <div class="loader__figure"></div>
                  </div>
                </div>
              </div>
              <div class="card-body panel-wrapper">
                <div class="d-flex m-b-10 no-block">
                  <h5 class="card-title m-b-0 align-self-center">Memory usage</h5>
                  <div class="ml-auto text-light-blue"> <a href="#" class="pull-left text-light-blue inline-block refresh mr-15"> <i class="fas fa-sync"></i> Update </a> </div>
                </div>
                <ul class="list-inline m-b-30 text-uppercase lp-5 font-medium font-12">
                  <li><i class="fa fa-square m-r-5 text-warning"></i> Total</li>
                  <li><i class="fa fa-square m-r-5 text-pink"></i> Used</li>
                  <li><i class="fa fa-square m-r-5 text-primary"></i> Free</li>
                </ul>
                <div id="memory_usage" style="height:260px; width:100%;"></div>
              </div>
            </div>
          </div>
          <!-- Column -->
          <!-- Column -->
          <div class="col-lg-4 col-md-12">
            <div class="card">
              <div class="card-body p-b-30">
                <div class="d-flex pt-3 p-b-20 no-block">
                  <div class="align-self-center mr-3">
                    <div id="sparkline14"></div>
                  </div>
                  <div class="align-self-center mr-auto">
                    <h2 class="m-b-0 text-uppercase font-18 font-medium lp-5">Processes</h2>
                    <h6 class="text-light m-b-0">1,590</h6>
                  </div>
                </div>
              </div>
            </div>
            <div class="card">
              <div class="card-body p-b-30">
                <div class="p-t-20">
                  <h2 class="m-b-0 text-uppercase font-18 font-medium lp-5  float-left">Latency</h2>
                  <h6 class="m-b-0 float-right text-primary">2.3 ms</h6>
                  <div class="clearfix"></div>
                  <div id="sparkline12" class="text-center"></div>
                </div>
              </div>
            </div>
          </div>
          <!-- Column -->
        </div>
        <!-- ============================================================== -->
        <!-- End chart box one -->
        <!-- chart box two -->
        <!-- ============================================================== -->
         <div class="row">
          
          <div class="col-md-12" style="display: none;">
            <div class="card">
              <div class="card-body">
                <div class="d-flex m-b-10 no-block">
                  <h5 class="card-title m-b-0 align-self-center">Average CPU usage</h5>
                </div>
                <div id="extra-area-chart"></div>
              </div>
            </div>
          </div>
          
        </div> 
        <!-- ============================================================== -->
        <!-- End chart box two -->
        <!-- chart box three -->
        <!-- ============================================================== -->
        
        
        <div class="row">
          <!-- Column -->
          <div class="col-lg-8 col-md-12">
            <div class="card panel-main o-income panel-refresh">
              <div class="refresh-container">
                <div class="preloader">
                  <div class="loader">
                    <div class="loader__figure"></div>
                  </div>
                </div>
              </div>
              <div class="card-body panel-wrapper">
                <div class="d-flex m-b-10 no-block">
                  <h5 class="card-title m-b-0 align-self-center">Process explorer</h5>
                  <div class="ml-auto text-light-blue"> <a href="#" class="pull-left text-light-blue inline-block refresh mr-15"> <i class="fas fa-sync"></i> Update </a> </div>
                </div>
                <div class="row scrollbox">
                  <div class="col-lg-12 " id="slimtest1" style="height:477px;">
                    <div class="table-responsive m-t-10">
                      <table id="myTable" class="table table-bordered table-hover">
                        <thead>
                          <tr>
                            <th>Product Name</th>
                            <th>Grind</th>
                            <th>NO of buys</th>
                            <th>Quantity</th>
                            <th>&nbsp;</th>
                          </tr>
                        </thead>
                        <tbody>
                          
                          <c:forEach var="product_list" items="${PRODUCTLIST}">
                          <c:set var="sum"  value="${0}" />
                          <c:set var="quantity"  value="${0}" />
                          <c:set var="unit"  value="${0}" />
                          <c:set var = "string2" value = "${''}" />
                          <tr>
                            <td>${product_list.product_name}</td>
                            <td>${product_list.grade}</td>
                            
                            <c:forEach var="cartList" items="${CARTLIST}">
                            
                            <c:if test="${product_list.id == cartList.product_id.id}">
                                <c:set var="sum"  value="${sum+1}" />
                                <c:set var="quantity"  value="${quantity+cartList.quantity}" />
                                
                                <c:set var = "string2" value = "${fn:substringBefore(cartList.unit,'gm')}" />
                                <fmt:parseNumber var="unit2" integerOnly="true" type="number" value="${string2}"  />
                                <c:set var="unit"  value="${unit2+unit}" /> 
                            </c:if>
                            
                            </c:forEach>
                            
                            <td>${sum}</td>
                            <td>${unit}</td>
                          <td> GM
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
          <!-- Column -->
          <!-- Column -->
          <div class="col-lg-4 col-md-12">
            <div class="card panel-main random-data o-income panel-refresh">
              <div class="refresh-container">
                <div class="preloader">
                  <div class="loader">
                    <div class="loader__figure"></div>
                  </div>
                </div>
              </div>
              <div class="card-body p-10 panel-wrapper">
                <div class="d-flex m-t-10 p-l-10 m-b-10 no-block">
                  <h5 class="card-title m-b-0 align-self-center">I/O Activity</h5>
                  <div class="ml-auto text-light-blue"> <a href="#" class="pull-left text-light-blue inline-block refresh m-r-15"> <i class="fas fa-sync"></i> Update </a> </div>
                </div>
                <div class="table-wrapper bookmarking">
                  <div class="bookmarking-main"> <span><i class="fas fa-circle text-primary"></i>Input</span> <span><i class="fas fa-circle text-warning"></i>Output</span> </div>
                  <div class="scrollbox">
                    <div id="slimtest2" style="height:480px;">
                      <div class="table-responsive">
                        <table class="table table-hover m-b-5">
                          <tbody>
                            <tr>
                              <td><span class="txt-dark weight-500"><i class="fas fa-circle text-primary"></i>Database backup</span></td>
                              <td>Beavis</td>
                            </tr>
                            <tr>
                              <td><span class="txt-dark weight-500"><i class="fas fa-circle text-warning"></i>Form creating in task...</span></td>
                              <td>Felix</td>
                            </tr>
                            <tr>
                              <td><span class="txt-dark weight-500"><i class="fas fa-circle text-warning"></i>Add new products in...</span></td>
                              <td>Neosoft</td>
                            </tr>
                            <tr>
                              <td><span class="txt-dark weight-500"><i class="fas fa-circle text-warning"></i>Form creating in task...</span></td>
                              <td>Felix</td>
                            </tr>
                            <tr>
                              <td><span class="txt-dark weight-500"><i class="fas fa-circle text-primary"></i>Form creating in task...</span></td>
                              <td>Cannibus</td>
                            </tr>
                            <tr>
                              <td><span class="txt-dark weight-500"><i class="fas fa-circle text-warning"></i>Database backup</span></td>
                              <td>Beavis</td>
                            </tr>
                            <tr>
                              <td><span class="txt-dark weight-500"><i class="fas fa-circle text-primary"></i>Form creating in task...</span></td>
                              <td>Felix</td>
                            </tr>
                            <tr>
                              <td><span class="txt-dark weight-500"><i class="fas fa-circle text-primary"></i>Creating form statistics</span></td>
                              <td>Cannibus</td>
                            </tr>
                            <tr>
                              <td><span class="txt-dark weight-500"><i class="fas fa-circle text-warning"></i>Add new products in...</span></td>
                              <td>Neosoft</td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Column -->
        </div>
        
        <!-- ============================================================== -->
        <!-- End chart box three -->
        <!-- table box one -->
        <!-- ============================================================== -->   
        
        
        
        <div class="row">
          <!-- Column -->
          <div class="col-lg-12 col-md-12">
            <div class="card  o-income">
              <div class="card-body">
                <div class="row no-margin">
                  <div class="col-lg-8 col-md-12">
                    <div class="d-flex panel-main m-b-10 no-block  panel-refresh">
                      <div class="refresh-container">
                        <div class="preloader">
                          <div class="loader">
                            <div class="loader__figure"></div>
                          </div>
                        </div>
                      </div>
                      <h5 class="card-title m-b-0 align-self-center">CPU productivity</h5>
                      <div class="ml-auto text-light-blue"> <a href="#" class="pull-left text-light-blue inline-block refresh mr-15"> <i class="fas fa-sync"></i> Update </a> </div>
                    </div>
                    <ul class="list-inline m-b-10 text-uppercase lp-5 font-medium font-12">
                      <li><i class="fa fa-square m-r-5 text-warning"></i> CPU</li>
                      <li><i class="fa fa-square m-r-5 text-pink"></i> Memory</li>
                      <li><i class="fa fa-square m-r-5 text-primary"></i> Disc (C: D:)</li>
                    </ul>
                    <div id="morris-area-chart"></div>
                  </div>
                  <div class="col-lg-4 col-md-12" >
                    <div class="panel-main pl-5 m-b-10 no-block  panel-refresh bordered-left-light bordered-css">
                      <div class="refresh-container">
                        <div class="preloader">
                          <div class="loader">
                            <div class="loader__figure"></div>
                          </div>
                        </div>
                      </div>
                      <h5 class="card-title m-b-0 align-self-center">CPU</h5>
                      <div class="block m-t-10 m-b-40">
                        <div class="cpu-div-left"> <span class="block font-25 text-pink">10%</span> Using </div>
                        <div class="cpu-div-right pl-4"> <span class="block font-25 text-primary">2.98 GHz</span> Speed </div>
                        <div class="clearfix"></div>
                      </div>
                      <hr>
                      <h5 class="card-title m-t-30 m-b-0 align-self-center">Memory</h5>
                      <div class="block m-t-10 m-b-40">
                        <div class="cpu-div-left"> <span class="block font-25 text-pink">4.4 Gb</span> Using </div>
                        <div class="cpu-div-right pl-4"> <span class="block font-25 text-primary">3.6 Gb GHz</span> Available </div>
                        <div class="clearfix"></div>
                      </div>
                      <hr>
                      <h5 class="card-title m-t-30  m-b-0 align-self-center">Disc (C: D:)</h5>
                      <div class="block m-t-10 m-b-30">
                        <div class="cpu-div-left"> <span class="block font-25 text-pink">12%</span> Activity time </div>
                        <div class="cpu-div-right pl-4"> <span class="block font-25 text-primary">27.5 ms</span> Response time </div>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Column -->
        </div>
        
        <!-- ============================================================== -->
        <!-- End table box one -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
      </div>
    </div>
  
  <!-- ============================================================== -->
  <!-- End Page Content -->
  <!-- ============================================================== -->
  <!-- ============================================================== -->
  <!-- End Container fluid  -->
  <!-- ============================================================== -->
  <!-- ============================================================== -->
  <!-- footer -->
  <!-- ============================================================== -->
  <!-- ============================================================== -->
  <!-- End footer -->
  <!-- ============================================================== -->
<!-- ============================================================== -->
<!-- End Page wrapper  -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->





<!-- TO BE DELETED  -->



<!-- TO BE DELETED  -->
<script>
$('#slimtest1, #slimtest2').perfectScrollbar();
</script>

<script>
    $(".dial").knob();

    $({animatedVal: 0}).animate({animatedVal: 80}, {
       duration: 2000,
       easing: "swing", 
       step: function() { 
           $(".dial").val(Math.ceil(this.animatedVal)).trigger("change"); 
       }
    }); 
</script>

</body>

</html>
