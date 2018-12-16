$(document).on('turbolinks:load', function(){
  $(".note__support__content__button").on("click", function(){
    $(".suport").fadeIn();
  });
  $(".suport-cancel").on("click", function(){
    $(".suport").fadeOut();
  });
  $(".suport-submit").on("click", function(){
    $(".suport").fadeOut();
  });


});
