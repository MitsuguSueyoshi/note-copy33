$(document).on('turbolinks:load', function(){
  $(function(){
    $('.comments__form__content__text').on("click", function(e){
      $('.comments__form__content__submit').fadeIn();
    })

    $('.footer').on("click", function(e){
      $('.comments__form__content__submit').fadeOut();
    })

  });
});
