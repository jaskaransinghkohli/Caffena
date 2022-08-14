<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> --%>
<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en-US" class="no-js no-svg">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<title>Products &#8211; Despina</title>
<link rel='dns-prefetch' href='<c:url value="/http://fonts.googleapis.com/"/>' />
<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/despina.sk-web-solutions.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.8.9"}};
			!function(a,b,c){function d(a){var b,c,d,e,f=String.fromCharCode;if(!k||!k.fillText)return!1;switch(k.clearRect(0,0,j.width,j.height),k.textBaseline="top",k.font="600 32px Arial",a){case"flag":return k.fillText(f(55356,56826,55356,56819),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,56826,8203,55356,56819),0,0),c=j.toDataURL(),b!==c&&(k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447),0,0),c=j.toDataURL(),b!==c);case"emoji4":return k.fillText(f(55358,56794,8205,9794,65039),0,0),d=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55358,56794,8203,9794,65039),0,0),e=j.toDataURL(),d!==e}return!1}function e(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i,j=b.createElement("canvas"),k=j.getContext&&j.getContext("2d");for(i=Array("flag","emoji4"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
</script>
<style type="text/css">
img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}


.woocommerce img, .woocommerce-page img {
    height: auto; 
    max-width: 100%;
}

.loader {
    position: absolute;
    display: flex;
    justify-content: center;
    align-items: center;
  /*   max-width: 1140px;
    max-height: 600px; */
    width: 100%;
    height: 100%;
}

.loader-img {
    width: 10vw;
    max-width: 64px;
    min-width: 32px;
}
.overlay {
  position: fixed;
  width: 100%;
  height: 100%;
  display:none;
  top:0;
  background-color: rgba(202, 191, 191, 0.5);
  z-index: 2;
  cursor: pointer;
}
.text{
  position: absolute;
  top: 50%;
  left: 50%;
  font-size: 50px;
  color: white;
  transform: translate(-50%,-50%);
  -ms-transform: translate(-50%,-50%);
}
.jq-checkbox{
	border: 1px solid #0cde74!important;
    padding-top: 2px !important;
}
.ul-li-st li{list-style-type: none !important; margin-left: 0px !important;} 
.ul-li-st li a{
	margin-left: 0px!important;
	padding-left: 0px!important;
}
.blog-common-wide{
	margin-top: 20px;
	margin-bottom: 20px;
}
.jq-selectbox__dropdown ul li{
	padding: 0px 30px 0px 15px;
}
.jq-selectbox__select-text{
	width: 100%!important;
}
.shop-product img {
    width: 100%;
    -webkit-border-radius: 20px;
    -moz-border-radius: 20px;
    -ms-border-radius: 20px;
    -o-border-radius: 20px;
    border-radius: 0px !important;
}
.cart-overlay-wrap {
     border-radius: 0px !important;
   } 
   .ho-a{text-decoration: none;
   	
    color: #f9fcfc;

   }
   .ho-p{color: #f9fcfc;
    line-height: 1em;
    -ms-transform: translate(-10px, 0px);
    -webkit-transform: translate(-10px, 0px);
    transform: translate(-10px, 0px);
    transition: translate(-10px, 0px);
    opacity: 1;
    display: block;
    transition: all .5s .05s;
    text-transform: uppercase;
}
.span-divider{
	border: 1px solid #10b3c6;
	margin: 10.5px 0;
    display: block;
    width: 30px;
    /* border: 1px solid #cecece; */
    bottom: -10px;
    padding-left: 16%;
    margin-left: 36%;
}
ho1-p{

   	
    color: #121212;
    font-size: .85em;
    text-transform: uppercase;
    transform: translate(-10px, 0px);
    transition: translate(-10px, 0px);
    opacity: 0;
    display: block;
    transition: all .5s .05s;
}
.cart-overlay-wrap {
    position: absolute;
    left: 0px;
    width: 100%;
    height: 100%;
    background: rgba(8, 8, 8, 0.86) !important;
    top: 0px;
    -webkit-border-radius: 20px;
    -moz-border-radius: 20px;
    -ms-border-radius: 20px;
    -o-border-radius: 20px;
    border-radius: 20px;
    overflow: hidden;
    opacity: 0;
    z-index: -1;
    -webkit-transform: scale(0) rotate(-180deg);
    -moz-transform: scale(0) rotate(-180deg);
    -ms-transform: scale(0) rotate(-180deg);
    -o-transform: scale(0) rotate(-180deg);
    transform: scale(0) rotate(-180deg);
    -webkit-transition: all 0.4s ease-in-out 0s;
    -moz-transition: all 0.4s ease-in-out 0s;
    -ms-transition: all 0.4s ease-in-out 0s;
    -o-transition: all 0.4s ease-in-out 0s;
    transition: all 0.4s ease-in-out 0s;
}
.buy-button{
    position: absolute;
    float:right!important;
    margin-bottom: 1rem;

}
.button-tertiary-flip{    color: #fff;
    background-color: #121212;
    border-color: #10b3c6;
    min-width: 150px;
    border-radius:0px !important; 
}
.button-tertiary-flip:hover{
	color: #fff;
    background-color: #10b3c6;
    border-color: #10b3c6;
    }
  .wp-post-image1{
  	min-width: 301px !important;
    max-width: 301px !important;
    min-height: 201px !important;
    max-height: 201px !important;
      }
      
      
      .woocommerce .woocommerce-ordering {
    margin: 0 0 0px !important;
}


 #myUL, #myUL li  {
  list-style-type: none !important;
 
}

/*
#myUL li a {
  border: 1px solid #ddd !important;
  margin-top: -1px !important; 
  background-color: #f6f6f6 !important;
  padding: 12px !important;
  text-decoration: none !important;
  font-size: 18px !important;
  color: black !important;
  display: block !important;
}

#myUL li a:hover:not(.header) {
  background-color: #eee !important;
} */

.result-bucket li {
    padding: 0px 0spx !important ;
    margin-left: 0px !important;
}
.instant-results {
    background: #fff !important;
    width: 100% !important;
    color: gray !important;
    position: absolute !important;
    top: 100% !important;
    left: 0 !important;
    border: 1px solid rgba(0, 0, 0, .15) !important;
    border-radius: 4px !important;
    -webkit-box-shadow: 0 2px 4px rgba(0, 0, 0, .175) !important;
    box-shadow: 0 2px 4px rgba(0, 0, 0, .175) !important;
    
    z-index: 9;
}
.form-search {
    transition: all 200ms ease-out !important;
    -webkit-transition: all 200ms ease-out !important;
    -ms-transition: all 200ms ease-out !important;
}
.search-form {
    position: relative !important;
    max-width: 100% !important;
}
.result-link {
    color: #4f7593 !important;
    padding-left: 0px !important;
}
.result-link .media-body {
    font-size: 13px !important;
    color: gray !important;
}
.result-link .media-heading {
    font-size: 15px !important;
    font-weight: 400 !important;
    color: #4f7593 !important;
}
.result-link:hover,
.result-link:hover .media-heading,
.result-link:hover .media-body {
    text-decoration: none !important;
    color: #4f7593 !important;
}
.result-link .media-object {
    width: 50px;
    padding: 3px;
    border: 1px solid #c1c1c1;
    border-radius: 3px;
    padding-left: 0px !important;
}
.result-entry + .result-entry {
    border-top:1px solid #ddd !important;
}
.result-entry:hover{
	background-color:#f3f3f9 !important;
}
.top-keyword {
    margin: 3px 0 0 !important;
    font-size: 12px !important;
    font-family: Arial !important;
}
.top-keyword a {
    font-size: 12px !important;
    font-family: Arial !important;
}
.top-keyword a:hover {
    color: rgba(0, 0, 0, 0.7);
}
.cat-grd{color:grey !important;
			font-size: 10px !important;
			font-style: italic;
			text-transform: capitalize;
}
.result-bucket {
max-height :150px !important;
  overflow-y: scroll !important;
}


/*     .grid__item {
    box-sizing: border-box;
    float: left;
    min-height: 1px;
    vertical-align: top;
    width: 100%;
   
    }
    
    
    .equipment-tab{
    color: black !important;
    border:1px solid #a0a0c3 !important;
    border-radius:0px !important;
    background: transparent !important;
}
.equipment-tab:hover{
   background-color: #a0a0c3 !important;
   color: white !important;
}
#equipment-tab .equipment-tab, #classes-tabs .classes-tab {
    color: #fff;
    
    
    border-color: black;
    min-width: 150px;
}
.shop-products a, .shop-product a {
    color: #121212;
}  /* ravi */ */
</style>
<link rel='stylesheet' id='js_composer_front-css' href='wp-content/plugins/js_composer/assets/css/js_composer.min5fba.css?ver=5.2' type='text/css' media='all' />
<link rel='stylesheet' id='contact-form-7-css' href='<c:url value="/wp-content/plugins/contact-form-7/includes/css/stylesce52.css?ver=5.0.2"/>' type='text/css' media='all' />
<link rel='stylesheet' id='menu-image-css' href='<c:url value="/wp-content/plugins/menu-image/menu-image4963.css?ver=1.1"/>' type='text/css' media='all' />
<link rel='stylesheet' id='rs-plugin-settings-css' href='<c:url value="/wp-content/plugins/revslider/public/assets/css/settings9009.css?ver=5.4.5.1"/>' type='text/css' media='all' />
<style id='rs-plugin-settings-inline-css' type='text/css'>
#rs-demo-id {
	
}
.cont-flui{
	padding-left: 28px !important;
	padding-right: 28px !important;
}
</style>

