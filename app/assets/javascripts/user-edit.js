$(function(){
  $(".link-green").on("click", function(){
    $(".edit-container").hide();
    $(".container-hide").show();
  });
  $(".cancel-button").on("click",function(){
    $(".container-hide").hide();
    $(".edit-container").show();
  });
});
