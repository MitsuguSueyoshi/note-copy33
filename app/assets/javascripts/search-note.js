$(document).on('turbolinks:load', function(){
  function activeClass(){
    $("li.swich").on("click", function(){
      $("li.swich.active").removeClass("active");
      $(this).addClass("active");
    });
  };

  $("li.swich.spike").on("click", function() {
    activeClass();
    $("#default").hide();
    $("#new").hide();
    $("#spike").show();
  });

  $("li.swich.new").on("click", function() {
    activeClass();
    $("#default").hide();
    $("#spike").hide();
    $("#new").show();
  });

  $("li.swich.popular").on("click", function() {
    activeClass();
    $("#new").hide();
    $("#spike").hide();
    $("#default").show();
  });
});
