$(document).on('turbolinks:load', function(){
  $("#my__notes__view").on("click", function(){
    $(".home__container").hide();
    $(".my-notes__container").show();
    $('.my-menu').toggle();
    return false
  });

    $(function() {
      $('.balloon__event').click(function() {
        $(this).parent().siblings('.delete__balloon').toggle();
        return false
      });
    });
});
