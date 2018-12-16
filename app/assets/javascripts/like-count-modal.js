$(document).on('turbolinks:load', function(){
  $(function(){
    $('.like__count').on('click', function(e){
      e.preventDefault();
      $(this).siblings().fadeIn();
    });

    $('.like-modal__content__header__escape').on('click', function(e){
      e.preventDefault();
      $('.like-modal').fadeOut();
    });
// ノートのshow画面のlike-modalです！
    $('.like__counted').on('click', function(e){
      e.preventDefault();
      $(this).siblings().fadeIn();
    });

  });
});
