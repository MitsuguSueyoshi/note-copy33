$(document).on('turbolinks:load', function(){
  $('.page-scroll li').on('click', function() {
    var target = $($(this).attr('href'));
    $('html, body').animate({
      scrollTop: target.offset().top,
    }, 0);
    return false;
  });
});