<script type='text/javascript'>
/* <![CDATA[ */
var wc_add_to_cart_params = {"ajax_url":"\/theme\/despina\/despina\/wp-admin\/admin-ajax.php","wc_ajax_url":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/?wc-ajax=%%endpoint%%","i18n_view_cart":"View cart","cart_url":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/cart\/","is_cart":"","cart_redirect_after_add":"no"};
/* ]]> */
</script>
<noscript>
	<style>
.woocommerce-product-gallery {
	opacity: 1 !important;
}
</style>
</noscript>
<meta name="generator" content="Powered by Visual Composer - drag and drop page builder for WordPress." />
<meta name="generator" content="Powered by Slider Revolution 5.4.5.1 - responsive, Mobile-Friendly Slider Plugin for WordPress with comfortable drag and drop interface." />
<script type="text/javascript">function setREVStartSize(e){
				try{ var i=jQuery(window).width(),t=9999,r=0,n=0,l=0,f=0,s=0,h=0;					
					if(e.responsiveLevels&&(jQuery.each(e.responsiveLevels,function(e,f){f>i&&(t=r=f,l=e),i>f&&f>r&&(r=f,n=e)}),t>r&&(l=n)),f=e.gridheight[l]||e.gridheight[0]||e.gridheight,s=e.gridwidth[l]||e.gridwidth[0]||e.gridwidth,h=i/s,h=h>1?1:h,f=Math.round(h*f),"fullscreen"==e.sliderLayout){var u=(e.c.width(),jQuery(window).height());if(void 0!=e.fullScreenOffsetContainer){var c=e.fullScreenOffsetContainer.split(",");if (c) jQuery.each(c,function(e,i){u=jQuery(i).length>0?u-jQuery(i).outerHeight(!0):u}),e.fullScreenOffset.split("%").length>1&&void 0!=e.fullScreenOffset&&e.fullScreenOffset.length>0?u-=jQuery(window).height()*parseInt(e.fullScreenOffset,0)/100:void 0!=e.fullScreenOffset&&e.fullScreenOffset.length>0&&(u-=parseInt(e.fullScreenOffset,0))}f=u}else void 0!=e.minHeight&&f<e.minHeight&&(f=e.minHeight);e.c.closest(".rev_slider_wrapper").css({height:f})					
				}catch(d){console.log("Failure at Presize of Slider:"+d)}
			};
