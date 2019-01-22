$(function() {
      $(window).scroll(function() {
          if ($(this).scrollTop() > 500) {
              $('#MOVE_TOP_BTN').fadeIn();
          } else {
              $('#MOVE_TOP_BTN').fadeOut();
          }
      });
        
$("#MOVE_TOP_BTN").click(function() {
      $('html, body').animate({
          scrollTop : 0
          }, 400);
          return false;
      });
 });
