jQuery( document ).ready(function() {
    jQuery(window).scroll(function(){
      if ( jQuery(document).scrollTop() > 0 ) {
        jQuery('#scrollup').fadeIn(500);
      } else {
        jQuery('#scrollup').fadeOut(500);
      }
    });
    jQuery('#scrollup a').click( function(){
      jQuery("body, html").animate({"scrollTop":0},1500);
      return false;
    });
});
