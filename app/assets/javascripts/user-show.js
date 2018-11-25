$(function(){
  $(".link-icon").on("click", function(){
    $(".select-button").show();
  })
  $(".select-button").on("click", function(){
    $(this).hide();
  });
});
