<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 --%>    
 <%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html >
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href='<c:url value="/http://gmpg.org/xfn/11"/>'>


<link href="///maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="///maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="///cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/></script>
<link rel="stylesheet" href='<c:url value="/https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>' integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 <link rel="stylesheet" href="/https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<title>Caffena &#8211; Coffee Shops</title>
<link rel='dns-prefetch' href='<c:url value="/http://fonts.googleapis.com/"/>' />
<link rel='dns-prefetch' href='<c:url value="/http://s.w.org/"/>' />
<link rel="alternate" type="application/rss+xml" title="Despina &raquo; Feed" href='<c:url value="/feed/index.html"/>'/>
<link rel="alternate" type="application/rss+xml" title="Despina &raquo; Comments Feed" href='<c:url value="/comments/feed/index.html"/>' />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.8.8"}};
			!function(a,b,c){function d(a){var b,c,d,e,f=String.fromCharCode;if(!k||!k.fillText)return!1;switch(k.clearRect(0,0,j.width,j.height),k.textBaseline="top",k.font="600 32px Arial",a){case"flag":return k.fillText(f(55356,56826,55356,56819),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,56826,8203,55356,56819),0,0),c=j.toDataURL(),b!==c&&(k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447),0,0),c=j.toDataURL(),b!==c);case"emoji4":return k.fillText(f(55358,56794,8205,9794,65039),0,0),d=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55358,56794,8203,9794,65039),0,0),e=j.toDataURL(),d!==e}return!1}function e(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i,j=b.createElement("canvas"),k=j.getContext&&j.getContext("2d");for(i=Array("flag","emoji4"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		
		<style type="text/css">

.card{
padding: 0px 20px 20px 20px; 
height: 370px;
margin-top: auto;
margin-bottom: auto;
width: 400px;
background-color: rgba(0,0,0,0.8) !important;
}

.social_icon span{
font-size: 60px;
margin-left: 10px;
color: #FFC312;
}

.social_icon span:hover{
color: white;
cursor: pointer;
}

.card-header h3{
color: white;
}

.social_icon{
position: absolute;
right: 20px;
top: -45px;
}

.input-group-prepend span{
height: 30px;
width: 50px;
background-color: #FFC312;
color: black;
border:0 !important;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

.login_btn{
color: black;
background-color: #FFC312;
width: 100px;
}

.login_btn:hover{
color: black;
background-color: white;
}

.links{
color: white;
}

.links a{
margin-left: 4px;
}
		
		</style>
		
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
#head-transp{

background-color:transparent;
}

.header-part{
  background-color: transparent !important;
}

.service-list-front{
	padding: 0px 0px 0px 0px !important;
	background: none !important;
}
</style>
<link rel='stylesheet' id='contact-form-7-css'  href='<c:url value="/wp-content/plugins/contact-form-7/includes/css/stylesce52.css?ver=5.0.2"/>' type='text/css' media='all' />
<link rel='stylesheet' id='menu-image-css'    href='<c:url value="/wp-content/plugins/menu-image/menu-image4963.css?ver=1.1"/>'  type='text/css' media='all' />
<link rel='stylesheet' id='rs-plugin-settings-css'  href='<c:url value="/wp-content/plugins/revslider/public/assets/css/settings9009.css?ver=5.4.5.1"/>' type='text/css' media='all' />
<style id='rs-plugin-settings-inline-css' type='text/css'>
#rs-demo-id {}
</style>

<link rel='stylesheet' id='woocommerce-layout-css'  href='<c:url value="/wp-content/plugins/woocommerce/assets/css/woocommerce-layoutc169.css?ver=3.2.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='woocommerce-smallscreen-css'  href='<c:url value="/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreenc169.css?ver=3.2.6"/>' type='text/css' media='only screen and (max-width: 768px)' />
<link rel='stylesheet' id='woocommerce-general-css'  href='<c:url value="/wp-content/plugins/woocommerce/assets/css/woocommercec169.css?ver=3.2.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='despina-fonts-css'  href='<c:url value="/https://fonts.googleapis.com/css?family=Source+Sans+Pro%3A400%2C600%2C700%7CQuicksand%3A300%2C400%2C500%2C700%7CPacifico%3A300%2C400%2C500%2C700&amp;subset&amp;ver=4.8.8"/>' type='text/css' media='all' />
<link rel='stylesheet' id='font-awesome-css'  href='<c:url value="/wp-content/plugins/js_composer/assets/lib/bower/font-awesome/css/font-awesome.min5fba.css?ver=5.2"/>' type='text/css' media='all' />
<link rel='stylesheet' id='fontello-css'  href='<c:url value="/wp-content/themes/despina/css/icon-plugin/fontello6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='bootstrap-css'  href='<c:url value="/wp-content/themes/despina/css/bootstrap-plugin/bootstrap6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='bootstrap-slider-css'  href='<c:url value="/wp-content/themes/despina/css/bootstrap-plugin/bootstrap-slider6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='animation-css'  href='<c:url value="/wp-content/themes/despina/css/animation/animate.min6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='owl-carousel-css'  href='<c:url value="/wp-content/themes/despina/css/owl-carousel/owl.carousel6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='owl-carousel-default-css'  href='<c:url value="/wp-content/themes/despina/css/owl-carousel/owl.theme.default6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='simple-lightbox-css'  href='<c:url value="/wp-content/themes/despina/css/light-box/simplelightbox6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='magnific-popup-css'  href='<c:url value="/wp-content/themes/despina/css/light-box/magnific-popup6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='scroll-bar-css'  href='<c:url value="/wp-content/themes/despina/css/scroll-bar/jquery.mCustomScrollbar6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='form-field-css'  href='<c:url value="/wp-content/themes/despina/css/form-field/jquery.formstyler6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='slick-slider-css'  href='<c:url value="/wp-content/themes/despina/css/Slick-slider/slick-theme6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='master-style-css'  href='<c:url value="/wp-content/themes/despina/css/despina-theme6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='despina-woocommerce-css'  href='<c:url value="/wp-content/themes/despina/css/woocommerce/despina-woocommerce6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='despina-responsive-style-css'  href='<c:url value="/wp-content/themes/despina/css/despina-responsive6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='despina-custom-css'  href='<c:url value="/wp-content/themes/despina/css/despina-custom6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='despina-style-css'  href='<c:url value="/wp-content/themes/despina/style6a9f.css?ver=1.3.6"/>' type='text/css' media='all' />
<link rel='stylesheet' id='despina-rtl-css'  href='<c:url value="/wp-content/themes/despina/css/despina-rtl-style9537.css?ver=4.8.8"/>' type='text/css' media='all' />
<link rel='stylesheet' id='js_composer_front-css'  href='<c:url value="/wp-content/plugins/js_composer/assets/css/js_composer.min5fba.css?ver=5.2"/>' type='text/css' media='all' />


<script type='text/javascript' src='<c:url value="/wp-includes/js/jquery/jqueryb8ff.js?ver=1.12.4"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-includes/js/jquery/jquery-migrate.min330a.js?ver=1.4.1"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.tools.min9009.js?ver=5.4.5.1"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min9009.js?ver=5.4.5.1"/>'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_add_to_cart_params = {"ajax_url":"\/theme\/despina\/despina\/wp-admin\/admin-ajax.php","wc_ajax_url":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/?wc-ajax=%%endpoint%%","i18n_view_cart":"View cart","cart_url":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/cart\/","is_cart":"","cart_redirect_after_add":"no"};
/* ]]> */
</script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.minc169.js?ver=3.2.6"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/js_composer/assets/js/vendors/woocommerce-add-to-cart5fba.js?ver=5.2"/>'></script>
<link rel='https://api.w.org/' href='<c:url value="/wp-json/index.html"/>' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href='<c:url value="/xmlrpc0db0.php?rsd"/>' />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href='<c:url value="/wp-includes/wlwmanifest.xml"/>' /> 
<meta name="generator" content="WordPress 4.8.8" />
<meta name="generator" content="WooCommerce 3.2.6" />
<link rel="canonical" href='<c:url value="/index.html"/>' />
<link rel='shortlink' href='<c:url value="/index.html"/>' />
<link rel="alternate" type="application/json+oembed" href='<c:url value="/wp-json/oembed/1.0/embed2803.json?url=http%3A%2F%2Fwww.hire-wordpress-developers.com%2Ftheme%2Fdespina%2Fdespina%2F"/>' />
<link rel="alternate" type="text/xml+oembed" href='<c:url value="/wp-json/oembed/1.0/embed2c4b?url=http%3A%2F%2Fwww.hire-wordpress-developers.com%2Ftheme%2Fdespina%2Fdespina%2F&amp;format=xml"/>' />
<!-- Favicon --><link rel="shortcut icon" href='<c:url value="/wp-content/themes/despina/images/favicons/favicon.png"/>'><!-- Apple iPhone Icon --><link rel="apple-touch-icon-precomposed" href="wp-content/themes/despina/images/favicons/favicon.png"><!-- Apple iPhone Retina Icon --><link rel="apple-touch-icon-precomposed" href="wp-content/themes/despina/images/favicons/favicon.png"><!-- Apple iPhone Icon --><link rel="apple-touch-icon-precomposed" href="wp-content/themes/despina/images/favicons/favicon.png">	<noscript><style>.woocommerce-product-gallery{ opacity: 1 !important; }</style></noscript>
	<meta name="generator" content="Powered by Visual Composer - drag and drop page builder for WordPress."/>
<!--[if lte IE 9]><link rel="stylesheet" type="text/css" href='<c:url value="http://www.hire-wordpress-developers.com/theme/despina/despina/wp-content/plugins/js_composer/assets/css/vc_lte_ie9.min.css"/>'> media="screen"><![endif]--><meta name="generator" content="Powered by Slider Revolution 5.4.5.1 - responsive, Mobile-Friendly Slider Plugin for WordPress with comfortable drag and drop interface." />
<script type="text/javascript">function setREVStartSize(e){
				try{ var i=jQuery(window).width(),t=9999,r=0,n=0,l=0,f=0,s=0,h=0;					
					if(e.responsiveLevels&&(jQuery.each(e.responsiveLevels,function(e,f){f>i&&(t=r=f,l=e),i>f&&f>r&&(r=f,n=e)}),t>r&&(l=n)),f=e.gridheight[l]||e.gridheight[0]||e.gridheight,s=e.gridwidth[l]||e.gridwidth[0]||e.gridwidth,h=i/s,h=h>1?1:h,f=Math.round(h*f),"fullscreen"==e.sliderLayout){var u=(e.c.width(),jQuery(window).height());if(void 0!=e.fullScreenOffsetContainer){var c=e.fullScreenOffsetContainer.split(",");if (c) jQuery.each(c,function(e,i){u=jQuery(i).length>0?u-jQuery(i).outerHeight(!0):u}),e.fullScreenOffset.split("%").length>1&&void 0!=e.fullScreenOffset&&e.fullScreenOffset.length>0?u-=jQuery(window).height()*parseInt(e.fullScreenOffset,0)/100:void 0!=e.fullScreenOffset&&e.fullScreenOffset.length>0&&(u-=parseInt(e.fullScreenOffset,0))}f=u}else void 0!=e.minHeight&&f<e.minHeight&&(f=e.minHeight);e.c.closest(".rev_slider_wrapper").css({height:f})					
				}catch(d){console.log("Failure at Presize of Slider:"+d)}
			};</script>
<style type="text/css" data-type="vc_shortcodes-custom-css">.vc_custom_1498129118008{padding-top: 45px !important;padding-bottom: 50px !important;}.vc_custom_1498129167868{padding-top: 70px !important;padding-bottom: 70px !important;}.vc_custom_1499075623873{padding-top: 70px !important;}.vc_custom_1498129225533{padding-top: 75px !important;padding-bottom: 80px !important;}.vc_custom_1498191533251{padding-top: 70px !important;padding-bottom: 80px !important;background-color: #eae7de !important;}.vc_custom_1498129382425{padding-top: 70px !important;padding-bottom: 70px !important;}.vc_custom_1498129411104{padding-top: 70px !important;padding-bottom: 40px !important;}.vc_custom_1498129418764{padding-top: 40px !important;padding-bottom: 80px !important;}.vc_custom_1495103493003{padding-bottom: 40px !important;}.vc_custom_1496223685895{padding-bottom: 35px !important;}.vc_custom_1495176050425{padding-bottom: 30px !important;}.vc_custom_1495190972172{padding-bottom: 35px !important;}.vc_custom_1496378158119{padding-bottom: 35px !important;}</style><noscript><style type="text/css"> .wpb_animate_when_almost_visible { opacity: 1; }</style></noscript>
<style>
body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
  background-image: url("wp-content/uploads/2017/05/wholesalebanner.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.bg1 {
  /* The image used */
  background-image: url("wp-content/uploads/2017/05/bannernew.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  }
  .bg1:hover {
  transform: scale(1.2);
  }
  .bg2 {
  /* The image used */
  background-image: url("wp-content/uploads/2017/05/blackwall.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  }

#video-background {
/*  making the video fullscreen  */
  position: fixed;
  right: 0; 
  bottom: 0;
  min-width: 100%; 
  min-height: 100%;
  width: auto; 
  height: auto;
  z-index: -100;
  background:rgba(0, 0, 0, 0.8);
}

.dad {
    height: 100%;
    width: 100%;
    overflow: hidden;
    position: relative;
    padding: 0;
}

.dad > .son-1 {
    position: absolute;
    height: 100%;
    width: 100%;
    -moz-transition: all 5s;
    -webkit-transition: all 5s;
    transition: all 5s;
    -moz-transform: scale(1,1);
    -webkit-transform: scale(1,1);
    transform: scale(1,1);
    background-image: url("wp-content/uploads/2017/05/bannernew.jpg");
    -moz-background-size: cover;
    -webkit-background-size: cover;
    background-size: cover;
    z-index: -1;
}

.dad:hover > .son-1 {
    -moz-transform: scale(2,2);
    -webkit-transform: scale(2,2);
    transform: scale(2,2); 
    opacity:0.4;   
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
   float:left!important;
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
    border-color: #10b3c6;}.cart-overlay-wrap {
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
    border-color: #10b3c6;}

.service-list-front{
	padding: 0px 0px 0px 0px !important;
}
.container-fluid{padding-left: 0px !important;
				padding-right: 0px !important;
}

</style>
</head>
<body class="home page-template page-template-templates page-template-full-width-template page-template-templatesfull-width-template-php page page-id-32 wpb-js-composer js-comp-ver-5.2 vc_responsive">
<div id="pre-loader" style="background-color:black">
    <div class="loader-holder">
        <div class="frame">            <img src='<c:url value="/https://media.giphy.com/media/sB5M22pB6NSzS/giphy.gif"/>' alt="" />
        </div>
    </div>
</div>	
	<!-- Start Wrapper Part -->
    <div class="wrapper">
    
    

    			<main>
    			
            <div class="main-part">
            	<section class="default-section-full-width">
            	<div class="container-fluid">
				<video autoplay loop id="video-background" muted plays-inline>
  <source src='<c:url value="/wp-content/uploads/2017/05/newVideo.mp4"/>' type="video/mp4">
</video>
<div class="row">
	<jsp:include page="customerheader.jsp"></jsp:include>
	<br>
</div>
<div class="container">
	<div class="row row-fluid vc_custom_1496467059071">
		<div class="col-sm-12">
			<div class="vc_column-inner ">
				<div class="wpb_wrapper">
					<div class="wpb_text_column wpb_content_element ">
						<br> <br> <br>
						<div class="wpb_wrapper">
							<h2 class="text-primary" style="text-align: center; color: #654321 !important; font-family: Bahnschrift; font-size: 375%; font-weight: bold;">Caffena Coffee</h2>
							<h6 style="text-align: center;"> <font color="white">Experience the best coffee in the city.</font> </h6>
							<br> <br>
							<div class="row">
								<div style="text-align: center; margin-left: 40%;">
									<a align="middle" href='<c:url value="/${USERTYPE}/product-shop"/>' class="wpcf7-form-control wpcf7-submit submit-btn send_message">Shop Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br><br><br><br><br><br><br><br><br>
 </div>
<div class="vc_row-full-width vc_clearfix"></div>
	<div class="container-fluid" style="background-image: url(wp-content/uploads/2017/05/indexBackground.jpg)">
		<div class="container">
			<div class="row row-fluid vc_custom_1499075623873">
				<div class="col-sm-12">
					<div class="vc_column-inner ">
						<div class="wpb_wrapper">
							<div class="wpb_text_column wpb_content_element  vc_custom_1496223685895">
								<div class="wpb_wrapper">
									<h2 class="text-primary" style="text-align: center; color: #e4b95b !important">Our Coffee</h2>
								</div>
							</div>
							<div id="despina-15026454875c614efdbd860">
								<div class="product-wrapper">
									<div class="owl-carousel owl-theme" data-items="4" data-tablet="3" data-mobile="2" data-nav="0" data-dots="1" data-autoplay="1" data-speed="1400" data-autotime="6000">
										<c:forEach var="product" items="${PRODUCT}">
											<div class="item product-list-mvb-1 post-418 product type-product status-publish has-post-thumbnail product_cat-employment product_cat-franchise first instock shipping-taxable purchasable product-type-simple">
												<div class="vc_column-inner ">
													<div class="wpb_wrapper">
														<div class="service-sk">
															<div id="despina-15194975675c53cca336d6d" class="service-list">
																<div class="service-list-front">
																	<div class="product-img">
																		<c:set var="imagename" value="${product.imageName}"></c:set>
              										                    <c:set var = "string2" value = "${fn:split(imagename, ',')}" />
																		<a href="${USERTYPE}/shopSinglePage?id=${product.id}"> <img style="min-height: 243px;min-width: 255px;max-width: 255px;max-height: 243px;  border-radius:0px !important;" src="getImagebyName?imageName=${string2[0]}" class="attachment-despina-shop-slider size-despina-shop-slider wp-post-image"  alt="product-6" title="product-6" /></a>
																	</div>
																</div>
																<a href="shopSinglePage?id=${product.id}">
																<div class="service-list-back Banner-Bg" data-background="#" style="background-color: rgb(183, 145, 107) !important;border-radius:0px !important;">
																	<div class="service-back-in"></div>
																	<h3></h3>
																	<p>${product.grade}</p>
																	<p style="color: black;"><span><span class="woocommerce-Price-amount amount" style="color: black; "><span class="woocommerce-Price-currencySymbol" style="color: black;">&#8377;</span><fmt:formatNumber type = "number"  value = "${product.product_price}"/></span></span></p>
																	<br> 
																	<p style="width:65%; margin-left:19%; border: 1px solid white;border-radius: 22px;padding: 10px;color: white;opacity: 1px;z-index: 999999; "><i class="fa fa-shopping-bag" aria-hidden="true"></i> Add to cart</p>
																</div></a>
															</div>
														</div>
													</div>
												</div>
												<h5> <a href="${USERTYPE}/shopSinglePage?id=${product.id}">${product.product_name}</a> </h5>
												<h6></h6>
											</div>
										</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="vc_row-full-width vc_clearfix"></div>
					<div class="container">
						<div class="row row-fluid vc_custom_1499075623873">
							<div class="col-sm-12">
								<div class="vc_column-inner ">
									<div class="wpb_wrapper">
										<div class="wpb_text_column wpb_content_element  vc_custom_1496223685895">
											<div class="wpb_wrapper">
												<h2 class="text-primary" style="text-align: center; color: #e4b95b !important">Our Equipments</h2>
											</div>
										</div>
										<div id="despina-15026454875c614efdbd860">
											<div class="product-wrapper">
												<div class="owl-carousel owl-theme" data-items="4" data-tablet="3" data-mobile="2" data-nav="0" data-dots="1" data-autoplay="1" data-speed="1400" data-autotime="6000">
													<c:forEach var="product" items="${EQUIPMENTS}">
														<div class="item product-list-mvb-1 post-418 product type-product status-publish has-post-thumbnail product_cat-employment product_cat-franchise first instock shipping-taxable purchasable product-type-simple">
														<div class="vc_column-inner ">
															<div class="wpb_wrapper">
																<div class="service-sk">
																	<div id="despina-15194975675c53cca336d6d" class="service-list">
																		<div class="service-list-front">
																			<div class="product-img">
																				<c:set var="imagename" value="${product.imageName}"></c:set>
              										                            <c:set var = "string2" value = "${fn:split(imagename, ',')}" />
																				<a href="${USERTYPE}/shopSinglePage?id=${product.id}"><img style="min-height: 243px;min-width: 255px;max-width: 255px;max-height: 243px; border-radius:0px !important;" src="getImagebyName?imageName=${string2[0]}" class="attachment-despina-shop-slider size-despina-shop-slider wp-post-image"  alt="product-6" title="product-6" /></a>
																			</div>
																		</div>
																		<a href="shopSinglePage?id=${product.id}">
																		<div class="service-list-back Banner-Bg" style="background-color: rgb(183, 145, 107) !important;border-radius:0px !important;">
																			<div class="service-back-in"></div>
																			<h3></h3>
																			<p>${product.grade}</p>
																			<p style="color: black;"><span><span class="woocommerce-Price-amount amount" style="color: black;"><span class="woocommerce-Price-currencySymbol" style="color: black;">&#8377;</span><fmt:formatNumber type = "number"  value ="${product.product_price}"/></span></span></p>
																				<br> 
																			<p style="width:65%; margin-left:19%; border: 1px solid white;border-radius: 22px;padding: 10px;color: white;opacity: 1px;z-index: 999999; "><i class="fa fa-shopping-bag" aria-hidden="true"></i> Add to cart</p>
																		</div>
																		</a>
																	</div>
																</div>
															</div>
														</div>
														<h5> <a href="${USERTYPE}/shopSinglePage?id=${product.id}">${product.product_name}</a> </h5>
														<h5>
													</h5>
												</div>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="dad">			
				<div class="son-1"></div>
  			<div class="container">
				<div class="row row-fluid vc_custom_1498129225533">
					<div class="col-sm-12"><div class="vc_column-inner ">
						<div class="wpb_wrapper">
							<div id="despina-1026">
								<div class="row">
                					<div class="col-md-6 col-sm-6 col-xs-12">
                    					<div class="product-single-left bg-skin text-white">
                        					<div class="product-single-detail">
                            					<h2>TRY THE BEST COFFEE <span>IN THE CITY</span></h2>
                            <p>Alienum phaedrum torquatos nec eu, vis detraxit periculis ex, nihil expetendis in mei. Mei an at dictum lacu pericula uni euripidis.</p>
                            
                            <div class="item-product"><img src='<c:url value="/wp-content/uploads/2017/05/img10.png"/>' alt="Banner Image" class="animated"></div><a href="tea/index.html"  rel=''  class="button-default button-default-white margin-top-30">Explore Full Menu</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    	<div class="owl-carousel owl-theme" data-items="1" data-tablet="1" data-mobile="1" data-nav="false" data-dots="1" data-autoplay="1" data-speed="2000" data-autotime="4000">
                    		
                <div class="item dp-animation">
                	<div class="product-single-right">
                		<img src='<c:url value="/wp-content/uploads/2017/05/img9.png"/>' alt="Gallery" class="animated">
                	</div>
                </div>
                <div class="item dp-animation">
                	<div class="product-single-right">
                		<img src='<c:url value="/wp-content/uploads/2017/06/about-2.jpg"/>' alt="Gallery" class="animated">
                	</div>
                </div>
                <div class="item dp-animation">
                	<div class="product-single-right">
                		<img src='<c:url value="/wp-content/uploads/2017/06/about-3.jpg"/>' alt="Gallery" class="animated">
                	</div>
                </div>
                    	</div>
                </div>
                
                
            </div>
            	        
	    </div></div></div></div></div>
	    
	    </div>
	    
	    </div>
	    
                            
                            <div class="vc_row-full-width vc_clearfix"></div>
</section>				
			</div>
		</main>			
		<%-- <jsp:include page="footer.jsp"></jsp:include> --%>
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
	<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/despina-app9537.js?ver=4.8.8"/>'></script>
<%-- <script type='text/javascript' src='<c:url value="/wp-content/plugins/contact-form-7/includes/js/scriptsce52.js?ver=5.0.2"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min44fd.js?ver=2.70"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min6b25.js?ver=2.1.4"/>'></script>
 --%><!-- <script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/theme\/despina\/despina\/wp-admin\/admin-ajax.php","wc_ajax_url":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script> -->
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
<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/despina-script9537.js?ver=4.8.8"/>'></script>
 --%>
<%-- <script type='text/javascript'>
/* <![CDATA[ */
var DESPINA_ajaxcalls_vars = {"admin_url":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/wp-admin\/","retina_logo":"http:\/\/www.hire-wordpress-developers.com\/theme\/despina\/despina\/wp-content\/themes\/despina\/images\/logo\/logo.png","retina_logo_width":"169","retina_logo_height":"77"};
/* ]]> */
</script>
<script type='text/javascript' src='<c:url value="/wp-content/themes/despina/js/despina_ajax_calls6a9f.js?ver=1.3.6"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-includes/js/wp-embed.min9537.js?ver=4.8.8"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min5fba.js?ver=5.2"/>'></script>
<script type='text/javascript' src='<c:url value="/wp-content/plugins/js_composer/assets/lib/bower/skrollr/dist/skrollr.min5fba.js?ver=5.2"/>'></script>
 --%>
</body>
</html>