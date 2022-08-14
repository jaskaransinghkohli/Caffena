/**
 * Created by waqasriaz on 02/10/15.
 */

jQuery(document).ready(function($){
    "use strict";

    if( typeof DESPINA_ajaxcalls_vars !== "undefined" ){
    	
    	var ajaxurl = DESPINA_ajaxcalls_vars.admin_url+ 'admin-ajax.php';
    	var retina_logo = DESPINA_ajaxcalls_vars.retina_logo;
        var retina_logo_height = DESPINA_ajaxcalls_vars.retina_logo_height;
        var retina_logo_width = DESPINA_ajaxcalls_vars.retina_logo_width;
        
        /* *****************************************
         *  Retina logo
         * *************************************** */
        if ( retina_logo !== '' && retina_logo_width !== '' && retina_logo_height !== '' ){
            if( window.devicePixelRatio == 2 ){
                    $(".logo a img").attr("src", retina_logo);
                    $(".logo a img").attr("width", retina_logo_width);
                    $(".logo a img").attr("height", retina_logo_height);
            }
        }        
    }
});