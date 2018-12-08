$(document).on('turbolinks:load', function(){
  $(".layout-image").on("click" , function(){
    var imageSrc = $(this).attr('src')
    console.log(imageSrc);
    $("#expantion-image").attr('src', imageSrc);
    $(".image-modal").fadeIn();
  });
  $(".close-button").on("click", function(){
  $(".image-modal").fadeOut();
  })

});
