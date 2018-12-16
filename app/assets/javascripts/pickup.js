$(document).on("turbolinks:load", function(){
  $('.button-3').click(function(){
    $('.hot__notes').show();
    $('.button-3').css('background', '#e6e6e6');
    $('.new__notes').hide();
    $('.button-4').css('background', '#fff');
    $('.old__notes').hide();
    $('.button-5').css('background', '#fff');
  });
  $('.button-4').click(function(){
    $('.new__notes').show();
    $('.button-4').css('background', '#e6e6e6');
    $('.old__notes').hide();
    $('.button-5').css('background', '#fff');
    $('.hot__notes').hide();
    $('.button-3').css('background', '#fff');
  });
  $('.button-5').click(function(){
    $('.old__notes').show();
    $('.button-5').css('background', '#e6e6e6');
    $('.new__notes').hide();
    $('.button-4').css('background', '#fff');
    $('.hot__notes').hide();
    $('.button-3').css('background', '#fff');
  });
});
