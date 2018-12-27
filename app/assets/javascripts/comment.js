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

//commentのcreateを動かします
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

//commentのdestroyを動かします
    $(".note_delete_btn").on("click", function(e){
      e.preventDefault();
      e.stopPropagation();
      var url = $(this).attr('href');
      var comment_id = $(this).find(".fa-ellipsis-h").data("comment-id")
      $.ajax({
        url: url,
        type: "POST",
        dataType: "json",
        data: {'comment_id': comment_id, '_method': 'DELETE'}
      })
      .done(function(){
        $(".note_delete_btn").parents(".comments__comment").remove();
      })
      .fail(function(XMLHttpRequest, textStatus, errorThrown){
        alert('コメントの削除に失敗しました');
        console.log(XMLHttpRequest.status);
        console.log(textStatus);
        console.log(errorThrown);
      })
    });

  });
});
