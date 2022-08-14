<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html >
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<script src='<c:url value="/admin-panel2/js/sweetalert.min.js"/>'></script>
<link href='<c:url value="/admin-panel2/css/sweetalert.css"/>' rel="stylesheet">
<link type="text/css" href='<c:url value="/admin-panel2/css/sample.css"/>' rel="stylesheet" media="screen" />

<title>Add Product</title>
<style>
.ck.ck-toolbar>* {
     margin-right:0px !important;}
     .ck-content{min-height: 140px !important;} 
     </style>
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
                <h5 style="text-align: center;">Add New Product</h5>
                <c:if test="${PRODUCTLISTBYID == null}">
                <form class="form-horizontal" action="add_product" method="post" enctype="multipart/form-data">
               </c:if>
                <c:if test="${PRODUCTLISTBYID != null}">
                <form class="form-horizontal" action="update_product" method="post" enctype="multipart/form-data">
                </c:if>
                
                <div class="row">
                  <div class="col-lg-1 col-md-1">
                    </div>
                    <div class="col-lg-4 col-md-4">
                      <div>
                      <label>Choose File</label>
                      
                      <c:if test="${PRODUCTLISTBYID == null}">
                      <input type="file" id="files" name="image" required="required" class="dropify file-size"/>
                      	<p class="msg" style="color: red;"></p>
                         <input type="file" id="files" required="required" name="image" class="dropify file-size" />
                        	<p class="msg" style="color:red;"></p>
                         <div id="gk">
                            <input type="file" id="gk-files" required="required" name="image" class="dropify file-size" />
                            </div>
                      </c:if>
                      
                    <c:if test="${PRODUCTLISTBYID != null}">
                    <c:set var="imagename" value="${PRODUCTLISTBYID.imageName}"/>
                           <c:set var = "string2" value = "${fn:split(imagename, ' ,')}" />
                         <c:forEach var="img" items="${string2}">
                         <img alt="avtar" src="getImagebyName?imageName=${img}" style="width:100%; margin-top: -77px;" class="dropify">
                            <input type="file"  name="image1"  class="file-size" >
                         </c:forEach>
                    </c:if>
                    </div>
                    </div>
                    <div class="col-lg-7 col-md-7">
                      <c:if test="${PRODUCTLISTBYID != null}">
                        <input type="hidden" name="id" value="${PRODUCTLISTBYID.id}"> 
                      </c:if>
                      <div class="form-wrap form-wrap2 mt-4">
                          <div class="clearfix"></div>
                          <div class="form-group m-b-15">
                            <div class="row m-0 m-b-20">
                              <div class="col-sm-6 col-xs-12">
                                <label class="control-label  font-14 m-b-5">Product Name</label>
                              <div>
                                <input type="text" class="form-control font-14" id="pname" placeholder="Name" name="product_name"  value="${PRODUCTLISTBYID.product_name}">
                              </div>
                              </div>
                              <div class="col-sm-6 col-xs-12" > 
                                <label class="control-label font-14 m-b-5">Select Category</label>
                                <div>
                                  <select class="custom-select font-14 m-b-5" name="category" id="category"  onchange="myfunction(this.value)" data-style="btn-default btn-outline" required="required" >
                                  	<option  data-tokens="Category" selected="selected" value="">Select Category </option>
                                    <option data-tokens="Category 1" value="HOLY TRINITY">Holy Trinity </option>
                                    <option data-tokens="Category 2" value="HOUSE BLENDS">House Blends</option>
                                    <option data-tokens="Category 3" value="FOREIGN BLENDS">Foreign Blends</option>
                                    <option data-tokens="Category 4" value="EQUIPMENTS">Equipments</option>
                                  </select>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="clearfix"></div>
                          <div class="form-group m-b-15" >
                            <div class="row m-0 m-b-20">
                              <c:if test="${PRODUCTLISTBYID.category ne 'EQUIPMENTS'}">
                              <div class="col-md-6 col-xs-12" id="grade">
                              <label class="control-label  font-14 m-b-5">Grade</label>
                              <div>
                              	 <select class="custom-select font-14 m-b-5" name="grade" id="gr-sel"  >
                                  	<option  data-tokens="grade" selected="selected" value="">Select Grade </option>
                                    <option data-tokens="grade 3" value="HOUSE BLEND">House Blends</option>
                                    <option data-tokens="grade 3" value="100% ARABICA">100% Arabica</option>
								</select>
                              </div>  
                              </div>
                              </c:if>
                                
                             <c:if test="${PRODUCTLISTBYID.category eq 'EQUIPMENTS'}">
                              <div class="col-md-6 col-xs-12">
                              <label class="control-label  font-14 m-b-5">Sub Categories</label>
                              <div>
                              	 <select class="custom-select font-14 m-b-5"  name="grade" id="sub-cat-sell">
                                  	<option  data-tokens="grade" selected="selected" value="">Select Sub Category</option>
                                    <option data-tokens="grade 1" value="COFFEE MACHINE">Coffee Machine</option>
                                    <option data-tokens="grade 2" value="MANUAL BREWING">Manual Brewing</option>
                                    <option data-tokens="grade 2" value="AUTOMATIC BREWING">Automatic Brewing</option>
                                    <option data-tokens="grade 3" value="GRINDER">Grinder</option>
                                    <option data-tokens="grade 3" value="DRINK MIXER">Drink Mixer</option>
                                    <option data-tokens="grade 4" value="MILK STEAMER">Milk Steamer</option>
                                    <option data-tokens="grade 4" value="ACCESSORIES">Accessories</option>
								</select>
                              </div>  
                              </div>
                             </c:if> 
                              
                              
                              <div class="col-md-6 col-xs-12" id="sub-cat" style="display: none;"  >
                              <label class="control-label  font-14 m-b-5">Sub Categories</label>
                              <div>
                              	 <select class="custom-select font-14 m-b-5" disabled="disabled" name="grade" id="sub-cat-sel"   >
                                  	<option  data-tokens="grade" selected="selected" value="">Select Sub Category</option>
                                    <option data-tokens="grade 1" value="COFFEE MACHINE">Coffee Machine</option>
                                    <option data-tokens="grade 2" value="MANUAL BREWING">Manual Brewing</option>
                                    <option data-tokens="grade 2" value="AUTOMATIC BREWING">Automatic Brewing</option>
                                    <option data-tokens="grade 3" value="GRINDER">Grinder</option>
                                    <option data-tokens="grade 3" value="DRINK MIXER">Drink Mixer</option>
                                    <option data-tokens="grade 4" value="MILK STEAMER">Milk Steamer</option>
                                    <option data-tokens="grade 4" value="ACCESSORIES">Accessories</option>
								</select>
                              </div>  
                              </div>
                              
                              
                              <div class="col-md-6 col-xs-12">
                                <label class="control-label font-14 m-b-5">Unit Price</label>
                                <div >
                                  <input type="text" class="form-control font-14"  placeholder="price" name="product_price" value="${PRODUCTLISTBYID.product_price}">
                                </div>
                              </div>
                            </div>
                          </div>
                              <div class="clearfix"></div>
                          <div class="form-group m-b-15">
                            <div class="row m-0 m-b-20">
                              
                              <div class="col-md-6 col-xs-12">
                                <label class="control-label font-14 m-b-5">Quantity</label>
                                <div >
                                  <input type="text" class="form-control font-14"  placeholder="stock" name="stock" value="${PRODUCTLISTBYID.stock}">
                                </div>
                              </div>
                              <c:if test="${PRODUCTLISTBYID.category ne 'EQUIPMENTS'}">
                              <div class="col-sm-6 col-xs-12" id="gkunits">
                                <label class="control-label font-14 m-b-5" >Unit</label>
                                <div>
                                <%-- <input type="text" class="form-control font-14"  placeholder="1 unit per gm/Kg " name="unit" value="${PRODUCTLISTBYID.unit}"> --%>
                                  <select class="custom-select font-14 m-b-5" name="unit"  data-style="btn-default btn-outline" required="required" id="gkkk-unit" >
                                 	<option  data-tokens="Category" value="">Select Unit</option>
                                    <option data-tokens="Category 1" value="250gm">250gm</option>
                                    <option data-tokens="Category 2" value="500gm">500gm</option>
                                    <option data-tokens="Category 3" value="1000gm">1kg</option>
                                    </select>
                                 
                                </div>
                              </div>
                              </c:if>
                              <!-- ravi -->
                              
                              
                              
                            </div>
                          </div>
                          <div class="form-group row m-b-15">
                            <div class="col-sm-12">
                              <label class="col-12 p-t-0 m-b-5">Description</label>
                              <div class="col-12">
                              <%--   <input type="text" class="form-control textarea-lg" name="description" value="${PRODUCTLISTBYID.description}"/> --%>
                              
                                <textarea id="editor" rows="84" cols="68" name="description">${PRODUCTLISTBYID.description}</textarea><br>
                              </div>
                            </div>
                          </div>
                          <div class="form-group row m-l-0 m-b-10">
                            <div class="col-md-6 col-xs-12 m-b-10">
                              <div class="p-l-15 p-r-15">
                                <input type="checkbox" checked class="js-switch" data-color="#4886ff"  value="1" data-size="small" name="available">
                                <label class="m-l-10"> Available</label>
                              </div>
                            </div>
                            <div class="col-md-6  col-xs-12 text-right">
                              <div class="p-l-15 p-r-15">
                                <input type="submit" id="submit-btn" class=" waves-effect waves-light btn-rounded btn-success" value="Save">
                                <!-- <button type="button" class="btn btn-rounded waves-effect waves-light btn-outline-default">Cancel</button> -->
                              </div>
                            </div>
                          </div>
                      
                      </div></div></div>
                        </form>  
                          </div>
                    </div>
                  </div>
                  <!-- End of product slider -->
                      </div>
                    </div>
                  </div>
                  <script src='<c:url value="/admin-panel2/js/ckeditor.js"/>'></script>
