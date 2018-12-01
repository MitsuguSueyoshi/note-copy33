$(document).on('turbolinks:load', function(){
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
});