</script>
<noscript>
	<style type="text/css">
.wpb_animate_when_almost_visible {
	opacity: 1;
}
</style>
</noscript>
</head>
<script type="text/javascript">
	function myfun(str){
		var msg="${MSG}";
		if(msg=="NEWADD"){
			<%
	        request.getSession().removeAttribute("MSG");
			%>			
			jQuery("#cart-details").show();
		}
	}
	
</script>
<body onload="myfun()" class="archive post-type-archive post-type-archive-product woocommerce woocommerce-page wpb-js-composer js-comp-ver-5.2 vc_responsive">
<!-- Start Wrapper Part -->
<div class="wrapper">
	<!-- Start Header Part -->
	<c:if test="${USER ne null}">
		<jsp:include page="customerheader.jsp"></jsp:include>
	</c:if>
	<c:if test="${USER eq null}">
		<jsp:include page="header.jsp"></jsp:include>
	</c:if>
	
	
	<main>
		<div class="main-part"><hr>
			<div class="container">
			<c:set var="imagename1" value="${PRODUCTLIST.get(0).imageName}"></c:set>
            <c:set var = "string3" value = "${fn:split(imagename1, ',')}" />
				<div class="row" id="cart-details" style="display: none;">
					<div class="col-sm-1"></div>
					<div class="col-sm-10" style="border: 1px solid red; padding: 10px; height: 70px">
					<div class="row">
						<div class="col-sm-1" style="padding: 1% 0% 0% 4%;"><span><i class="fa fa-check" style="font-size: 30px;" aria-hidden="true"></i></span></div>
						<div class="col-sm-1">
							<img alt="" src="getImagebyName?imageName=${string3[0]}" style="border: 1px solid green; margin: 0px 0px 0px 0px; height:5%;" >
						</div>
						<div class="col-sm-2" style="padding: 15px 0px 20px 0px">
							<h5 style="color: green"><b>Added to Cart</b></h5>
						</div>
						<div class="col-sm-4" style="padding: 15px 0px 20px 0px">
							<c:set var="price" value="0"></c:set>
							<c:forEach var="cart" items="${ORDER}">
								<c:set var="price" value="${price+ cart.product_id.product_price}"></c:set>
							</c:forEach>
							<h5>Cart subtotal( ${ ORDER.size()} items): ₹ <fmt:formatNumber type = "number"  value = "${price}" /> </h5>
						</div>
						<div class="col-sm-1" style="padding: 15px 0px 20px 0px; color: brown">
							<h5></h5>
						</div>
						<div class="col-sm-1" style="padding: 10px 0px 20px 0px">
							<a href='<c:url value="/${USERTYPE}/view_cart"/>'><button class="btn  btn-default">Cart</button></a>
						</div>
						<div class="col-sm-2" style="padding: 10px 0px 20px 0px">
							<a href='<c:url value="/${USERTYPE}/check_out"/>'><button class="btn  btn-primary">Proceed to Buy</button></a>
						</div>
					</div>
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>
		<section class="default-section shop-page">
				<div class="container-fluid cont-flui">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="blog-left-section">
								<div id="search-4" class="blog-common-wide widget widget_search">
									<form role="search"  method="get" id="searchform" class="searchform form-search" action="shopSinglePage">
										<div class="blog-left-search blog-common-wide">
											<input type="search" id="myInput" name="s" placeholder="Search" value="" autocomplete="off" oninput="getListInSearchBox(this.value)"> 
											<input type="hidden" id="id-pro" value="" name="id">
											<input type="submit" value="&#xf002;">
										</div>
									</form>
									<div class="instant-results">

										<ul id="myUL" class="list-unstyled result-bucket " >
										</ul>
									</div>
									
								</div>
								
								<a href="equipment" style="font-size: 19px;">Equipment</a>
								<div id="woocommerce_product_categories-2" class="blog-common-wide widget woocommerce widget_product_categories">
									<div class="widget-top">
										<h3 class="widget-title">Categories</h3>
									</div>
									<ul class="product-categories ul-li-st">
										<li class="">
											<a href="javscript: void(0)" onclick="fun(this.val)"><input type="checkbox" name="cat_name" value="HOLY TRINITY" style="box-sizing:border-box; ">Holy Trinity</a>
										</li>
										<li class="cat-item cat-item-37">
											<a href="javscript: void(0)" onclick="fun(this.val)"><input type="checkbox" name="cat_name" value="HOUSE BLENDS" style="box-sizing:border-box; ">House Blends</a>
										</li>
										<li class="cat-item cat-item-38">
											<a href="javscript: void(0)" onclick="fun(this.val)"><input type="checkbox" name="cat_name" value="FOREIGN BLENDS" style="box-sizing:border-box; ">Foreign Blends</a>
										</li>
										<div id="woocommerce_price_filter-2" class="blog-common-wide widget woocommerce widget_price_filter">
											<div class="widget-top">
												<h3 class="widget-title">Price</h3>
											</div>
											<form method="post" action="products-on-price-range">
												<div class="price_slider_wrapper">
													<div class="price_slider" style="display:none;"></div>
														<div class="price_slider_amount">
															<input type="text" id="min_price" name="min_price" value="100" data-min="100" placeholder="Min price" />
															<input type="text" id="max_price" name="max_price" value="9999" data-max="9999" placeholder="Max price" />
															<button type="button" class="button" id="filter_btn">Filter</button>
															<div class="price_label" style="display:none;">
																Price: <span class="from" id="from_price"></span> &mdash; <span class="to" id="to_price"></span>
															</div>
															<div class="clear"></div>
														</div>
													</div>
												</form>
											</div>
											<div id="despina_best_deals-3" class="blog-common-wide widget widget_despina_best_deals">
												<div class="widget-top">
													<h3 class="widget-title">Grade</h3>
												</div>
												<ul class="product-categories">
													<li class="cat-item cat-item-39">
														<a href="javascript:void(0)" onclick="fun(this.value)"><input type="checkbox" name="grade_name" value="HOUSE BLEND" style="box-sizing:border-box; ">HOUSE BLEND </a>
													</li>
													<li class="cat-item cat-item-39">
														<a href="javascript:void(0)" onclick="fun(this.value)"><input type="checkbox" name="grade_name" value="100% ARABICA" style="box-sizing:border-box; ">100% ARABICA</a>
													</li>
												</ul>
											</div>
											<div id="tag_cloud-3" class="blog-common-wide widget widget_tag_cloud">
												<div class="widget-top">
													<h3 class="widget-title">Popular Products</h3>
												</div>
												<div class="tagcloud">
													<c:forEach var="pop" items="${POPPRODUCT}">
														<a href="shopSinglePage?id=${pop.id}" class="" style="font-size: 8pt;" aria-label=""> ${pop.product_name} </a>
													<!-- 	<a href="../tag/cupcake/index.html" class="tag-cloud-link tag-link-50 tag-link-position-2" style="font-size: 8pt;" aria-label="Cupcake (14 items)">Cupcake</a> -->
													
												</c:forEach>
												</div>
											</div>
										</div>
									</div>
								</div>	
									<div class="col-md-9 col-sm-9 col-xs-12">
										<div class="blog-right-section">
											<div class="shop-search wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
												<!-- <p class="woocommerce-result-count">Showing 1&ndash;9 of 11 results</p> -->
												<form class="woocommerce-ordering" method="get">
													<select name="orderby" id="sorting-way" class="orderby" onchange="getSortedProductList(this.value)">
														<option value="0" selected='selected'>Default sorting</option>
														<option value="1">Price: Low to High</option>
														<option value="9">Price: High to Low</option>
													</select>
												</form>
												</div>
												
											<div id="pre" class="loader overlay"  ><%-- <img alt="" height="200px" width="200px" style="top: 30%; left: 30%;" src='<c:url value="/wp-content/themes/despina/images/ajax-loader.gif"/>'> --%> 
											
													  <svg class="loader-img text" width="64px" height="64px" viewBox="0 0 128 128" xml:space="preserve"><g><path d="M75.4 126.63a11.43 11.43 0 0 1-2.1-22.65 40.9 40.9 0 0 0 30.5-30.6 11.4 11.4 0 1 1 22.27 4.87h.02a63.77 63.77 0 0 1-47.8 48.05v-.02a11.38 11.38 0 0 1-2.93.37z" fill="#898989" fill-opacity="1"/><animateTransform attributeName="transform" type="rotate" from="0 64 64" to="360 64 64" dur="1000ms" repeatCount="indefinite"></animateTransform></g></svg>
											
											</div>
											<c:if test="${NOPRODUCTFOUND ne 'no product'}">	
											<div class="row" id="product-list">
											
												<c:forEach var="productlist" items="${PRODUCTLIST}">
													<c:set var="imagename" value="${productlist.imageName}"></c:set>
              										<c:set var = "string2" value = "${fn:split(imagename, ',')}" />			
													<div class="col-md-4 col-sm-4 col-xs-12 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
														<div class="shop-main-list">
															<div class="shop-product">
																<img width="263" height="241" src="getImagebyName?imageName=${string2[0]}" style="min-width:301px; max-width: 301px; min-height: 201px; max-height: 201px; " class="attachment-despina-shop-slider size-despina-shop-slider wp-post-image wp-post-image1" alt="product-5" title="product-5" />
																<div class="cart-overlay-wrap">
																	<div class="cart-overlay">
																		<a href="shopSinglePage?id=${productlist.id }"></a>
																		<a href="shopSinglePage?id=${productlist.id }" class="ho-a"><p class="ho-p">${productlist.category}</p>
																		<span class="span-divider"></span> 
																		<p class="ho1-p">${productlist.grade}</p>
																		</a>
																		<a href="shopSinglePage?id=${productlist.id }" class="button buy-button button button-tertiary-flip">Order</a>
																	</div>
																</div>
															</div>
															<h5> <a href="shopSinglePage?id=${productlist.id }">${productlist.product_name}</a> </h5>
															<span>
																<span class="woocommerce-Price-amount amount">
																	<span class="woocommerce-Price-currencySymbol">&#8377;</span><fmt:formatNumber type = "number"  value = "${productlist.product_price}" />
																</span>
															</span>
														</div>
													</div>
												</c:forEach>
											</div>
											 </c:if>
											<c:if test="${NOPRODUCTFOUND eq 'no product'}"><h2>No Product Found</h2></c:if>
											<div class="gallery-pagination">
												<div class="gallery-pagination-inner">
													<ul>
														<!-- <li class="disabled"><a><i class="icon-left-4"></i><span>PREV page</span></a></li>
														<li class="active"><a href="index.html"><span>1</span></a></li>
														<li><a href="page/2/index.html"><span>2</span></a></li> -->
														<!-- <li><a href="page/2/index.html" class="pagination-next"><span>next page</span> <i class="icon-right-4"></i></a></li> -->
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
					
				</main>
				
				
				
				
				<c:if test="${USER != null }">
	
	<footer>
	<div class="footer-part">
			<div class="copyright">
						<div class="container">
							<div class="widget">
								<div class="textwidget">
									<p>Copyright © 2019 caffenaindia.com  All rights reserved | Designed & Developed by RGA</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</footer>
		</c:if>
		<c:if test="${USER == null }">
			<jsp:include page="footer.jsp"></jsp:include>
		</c:if>
		</div>
		<a href="#" class="top-arrow" style="background: rgba(0, 0, 0, 0) url('wp-content/themes/despina/images/arrow-top.png') no-repeat scroll 0 0;"></a>
	<script type='text/javascript'>
		/* <![CDATA[ */
		var wpcf7 = {"apiSettings":{"root":"https:\/\/despina.sk-web-solutions.com\/wp-json\/contact-form-7\/v1","namespace":"contact-form-7\/v1"},"recaptcha":{"messages":{"empty":"Please verify that you are not a robot."}}};
		/* ]]> */
	</script>
	<%-- <script type='text/javascript' src='<c:url value="/wp-content/plugins/contact-form-7/includes/js/scriptsce52.js?ver=5.0.2"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min44fd.js?ver=2.70"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min6b25.js?ver=2.1.4"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.minc169.js?ver=3.2.6"/>'></script>
	 --%>