<script type="text/javascript">
    $(document).ready(function() {
    	<c:if test="${!empty PRODUCTLISTBYID}">
    
    	var category = "${PRODUCTLISTBYID.category}";
		$("#category > option").each(function(){
			if(category==$(this).val()){
				$(this).attr("selected","selected");
					return false;
				}
			});
    	</c:if>
    });

    </script>
    
    
    
    
<script type="text/javascript">
    $(document).ready(function() {
    	<c:if test="${!empty PRODUCTLISTBYID}">
    
    	var grade = "${PRODUCTLISTBYID.grade}";
		$("#sub-cat-sell> option").each(function(){
			if(grade==$(this).val()){
				$(this).attr("selected","selected");
					return false;
				}
			});
    	</c:if>
    });

    </script>     
     
   <script type="text/javascript">
    $(document).ready(function() {
    	
    	<c:if test="${!empty PRODUCTLISTBYID}">
    	var grade = "${PRODUCTLISTBYID.grade}";
    	$("#gr-sel > option").each(function(){
			if(grade==$(this).val()){
				$(this).attr("selected","selected");
					return false;
				}
			});
    	</c:if>
    });

    </script>
     <script type="text/javascript">
    $(document).ready(function() {
    	
    	<c:if test="${!empty PRODUCTLISTBYID}">
    	var unit = "${PRODUCTLISTBYID.unit}";
		$("#gkkk-unit > option").each(function(){
			if(unit==$(this).val()){
				$(this).attr("selected","selected");
					return false;
				}
			});
    	</c:if>
    });

    </script>   
                  
