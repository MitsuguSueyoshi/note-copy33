$(document).on('turbolinks:load', function(){
  var current_scrollY;
  function fixScroll(){
    current_scrollY= $(window).scrollTop();
    $("body").css({
      position: "fixed",
      width: "100%",
      top: -1 * current_scrollY
    });
  };

  function scrollRelease(){
    $("body").css({
      position: "",
      width: "",
      top: ""
    });
    $(window).scrollTop(current_scrollY);
  };


  $(".note__support__content__button").on("click", function(){
    fixScroll();
    $(".suport").fadeIn();
  });

  $(".suport-cancel").on("click", function(){
    scrollRelease();
    $(".suport").fadeOut();
  });

  $(".suport-submit").on("click", function(){
    scrollRelease();
    $(".suport").fadeOut();
  });

  $(".suport-modal__price__block__select").on("click", function(){
    $(".suport-modal__price__block__select__image.selected").removeClass("selected");
    $(this).children(".suport-modal__price__block__select__image").addClass("selected");
    $(".selected-span").removeClass("selected-span");
    $(this).children("span").addClass("selected-span");
  });
});