<%-- 	<script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.minc169.js?ver=3.2.6"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/bootstrap/bootstrap.min9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/bootstrap/bootstrap-slider9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/parallax-stellar/jquery.stellar9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/animation/wow.min9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/owl-carousel/owl.carousel.min9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/light-box/simple-lightbox.min9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/light-box/jquery.magnific-popup.min9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/scroll-bar/jquery.mCustomScrollbar.concat.min9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/masonry/isotop9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/masonry/packery-mode.pkgd.min9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/form-field/jquery.formstyler.min9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/Slick-slider/slick.min9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/despina-app9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/despina-script9537.js?ver=4.8.8"/>'></script> --%>
	<script type='text/javascript'>
/* <![CDATA[ */
var DESPINA_ajaxcalls_vars = {"admin_url":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/wp-admin\/","retina_logo":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/wp-content\/themes\/despina\/images\/logo\/logo.png","retina_logo_width":"169","retina_logo_height":"77"};
/* ]]> */
</script>
	<%-- <script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/despina_ajax_calls6a9f.js?ver=1.3.6"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-includes/js/wp-embed.min9537.js?ver=4.8.8"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min5fba.js?ver=5.2"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/plugins/js_composer/assets/lib/bower/skrollr/dist/skrollr.min5fba.js?ver=5.2"/>'></script>
	<script type='text/javascript' src='<c:url value="wp-includes/js/jquery/ui/core.mine899.js?ver=1.11.4"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-includes/js/jquery/ui/widget.mine899.js?ver=1.11.4"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-includes/js/jquery/ui/mouse.mine899.js?ver=1.11.4"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-includes/js/jquery/ui/slider.mine899.js?ver=1.11.4"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/jquery-ui-touch-punch/jquery-ui-touch-punch.minc169.js?ver=3.2.6"/>'></script>
	<script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/accounting/accounting.minaffb.js?ver=0.4.2"/>'></script>
 --%>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_price_slider_params = {"currency_format_num_decimals":"0","currency_format_symbol":"₹","currency_format_decimal_sep":".","currency_format_thousand_sep":",","currency_format":"%s%v"};
