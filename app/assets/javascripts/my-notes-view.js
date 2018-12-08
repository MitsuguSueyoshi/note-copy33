$(document).on('turbolinks:load', function(){
  $('.balloon__event').click(function() {
    $(this).parent().siblings('.delete__balloon').toggle();
    return false
  });
  $('input:checkbox').change(function() {
      var cnt = $('.selection__box input:checkbox:checked').length;
      $('span.checked__counts').text(cnt);
  });
  $('.times').on('click', function() {
      $('.selection__box input:checkbox:checked').prop({'checked':false});
  });
  $('.selection__box input:checkbox').change(function() {
      if ( $('.selection__box input:checkbox:checked').length > 0 ) {
        $('.my-notes__foot').show();
      } else {
        $('.my-notes__foot').hide();
      }
  });
});
