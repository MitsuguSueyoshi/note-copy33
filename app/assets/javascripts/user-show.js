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

  function readURL(input){
    if(input.files && input.files[0]){
      var reader = new FileReader();

      reader.onload = function(e){
        $("#header_image_prev").attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
  $("#user_header_image").change(function(){
    $("#header_image_prev").removeClass("hidden").show();
    $(".header_present_image").remove();
    readURL(this);
  });

  function readURL(input){
    if(input.files && input.files[0]){
      var reader = new FileReader();

      reader.onload = function(e){
        $("#main_image_prev").attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
  $("#user_main_image").change(function(){
    $("#main_image_prev").removeClass("hidden").show();
    $(".my-icon").remove();
    readURL(this);
  })
});