/* ]]> */
</script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/frontend/price-slider.minc169.js?ver=3.2.6"/>'></script>

<script type="text/javascript">
var from_price;
var to_price;
var category;
var grade;
var sortby;

$("#filter_btn").click(function(){
	 /*  from_price=$("#from_price").html().substring(1).trim();
	  to_price=$("#to_price").html().substring(1).trim();
	  category = [];
	  grade = [];
	    $.each($("input[name='cat_name']:checked"), function(){            
	    	category.push($(this).val());
	    });
	    $.each($("input[name='grade_name']:checked"), function(){            
	    	grade.push($(this).val());
	    });	 */
	  getData();
	  $("#pre").show(); 
		$.ajax({
	  		url:"products-on-price-range",
	  		traditional: true,
	  		type: 'POST',
	  		data:{from:from_price,
				to: to_price,
	  			category:category,
	  				 grade: grade,
	  				sortby:sortby
	  		},
	  		 success:function(response)
	  		{
	               setTimeout(function () {
	                    $("#pre").hide();
					$("#product-list").html(response);	           		
	               }, 1000);
	  			
	  		} 
	  	});
	});

function fun(str){
	  /* var from_price=$("#from_price").html().substring(1).trim();
	  var to_price=$("#to_price").html().substring(1).trim();
	  
	var category = [];
	var grade = [];
    $.each($("input[name='cat_name']:checked"), function(){            
    	category.push($(this).val());
    });
    $.each($("input[name='grade_name']:checked"), function(){            
    	grade.push($(this).val());
    }); */
  /* /*   alert("category:  "+ category.join(","));
    alert("grade:  "+ grade.join(",")); */ 
   // alert("ggg "+ category);
    
    getData();
    $("#pre").show(); 
	$.ajax({
  		url:"products-on-grade-or-category", 
  		traditional: true,
  		type: 'POST',
  		data:{from:from_price,
				to: to_price,
  			category:category,
  				 grade: grade,
  				sortby:sortby
  				
  		},
  		 success:function(response)
  		{
               setTimeout(function () {
                    $("#pre").hide();
			$("#product-list").html(response);	           		
               }, 1000);
  			
  		} 
  	});
    
}
function getSortedProductList(sort){
	getData();
	 $("#pre").show();
	$.ajax({
  		url:"products-list-orderby", 
  		traditional: true,
  		type: 'POST',
  		data:{from:from_price,
				to: to_price,
  			category:category,
  				 grade: grade,
  				sortby:sortby
  		},
  		 success:function(response)
  		{
               setTimeout(function () {
                    $("#pre").hide();
			$("#product-list").html(response);	           		
               }, 1000);
  			
  		} 
  	});
	
}
function getData(){
	 sortby=$("#sorting-way option:selected").val();	
	 from_price=$("#from_price").html().substring(1).trim();
	  to_price=$("#to_price").html().substring(1).trim();
	  category = [];
	  grade = [];
	    $.each($("input[name='cat_name']:checked"), function(){            
	    	category.push($(this).val());
	    });
	    $.each($("input[name='grade_name']:checked"), function(){            
	    	grade.push($(this).val());
	    });	
}
</script>
<script type="text/javascript">
 function getListInSearchBox(input){
	if(input.length>=3){
		$.ajax({
	  		url:"getSearchBoxList", 
	  		traditional: true,
	  		type: 'POST',
	  		data:{input:input
	  		},
	  		 success:function(response)
	  		{
	               setTimeout(function () {
	                    
				$("#myUL").html(response);	           		
	               }, 1000);
	  			
	  		} 
	  	});		
		
	}	 
 }

</script>
<script type="text/javascript">
$(document).ready(function () {
    //Hover Menu in Header
   
    
    //Open Search    
    $('.form-search').click(function (event) {
        $(".instant-results").fadeIn('slow').css('height', 'auto');
        event.stopPropagation();
    });

    $('body').click(function () {
        $(".instant-results").fadeOut('500');
    });
});


</script>
<script type="text/javascript">
 function  ChooseContact(data) {
	 var val=$(data).find("span:first").html();
	 alert("Hello:::"+val);
	 var idvar=$(data).attr('id');
   document.getElementById("myInput").value = val;
   $("#id-pro").val(idvar);
}


</script>

</body>
</html>
	