$(document).on('turbolinks:load', function(){
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
  $(".tab1_label").on("click", function(){
    $("label.active").removeClass("active");
    $(this).addClass("active");
    $("#product_magazine").hide();
    $("#product_like").hide();
    $("#product_note").show();
  });
  $(".tab2_label").on("click", function(){
    $("label.active").removeClass("active");
    $(this).addClass("active");
    $("#product_note").hide();
    $("#product_like").hide();
    $("#product_magazine").show();
  });
  $(".tab3_label").on("click", function(){
    $("label.active").removeClass("active");
    $(this).addClass("active");
    $("#product_note").hide();
    $("#product_magazine").hide();
    $("#product_like").show();
  });
});
