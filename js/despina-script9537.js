(function(jQuery){
	'use strict'

	/* Mobile Menu */
	var app = {
		dropdown:function(){
			jQuery('.drop-nav-arrow').on('click',function(){				
				if( !jQuery(this).parent().hasClass('open') ){
					jQuery(this).parent().addClass('open');
					jQuery(this).parent().find('> .drop-nav').slideDown();
				} else {
					jQuery(this).parent().removeClass('open');
					jQuery(this).parent().find('> .drop-nav').slideUp();
				}				
			});
		}
	}

	jQuery(document).ready(function(){
		'use strict'

		jQuery(".menu-icon a").on('click',function(e){
			if( jQuery(this).hasClass('open') ){
				jQuery(this).removeClass('open');
				jQuery('.menu-nav-main').removeClass('open');
			} else {
				jQuery(this).addClass('open');
				jQuery('.menu-nav-main').addClass('open');	
			}
			return false;
		});

		jQuery('.menu-icon a').on('click',function(){
			jQuery('body').toggleClass('hidden-body');
		});

		jQuery('.category-icon-menu .hambarger-icon').on('click',function(){
			jQuery('.category-icon > ul').slideToggle();
			jQuery(this).toggleClass('open');
			return false;
		});

		jQuery('.language-change').on('click',function(){
			jQuery('.language-menu ul').slideToggle();
		});

		/* Add Linit in textbox only number */

		jQuery(".price-textbox input").keydown(function (e) {
	        // Allow: backspace, delete, tab, escape, enter and .
	        if (jQuery.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
	             // Allow: Ctrl+A, Command+A
	            (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) || 
	             // Allow: home, end, left, right, down, up
	            (e.keyCode >= 35 && e.keyCode <= 40)) {
	                 // let it happen, don't do anything
	                 return;
	        }
	        // Ensure that it is a number and stop the keypress
	        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
	            e.preventDefault();
	        }
    	});
	});

	jQuery(window).load(function(){
		initComponents();
		jQuery('.menu-nav-main ul li').each(function(){
			if( jQuery(this).find('.drop-nav').length ){
				jQuery(this).append('<span class="drop-nav-arrow"><i class="fa fa-angle-down"></i></span>')
			}			
		});
		app.dropdown();
		jQuery('#pre-loader').delay(1000).fadeOut();

		headerFix();
	});

	jQuery(window).resize(function(){
		initComponents();
	});

	function initComponents(){
        initBg();
    }
	
	function initBg(){
		jQuery('.Banner-Bg').each(function(){
            var background = jQuery(this).data('background');
            jQuery(this).css('background-image', 'url("' + background + '")');
        });
	}

	// Page Bottom To Top Call
	jQuery('.top-arrow').on('click',function(){
		jQuery("html, body").animate({ scrollTop: 0 }, 600);
		return false;
	});

	// Scroll top arrow
	jQuery(window).on('scroll',function(){

		headerFix();

		if( jQuery(this).scrollTop() > 500 ){
			jQuery('.top-arrow').fadeIn();
		} else {
			jQuery('.top-arrow').fadeOut();
		}
		return false;
	});

	/* Progress Bar Horizontal */
	jQuery.fn.progressBar = function( options ){
		//Default values for progress_bar
		var defaults = {
			height : "6",
			backgroundColor : "#eae7de",
			barColor : "#bc9540",
			percentage : true,
			shadow : false,
			border : false,
			animation : false,
			animateTarget : false,
		};

		var settings = jQuery.extend( {}, defaults, options );
		return this.each( function(){
			var elem = jQuery( this );
			jQuery.fn.replaceProgressBar( elem, settings );
		});
	};

	jQuery.fn.replaceProgressBar = function( item, settings ){
		var skill		= item.text();
		var progress	= item.data( 'width' );
		var target		= item.data ( 'target' );
		var bar_classes = ' ';
		var animation_class = '';
		var bar_styles	= 'background-color:' + settings.backgroundColor + ';height:' + settings.height + 'px;';
		if ( settings.shadow ) { bar_classes += 'shadow'; }
		if ( settings.border ) { bar_classes += ' border'; }
		if ( settings.animation ) { animation_class = ' animate'; }

		var overlay = '<div class="sonny_progressbar' + animation_class + '" data-width="' + progress + '">';
		overlay += '<p class="title">' + skill + '</p>';
		overlay += '<div class="bar-container' + bar_classes + '" style="' + bar_styles + '">';
		overlay += '<span class="backgroundBar"></span>';

		if( target ){
			if( settings.animateTarget ){
				overlay += '<span class="targetBar loader" style="width:' + target + '%;background-color:' + settings.targetBarColor + ';"></span>';
			} else {
				overlay += '<span class="targetBar" style="width:' + target + '%;background-color:' + settings.targetBarColor + ';"></span>';
			}
		}

		// Render the progress bar
		if( settings.animation ){
			overlay += '<span class="bar" style="background-color:' + settings.barColor + ';"></span>';
		} else {
			overlay += '<span class="bar" style="width:' + progress + '%;background-color:' + settings.barColor + ';"></span>';
		}

		// Render the percentage if enabled
		if( settings.percentage ){
			overlay += '<span class="progress-percent" style="line-height:' + settings.height + 'px;">' + progress + '%</span>';
		}

		// End
		overlay += '</div></div>';

		// Render the progress bar on the page
		jQuery( item ).replaceWith( overlay );

	};

	var animate = function(){
		var doc_height = jQuery(window).height();
		jQuery( '.sonny_progressbar.animate' ).each( function(){
			var position = jQuery( this ).offset().top;
			if( ( jQuery(window).scrollTop() + doc_height - 60 ) > position ){
				var progress = jQuery( this ).data( 'width' ) + "%";
				jQuery( this ).removeClass( 'animate' );
				jQuery( this ).find( '.bar' ).css('opacity', '0.1');
				jQuery( this ).find( '.bar' ).animate({
					width : progress,
					opacity : 1
				}, 3000 );
			}
		});
	};

	// Looking for an animation element in the view
	jQuery(window).scroll(function(){
		if( jQuery( '.sonny_progressbar.animate' ).length < 1 ){
			return;
		}
		animate();
	});

	/* Progress Bar Call */
	jQuery('.progressbar1').progressBar({
		shadow : true,
		percentage : false,
		animation : true,
	});

	function headerFix(){

		var window_height = jQuery(window).height(),
			document_height = jQuery(document).height(),
			topPos = jQuery(document).scrollTop(),
			header_height = jQuery('header-part').height();

		if(topPos > header_height){
			if((window_height < document_height) && jQuery('.header-part').hasClass('sticky')){
				jQuery('.header-part').addClass('sticky-fixed');
			}
		}else{
			jQuery('.header-part').removeClass('sticky-fixed');
		}
	}

})(jQuery);