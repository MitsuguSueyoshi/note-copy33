$(document).on("turbolinks:load", function(){
  $('.button-1').click(function(){
    $('.hot__notes').show();
    $('.button-1').css('background', '#e6e6e6');
    $('.new__notes').hide();
    $('.button-2').css('background', '#fff');
  });
  $('.button-2').click(function(){
    $('.new__notes').show();
    $('.button-2').css('background', '#e6e6e6');
    $('.hot__notes').hide();
    $('.button-1').css('background', '#fff');
  });
});
