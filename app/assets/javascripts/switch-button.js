$(document).on("turbolinks:load", function(){
  $('.switch__button li').click(function() {
    $(".tab").hide();
    $($(this).attr("href")).show();
    $('.select').removeClass('select');
    $(this).addClass('select');
    return false;
  });
});
