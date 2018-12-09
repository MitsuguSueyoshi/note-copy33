$(document).on('turbolinks:load', function(){
  $(".images-list__container__gallery__content").on("click" , function(){
    var imageSrc = $(this).children(".layout-image").attr('src');
    var title = $(this).children(".content-title").text();
    $("#expantion-image").attr('src', imageSrc);
    $(".note-title").text(title);
    $(".image-modal").fadeIn();
  });
  $(".close-button").on("click", function(){
    $(".image-modal").fadeOut();
  });
});
