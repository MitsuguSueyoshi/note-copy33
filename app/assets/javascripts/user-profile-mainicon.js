$(document).on('turbolinks:load', function(){
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
  });
});
