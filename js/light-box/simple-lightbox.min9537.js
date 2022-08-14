/*
	By Andre Rinas, www.andreknieriem.de
	Available for use under the MIT License
*/
!function(e,t,n){"use strict";e.fn.simpleLightbox=function(a){var a=e.extend({overlay:!0,spinner:!0,nav:!0,navText:["&larr;","&rarr;"],captions:!0,captionSelector:"img",captionType:"attr",captionsData:"title",close:!0,closeText:"×",showCounter:!0,fileExt:"png|jpg|jpeg|gif",animationSpeed:250,preloading:!0,enableKeyboard:!0,loop:!0,docClose:!0,swipeTolerance:50,className:"simple-lightbox",widthRatio:.8,heightRatio:.9},a),i=(t.navigator.pointerEnabled||t.navigator.msPointerEnabled,0),o=e(),s=function(){var e=n.body||n.documentElement,e=e.style;return""==e.WebkitTransition?"-webkit-":""==e.MozTransition?"-moz-":""==e.OTransition?"-o-":""==e.transition?"":!1},l=!1,r=this.selector,s=s(),p=s!==!1?!0:!1,c="simplelb",d=e("<div>").addClass("sl-overlay"),f=e("<button>").addClass("sl-close").html(a.closeText),u=e("<div>").addClass("sl-spinner").html("<div></div>"),g=e("<div>").addClass("sl-navigation").html('<button class="sl-prev">'+a.navText[0]+'</button><button class="sl-next">'+a.navText[1]+"</button>"),h=e("<div>").addClass("sl-counter").html('<span class="sl-current"></span>/<span class="sl-total"></span>'),m=!1,v=0,x=e(),w=e("<div>").addClass("sl-caption"),b=e("<div>").addClass("sl-wrapper").addClass(a.className).html('<div class="sl-image"></div>'),y=function(t){return a.fileExt?"a"==e(t).prop("tagName").toLowerCase()&&new RegExp(".("+a.fileExt+")$","i").test(e(t).attr("href")):!0},T=function(){x=e(".sl-image"),a.close&&f.appendTo(b),a.showCounter&&e(r).length>1&&(h.appendTo(b),h.find(".sl-total").text(e(r).length)),a.nav&&g.appendTo(b),a.spinner&&u.appendTo(b)},C=function(t){t.trigger(e.Event("show.simplelightbox")),b.appendTo("body"),a.overlay&&d.appendTo(e("body")),m=!0,v=e(r).index(t),o=e("<img/>").hide().attr("src",t.attr("href")),e(".sl-image").html(""),o.appendTo(e(".sl-image")),d.fadeIn("fast"),e(".sl-close").fadeIn("fast"),u.show(),g.fadeIn("fast"),e(".sl-wrapper .sl-counter .sl-current").text(v+1),h.fadeIn("fast"),E(),a.preloading&&I(),setTimeout(function(){t.trigger(e.Event("shown.simplelightbox"))},a.animationSpeed)},E=function(n){if(o.length){var i=new Image,s=e(t).width()*a.widthRatio,c=e(t).height()*a.heightRatio;i.src=o.attr("src"),i.onload=function(){var d=i.width,f=i.height;if(d>s||f>c){var g=d/f>s/c?d/s:f/c;d/=g,f/=g}e(".sl-image").css({top:(e(t).height()-f)/2+"px",left:(e(t).width()-d)/2+"px"}),u.hide(),o.css({width:d+"px",height:f+"px"}).fadeIn("fast"),l=!0;var h="self"==a.captionSelector?e(r).eq(v):e(r).eq(v).find(a.captionSelector);if("data"==a.captionType)var x=h.data(a.captionsData);else if("text"==a.captionType)var x=h.html();else var x=h.prop(a.captionsData);if(1==n||-1==n){var w={opacity:1};p?(k(0,100*n+"px"),setTimeout(function(){k(a.animationSpeed/1e3,"0px"),50})):w.left=parseInt(e(".sl-image").css("left"))+100*n+"px",e(".sl-image").animate(w,a.animationSpeed,function(){m=!1,S(x)})}else m=!1,S(x)}}},S=function(t){""!=t&&"undefined"!=typeof t&&a.captions&&w.html(t).hide().appendTo(e(".sl-image")).fadeIn("fast")},k=function(t,n){var a={};a[s+"transform"]="translateX("+n+")",a[s+"transition"]=s+"transform "+t+"s linear",e(".sl-image").css(a)},I=function(){var t=0>v+1?e(r).length-1:v+1>=e(r).length-1?0:v+1,n=0>v-1?e(r).length-1:v-1>=e(r).length-1?0:v-1;e("<img />").attr("src",e(r).eq(t).attr("href")).load(),e("<img />").attr("src",e(r).eq(n).attr("href")).load()},D=function(t){u.show();var n=v+t;if(!(m||(0>n||n>=e(r).length)&&0==a.loop)){m=!0,v=0>n?e(r).length-1:n>e(r).length-1?0:n,e(".sl-wrapper .sl-counter .sl-current").text(v+1);var s={opacity:0};p?k(a.animationSpeed/1e3,-100*t-i+"px"):s.left=parseInt(e(".sl-image").css("left"))+-100*t+"px",e(".sl-image").animate(s,a.animationSpeed,function(){setTimeout(function(){var n=e(r).eq(v);o.attr("src",n.attr("href")),e(".sl-caption").remove(),E(t),a.preloading&&I()},100)})}},M=function(){if(!m){var t=e(r).eq(v),n=!1;t.trigger(e.Event("close.simplelightbox")),e(".sl-image img, .sl-overlay, .sl-close, .sl-navigation, .sl-image .sl-caption, .sl-counter").fadeOut("fast",function(){e(".sl-wrapper, .sl-overlay").remove(),n||t.trigger(e.Event("closed.simplelightbox")),n=!0}),o=e(),l=!1}};T(),e(t).on("resize",E),e(n).on("click."+c,this.selector,function(t){if(y(this)){if(t.preventDefault(),m)return!1;C(e(this))}}),e(n).on("click",".sl-close",function(e){e.preventDefault(),l&&M()}),e(n).click(function(t){l&&a.docClose&&0==e(t.target).closest(".sl-image").length&&0==e(t.target).closest(".sl-navigation").length&&M()}),e(n).on("click",".sl-navigation button",function(t){t.preventDefault(),i=0,D(e(this).hasClass("sl-next")?1:-1)}),a.enableKeyboard&&e(n).on("keyup."+c,function(e){if(e.preventDefault(),i=0,l){var t=e.keyCode;27==t&&M(),(37==t||39==e.keyCode)&&D(39==e.keyCode?1:-1)}});var q=0,P=0,R=!1,X=0;return e(n).on("touchstart mousedown pointerdown MSPointerDown",".sl-image",function(e){return R?!0:(p&&(X=parseInt(x.css("left"))),R=!0,q=e.originalEvent.pageX||e.originalEvent.touches[0].pageX,!1)}).on("touchmove mousemove pointermove MSPointerMove",function(e){return R?(e.preventDefault(),P=e.originalEvent.pageX||e.originalEvent.touches[0].pageX,i=q-P,void(p?k(0,-i+"px"):x.css("left",X-i+"px"))):!0}).on("touchend mouseup touchcancel pointerup pointercancel MSPointerUp MSPointerCancel",function(){R&&(R=!1,Math.abs(i)>a.swipeTolerance?D(i>0?1:-1):p?k(a.animationSpeed/1e3,"0px"):x.animate({left:X+"px"},a.animationSpeed/2))}),this.open=function(e){C(e)},this.next=function(){D(1)},this.prev=function(){D(-1)},this.close=function(){M()},this.destroy=function(){e(n).unbind("click."+c).unbind("keyup."+c),M(),e(".sl-overlay, .sl-wrapper").remove()},this}}(jQuery,window,document);