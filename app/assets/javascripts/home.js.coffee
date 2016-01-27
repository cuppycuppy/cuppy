# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

###
$(document).ready(function(){
  $('.slider').slick({
    centerMode: true,
    centerPadding: '60px',
    slidesToShow: 1,
    autoplay: true,
    autoplaySpeed: 1000,
    responsive: [
      {
        breakpoint: 768,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 1
        }
      },
      {
        breakpoint: 480,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 1
        }
      }
    ]
  });
        });
          $('#container').masonry({
            itemSelector: '.grid',
            columnWidth: 5,
            isFitWidth: true
          });

          $(window).resize(function () {
            $('#ww span').text($(window).width());
          });
</script>
###
