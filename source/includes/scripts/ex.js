$(document).ready(function(){
  $('[data-toggle="popover"]').popover(); 
  $('[title]').tooltip(); 

  $('.back-to-top').fadeOut( "fast" );
   var offset = $(document).height();
   var duration = 500;
   $('.back-to-top').click(function(event) {
      event.preventDefault();
      $('html, body').animate({scrollTop: 0}, duration);
      return false;
   })

});

$(window).scroll(function(){

    if ($(this).scrollTop() > 120) {
         $('.back-to-top').fadeIn( "fast" );
     } else {
          $('.back-to-top').fadeOut( "normal" );
     }
});