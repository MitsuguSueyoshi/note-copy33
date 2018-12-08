$(document).on('turbolinks:load', function(){
    $(function() {
      $('.balloon__event').click(function() {
        $(this).parent().siblings('.delete__balloon').toggle();
        return false
      });
    });
});
