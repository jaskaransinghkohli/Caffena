(function(jQuery){
    'use strict'

    CheckPositionMobile();

    //Initiat WOW JS
    new WOW().init();

    /* Owl Carousel For All product slider */

    if( jQuery('.owl-carousel').length ){

        jQuery('.owl-carousel').each(function(){
            var owl = jQuery('.owl-carousel');
            jQuery(this).owlCarousel({
                margin: 30,
                loop: true,
                autoplayTimeout: jQuery(this).data('autotime'),
                smartSpeed:jQuery(this).data('speed'), 
                autoplay : jQuery(this).data('autoplay'),
                items    : jQuery(this).data('carousel-items'),
                nav      : jQuery(this).data('nav'),
                dots     : jQuery(this).data('dots'),
                responsive: {
                  0: {
                    items: jQuery(this).data('mobile'),
                    margin: 15
                  },
                  768: {
                    items: jQuery(this).data('tablet')
                  },
                  992: {
                    items: jQuery(this).data('items')
                  }
                }
            });    
        });
    }

    /* Slick Slider Call Here... */

    jQuery('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: false,
        asNavFor: '.slider-nav'
    });

    jQuery('.slider-nav').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: false,
        centerMode: false,
        focusOnSelect: true,
        responsive: [{
            breakpoint: 991,
            settings: {
                arrows: true,
                centerMode: false,
                slidesToShow: 3
            }
        },
        {
            breakpoint: 480,
            settings: {
                arrows: true,
                centerMode: false,
                slidesToShow: 3
            }
        }]
    });

    /* Light Box Plugin */

    var gallery = jQuery('.gallery-box .gallery-popup').simpleLightbox();

    /* Magnificate Popup call here... */

    jQuery('.magnific-popup').magnificPopup({type:'image'});

    jQuery('.magnific-youtube').magnificPopup({type:'iframe'});    

    /* Form Style Call Here... */

    jQuery(function() {
        jQuery('select.select-dropbox, select.orderby, input[type="radio"], input[type="checkbox"]').styler({
            selectSearch: true,
        });
    });

    /* Filter Slider */

    jQuery("#ex2").slider({});

    function CheckPositionMobile() {
        if( window.matchMedia('(max-width: 991px)').matches ){
            /* Scroll Bar Plugin Call here... */
            (function(jQuery){
                jQuery(window).on("load",function(){
                    jQuery(".menu-nav-main").mCustomScrollbar({
                      theme:"minimal"
                    });
                });
            })(jQuery);            
        }
    }

    jQuery(window).resize(function(){
        CheckPositionMobile();
    });    

})(jQuery);

jQuery(document).ready(function(){
    'use strict'
    
    function galereya_grid(){
        /* Masonry call here... */
        jQuery('.galereya-grid').isotope({
            itemSelector: '.msrItem',
            layoutMode: 'packery',
            packery: { fitWidth: true }
        });
    }
    setTimeout(galereya_grid, 500);
});