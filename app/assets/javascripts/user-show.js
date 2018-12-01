$(function(){
  $(".link-icon").on("click", function(){
    $(".select-button").show();
  })
  $(".select-button").on("click", function(){
    $(this).hide();
  });

  $(".my-profile").on("click", function(){
    $(".user-container").hide();
    $(".user-profile").show();
  });
});
