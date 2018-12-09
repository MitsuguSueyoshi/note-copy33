$(document).on('turbolinks:load', function(){
  $(function(){
    $('.like__count').on('click', function(e){
      e.preventDefault();
      $('.like-modal').fadeIn();
    });

    $('.like-modal__content__header__escape').on('click', function(e){
      e.preventDefault();
      $('.like-modal').fadeOut();
    });
  });
});
