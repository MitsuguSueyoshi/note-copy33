$(document).on('turbolinks:load', function(){
  function readURL(input){
    if(input.files && input.files[0]){
      var reader = new FileReader();

      reader.onload = function(e){
        $("#preview__image").attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
  $("#note_images_attributes_0_image").change(function(){
    $("#preview__image").removeClass("hidden").show();
    readURL(this);
  });
});
