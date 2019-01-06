$(document).on("turbolinks:load", function(){

  $(function(){
    $('#new_note').on('submit', function(e){
      e.preventDefault();
      var formData = new FormData(this);
      var url = $(this).attr('action');
      $.ajax({
        url: url,
        type: "POST",
        data: formData,
        dataType: 'json',
        processData: false,
        contentType: false
      })
      .done(function(){
        $('.modal__container').fadeIn();
      })
      .fail(function(){
        alert('タイトル、本文、カテゴリは必ず入力して下さい');
        $('#submit__button').removeAttr('data-disable-with');
      });
    });
  });
});