<script type="text/javascript">
    $(document).ready(function() {

     if(window.File && window.FileList && window.FileReader) {
        $("#files").on("change",function(e) {
            var files = e.target.files ,
            filesLength = files.length ;
            for (var i = 0; i < filesLength ; i++) {
                var f = files[i]
                var fileReader = new FileReader();
                fileReader.onload = (function(e) {
                    var file = e.target;
                $("<img></img>",{
                        class : "imageThumb",
                        src : e.target.result,
                        title : file.name
                    }).insertAfter("#files");
               });
               fileReader.readAsDataURL(f);
           }
      });
     } else { alert("Your browser doesn't support to File API") }
    });

    </script>  
    <script type="text/javascript">
    function  myfunction(ctg) {

    	
    	if(ctg == "EQUIPMENTS")
    		{
    	//	document.getElementById("sub-cat-sel").disabled=true;
    		 $("#gk").css("display", "none");
    		 $("#sub-cat").css("display", "block");
    	     $("#grade").css("display", "none");
    		//$("#gk-files").attr("disabled", "disabled");
    		$("#gk-files").prop("disabled", true);
    		$("#gkkk-unit").prop("disabled", true);
    		$("#gkunits").hide();
    		$("#gr-sel").prop("disabled", true);
    		$("#sub-cat-sel").prop("disabled", false);
    		
    		}
    	else{
    		
    		$("#gk").css("display", "block");
   	        $("#sub-cat").css("display", "none");
   	        $("#grade").css("display", "block");
   		//	$("#gk-files").attr("enabled", "enabled");
   			$("#gk-files").prop("disabled", false);
   		    $("#gkkk-unit").prop("disabled", false);
   		    $("#gkunits").show();
   		    $("#gr-sel").prop("disabled", false);
   		 $("#sub-cat-sel").prop("disabled", true);
    	}
    	
	}
    
    </script>
    <script type="text/javascript">
    $('.file-size').bind('change', function() {
        var maxFileSize = 16000000; // 1MB -> 1000 * 1024
        var fileSize=this.files[0].size;
    	 if(fileSize>maxFileSize){ 
    		$(this).parent().parent().parent().find('.msg').html("File size must be <16mb");
    		$("#submit-btn").attr("disabled", true);	
    	 }
    	 else{
    		 $("#submit-btn").attr("disabled", false); 
    	 }
    });
    
    
    </script>
        <c:if test="${!empty MESSAGE}">
		<script type="text/javascript">
			$(document).ready(function() {
			swal("Success!", "PRODUCT ADDED SUCCESSFULY !", "success");
			});
		</script>
		</c:if>
	<script>
	ClassicEditor
		.create( document.querySelector( '#editor' ), {
			// toolbar: [ 'heading', '|', 'bold', 'italic', 'link' ]
		} )
		.then( editor => {
			window.editor = editor;
		} )
		.catch( err => {
			console.error( err.stack );
		} );
</script>
<script type="text/javascript">
$(document).ready(function() {
var editor = CKEDITOR.instances.editable,
el = CKEDITOR.document.getById( 'editable' ),
range = editor.createRange();

editor.focus();
range.selectNodeContents( el );
range.select();
});

</script>

</body>
</html>