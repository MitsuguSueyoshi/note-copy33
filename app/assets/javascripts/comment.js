$(document).on('turbolinks:load', function(){
  $(function(){

    function buildHTML(comment){
      var html = `
      <div class="comments__comment">
        <div class="comments__comment__profile">
          <div class="comments__comment__profile__icon">
            <img src="${comment.user_image}">
          </div>
          <div class="comments__comment__profile__name">
            ${comment.user_name}
          </div>
          <div class="comments__comment__profile__date">
            ${comment.time}
          </div>
        </div>
        <div class="comments__comment__option">
          <i class="fa fa-ellipsis-h"></i>
        </div>
        <div class="comments__comment__likes">
          <i class="far fa-heart"></i>
        </div>
        <div class="comments__comment__body">
          ${comment.body}
        </div>
      </div>`

      return html;
    }

    $('.comments__form__content__text').on("click", function(e){
      $('.comments__form__content__submit').fadeIn();
    })

    $('.footer').on("click", function(e){
      $('.comments__form__content__submit').fadeOut();
    })


    $(".comments__form__content").on("submit", function(e){
      e.preventDefault();
      var content = new FormData(this);
      var url = $(this).attr('action');
      $.ajax({
        url: url,
        type: "POST",
        data: content,
        dataType: "json",
        processData: false,
        contentType: false
      })
      .done(function(comment){
        var html = buildHTML(comment);
        $(".comments__lists").append(html);
        $('.comments__lists').animate({scrollTop: $(".comments")[0].scrollHeight},'slow');
        $(".comments__form__content__text").val("");
        $('.comments__form__content__submit').prop('disabled', false);
      })
      .fail(function(XMLHttpRequest, textStatus, errorThrown){
        alert('メッセージの送信に失敗しました');
        console.log(XMLHttpRequest.status);
        console.log(textStatus);
        console.log(errorThrown);
      })
    });

  });
});
