<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html >
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11"/>'>

<title>Caffena &#8211; Coffee Shops</title>
<link rel='dns-prefetch' href='<c:url value="/http://fonts.googleapis.com/"/>' />
<link rel='dns-prefetch' href='<c:url value="/http://s.w.org/"/>' />
<link rel="alternate" type="application/rss+xml" title="Despina &raquo; Feed" href='<c:url value="/feed/index.html"/>' />
<link rel="alternate" type="application/rss+xml" title="Despina &raquo; Comments Feed" href='<c:url value="/comments/feed/index.html"/>' />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.8.8"}};
			!function(a,b,c){function d(a){var b,c,d,e,f=String.fromCharCode;if(!k||!k.fillText)return!1;switch(k.clearRect(0,0,j.width,j.height),k.textBaseline="top",k.font="600 32px Arial",a){case"flag":return k.fillText(f(55356,56826,55356,56819),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,56826,8203,55356,56819),0,0),c=j.toDataURL(),b!==c&&(k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447),0,0),c=j.toDataURL(),b!==c);case"emoji4":return k.fillText(f(55358,56794,8205,9794,65039),0,0),d=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55358,56794,8203,9794,65039),0,0),e=j.toDataURL(),d!==e}return!1}function e(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i,j=b.createElement("canvas"),k=j.getContext&&j.getContext("2d");for(i=Array("flag","emoji4"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<style type="text/css">
img.wp-smiley,
img.emoji {
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
</style>

<style type="text/css" data-type="vc_shortcodes-custom-css">.vc_custom_1498129118008{padding-top: 45px !important;padding-bottom: 50px !important;}.vc_custom_1498129167868{padding-top: 70px !important;padding-bottom: 70px !important;}.vc_custom_1499075623873{padding-top: 70px !important;}.vc_custom_1498129225533{padding-top: 75px !important;padding-bottom: 80px !important;}.vc_custom_1498191533251{padding-top: 70px !important;padding-bottom: 80px !important;background-color: #eae7de !important;}.vc_custom_1498129382425{padding-top: 70px !important;padding-bottom: 70px !important;}.vc_custom_1498129411104{padding-top: 70px !important;padding-bottom: 40px !important;}.vc_custom_1498129418764{padding-top: 40px !important;padding-bottom: 80px !important;}.vc_custom_1495103493003{padding-bottom: 40px !important;}.vc_custom_1496223685895{padding-bottom: 35px !important;}.vc_custom_1495176050425{padding-bottom: 30px !important;}.vc_custom_1495190972172{padding-bottom: 35px !important;}.vc_custom_1496378158119{padding-bottom: 35px !important;}</style><noscript><style type="text/css"> .wpb_animate_when_almost_visible { opacity: 1; }</style></noscript>

</head>
<body class="page-template-default page page-id-399 woocommerce-cart woocommerce-page wpb-js-composer js-comp-ver-5.2 vc_responsive">
<div class="wrapper">
<c:if test="${USER == null }">
			<jsp:include page="header.jsp"></jsp:include>
		</c:if>
		<c:if test="${USER != null }">
			<jsp:include page="customerheader.jsp"></jsp:include>
		</c:if>
<main>
            <div class="main-part">
            	<div class="container"></div>
<div class="breadcrumb-nav">
    <div class="container">
        <div class="breadcrumb-nav-inner"><ul><li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a itemprop="url" href="../index.html">Home</a></li><li class="active"><span>Cart</span></li></ul>                <label class="now page-title">Cart                </label>        </div>
    </div>
</div>
<div class="container">
<section class="default-section"><div class="woocommerce">	</div>
</div>
<div class="woocommerce">
	<section class="default-section shop-cart bg-grey">
	    <div class="container">
	    	<p>&nbsp;</p>
	        <div class="checkout-wrap wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
	            <ul class="checkout-bar">
	                <li class="active">Shopping Cart</li>
	                <li>Checkout</li>
	                <li>Order Complete</li>
	            </ul>
	        </div>
	        <div class="shop-cart-list wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
	        	<form class="woocommerce-cart-form" action="#" method="post">
		        			        	<table class="shop-cart-table">
		                <thead>
		                    <tr>
		                        <th class="product-name">Product</th>
								<th class="product-price">Price</th>
								<th class="product-quantity">Quantity</th>
								<th class="product-subtotal">Total</th>
								<th class="product-remove">&nbsp;</th>
		                    </tr>
		                </thead>
		                <tbody>			
		                <c:set var="sum" value="${0}"/>
		                <c:forEach var="orderlist" items="${ORDER}">
		                						<tr class="woocommerce-cart-form__cart-item cart_item">
										<th class="product-name">Product</th>
										<td>
                                            <div class="product-cart"><a href="#"><img width="98" height="98" src="wp-content/uploads/2017/05/product-2-98x98.png" class="attachment-despina-gallery-list size-despina-gallery-list wp-post-image" alt="" srcset="//www.hire-wordpress-developers.com/theme/despina/despina/wp-content/uploads/2017/05/product-2-98x98.png 98w, //www.hire-wordpress-developers.com/theme/despina/despina/wp-content/uploads/2017/05/product-2-150x150.png 150w, //www.hire-wordpress-developers.com/theme/despina/despina/wp-content/uploads/2017/05/product-2-180x180.png 180w, //www.hire-wordpress-developers.com/theme/despina/despina/wp-content/uploads/2017/05/product-2-300x300.png 300w" sizes="(max-width: 98px) 100vw, 98px" /></a>                                            </div>
                                            <div class="product-cart-title">
                                                <span>${orderlist.product_id.product_name}</span>
                                            </div>
                                        </td>
                                        <th class="product-price">Price</th>
                                        <td>
                                            <strong><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#8377;</span>${orderlist.product_id.product_price}</span></strong>                                            
                                        </td>
                                        <th class="product-quantity">Quantity</th>
                                        <td class="cart-quantity">
                                        		<div class="quantity">
		<label class="screen-reader-text" for="quantity_5c53d09679cdb">Quantity</label>
		                                    <strong><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span>${orderlist.quantity}</span></strong>                                           
	</div>
	                                            
                                        </td>
                                        <th class="product-subtotal">Total</th>
                                        <td>
             <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#8377;</span>${orderlist.product_id.product_price * orderlist.quantity}</span>
                                          <c:set value="${sum + orderlist.product_id.product_price * orderlist.quantity}" var="sum"/>
                                          </td>
                                        <td class="product-remove">
											<a href='<c:url value="/${USERTYPE}/delete_order?id=${orderlist.order_id}"/>' class="remove" aria-label="Remove this item" data-product_id="416" data-product_sku="">&times;</a>										</td>
									</tr>									<tr class="woocommerce-cart-form__cart-item cart_item">
					  </c:forEach></tbody>
		            </table>
		           <!--  <div class="product-cart-detail">			            	<div class="coupon">
		                        <div class="cupon-part">
		                            <input type="text" name="coupon_code" class="input-text" id="coupon_code" value="" placeholder="Coupon code"/>
		                        </div>		                        
		                        <input type="submit" class="btn-medium btn-dark-coffee" name="apply_coupon" value="Apply coupon" />
		                        		                        <input type="submit" class="btn-medium btn-skin pull-right" name="update_cart" value="Update cart" />
																<input type="hidden" id="_wpnonce" name="_wpnonce" value="bf7aea7f18" /><input type="hidden" name="_wp_http_referer" value="/theme/despina/despina/cart/?remove_item=d1f255a373a3cef72e03aa9d980c7eca&amp;_wpnonce=a71c0bd2c2" />		                  
								  </div>
							</div> -->
                    		        </form>				
			</div>
			<div class="cart-collaterals">
				<div class="cart_totals ">

	
	<div class="cart-total wow fadeInDown" data-wow-duration="100ms" data-wow-delay="100ms">
        <div class="cart-total-title">
            <h5>CART TOTALS</h5>
        </div>
        <div class="product-cart-total">
            <small>Total products</small>
            <span><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol" style="float: left;">&#8377;</span>${sum}</span></span>
        </div>
        
		
		
        
		
		<div class="grand-total">
            <h5>TOTAL <span><strong><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol" style="float: left;">&#8377;</span>${sum}</span></strong> </span></h5>
        </div>       

		
		
<div class="proceed-check">
    <a href='<c:url value="/${USERTYPE}/check_out"/>' class="btn-primary-gold btn-medium">PROCEED TO CHECKOUT</a>
</div>
	</div>

	
</div>
			</div>
		</div>
	</section>
</div>
<div class="container">

</div>
</section>				</div>
			</div>
		</main>	


	        </div>
	<!-- End Wrapper Part -->

	<!-- Back To Top Arrow -->
		<a href="#" class="top-arrow" style="background:rgba(0, 0, 0, 0) url('wp-content/themes/despina/images/arrow-top.png') no-repeat scroll 0 0;"></a>			<script type="text/javascript">
				function revslider_showDoubleJqueryError(sliderID) {
					var errorMessage = "Revolution Slider Error: You have some jquery.js library include that comes after the revolution files js include.";
					errorMessage += "<br> This includes make eliminates the revolution slider libraries, and make it not work.";
					errorMessage += "<br><br> To fix it you can:<br>&nbsp;&nbsp;&nbsp; 1. In the Slider Settings -> Troubleshooting set option:  <strong><b>Put JS Includes To Body</b></strong> option to true.";
					errorMessage += "<br>&nbsp;&nbsp;&nbsp; 2. Find the double jquery.js include and remove it.";
					errorMessage = "<span style='font-size:16px;color:#BC0C06;'>" + errorMessage + "</span>";
						jQuery(sliderID).show().html(errorMessage);
				}
			</script>
			<script type='text/javascript'>
/* <![CDATA[ */
var wpcf7 = {"apiSettings":{"root":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/wp-json\/contact-form-7\/v1","namespace":"contact-form-7\/v1"},"recaptcha":{"messages":{"empty":"Please verify that you are not a robot."}}};
/* ]]> */
</script>
<%-- <script type='text/javascript' src='<c:url value="/wp-content/plugins/contact-form-7/includes/js/scriptsce52.js?ver=5.0.2"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min44fd.js?ver=2.70"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min6b25.js?ver=2.1.4"/>'></script> --%>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/theme\/despina\/despina\/wp-admin\/admin-ajax.php","wc_ajax_url":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.minc169.js?ver=3.2.6"/>'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/theme\/despina\/despina\/wp-admin\/admin-ajax.php","wc_ajax_url":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments_2b6be2b6314ef7a84a5cdf592b0a6ec2"};
/* ]]> */
</script>
<%-- <script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.minc169.js?ver=3.2.6"/>'></script>
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

<%-- <script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/despina_ajax_calls6a9f.js?ver=1.3.6"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-includes/js/wp-embed.min9537.js?ver=4.8.8"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min5fba.js?ver=5.2"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/js_composer/assets/lib/bower/skrollr/dist/skrollr.min5fba.js?ver=5.2"/>'></script> --%>

</body>
</html>