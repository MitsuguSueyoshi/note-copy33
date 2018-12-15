$(document).on('turbolinks:load', function(){
  $(function(){
    // function buildHTML(article){
    //     var html = `<form action="/articles/${article.id}" method="post" id="destroy_article">
    //     <input type="hidden" name="note_id" value="${article.noteid}">
    //     <input type="hidden" name="_method" value="DELETE">
    //     <input type="hidden" name="magazine_id" value="${article.magazineid}">
    //     <input type="submit" name="submit" value="追加済み" class="article-modal__content__magazines__magazine__add__add-now" />
    //            </form>`
    //   return html;
    // }

    $('.fa-plus').on('click', function(e){
      e.preventDefault();
      $(this).siblings().fadeIn();
    });

    $('.article-modal__content__header__escape').on('click', function(e){
      e.preventDefault();
      $('.article-modal').fadeOut();
    });

    // $('.article-modal__content__magazines__magazine__add__adds').on('click', function(e){
    //   e.preventDefault();
    //   $('.article-modal__content__magazines__magazine__add__adds').attr('value', '追加済み')
    //   $('.article-modal__content__magazines__magazine__add__adds').addClass('added')
    // });

    // $('#new_article').on('submit', function(e){
    //   e.preventDefault();
    //   var formData = new FormData(this);
    //   var url = $(this).attr('action');
    //   $.ajax({
    //     url: url,
    //     type: "POST",
    //     data: formData,
    //     dataType: 'json',
    //     processData: false,
    //     contentType: false
    //   })
    //   .done(function(article){
    //     var html = buildHTML(article);
    //     $("#new_article").remove();
    //     $(".article-modal__content__magazines__magazine__add").append(html);
    //   })
    //   .fail(function(){
    //     alert('ノートの追加に失敗しました');
    //   });
    // });

    // $('#destroy_article').on('submit', function(e){
    //   e.preventDefault();
    //   var formData = new FormData(this);
    //   var url = $(this).attr('action');
    //   $.ajax({
    //     url: url,
    //     type: "DELETE",
    //     data: formData,
    //     dataType: 'json',
    //     processData: false,
    //     contentType: false
    //   })
    //   .done(function(){
    //     console.log('成功');
    //     $("#destroy_article").remove();
    //     $(".article-modal__content__magazines__magazine__add").append("#new_article");
    //   })
    //   .fail(function(){
    //     alert('ノートの削除に失敗しました');
    //   });
    // });

  });
});
