$(document).on('turbolinks:load', function(){
  $(".note__support__content__button").on("click", function(){
    $(".suport").fadeIn();
  });
  $(".suport-cancel").on("click", function(){
    $(".suport").fadeOut();
  });
  $(".suport-submit").on("click", function(){
    $(".suport").fadeOut();
  });
  $(".suport-modal__price__block__select").on("click", function(){
    $(".suport-modal__price__block__select__image.selected").removeClass("selected");
    $(this).children(".suport-modal__price__block__select__image").addClass("selected");
    $(".selected-span").removeClass("selected-span");
    $(this).children("span").addClass("selected-span");
  });
});
