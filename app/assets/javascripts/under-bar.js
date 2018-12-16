$(document).on('turbolinks:load', function(){
  $(window).scroll(function() {
    if ($(this).scrollTop() > 100) {
      $('.under-bar').stop().animate({
        'bottom': '-68px'
      }, 100 , 'linear');
    } else {
      $('.under-bar').stop().animate({
        'bottom': '0px'
      }, 100 , 'linear');
    }
  });
});
