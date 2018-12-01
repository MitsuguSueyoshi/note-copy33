$(document).on("turbolinks:load", function(){
  $(function(){

    function appendTag() {
      var html = `<li class="tag-name">
                    <a> #就活 </a>
                  <li class="tag-name">
                    <a> #鳥 </a>
                  <li class="tag-name">
                    <a> #ハンドメイド </a>
                  <li class="tag-name">
                    <a> #勉強 </a>
                  <li class="tag-name">
                    <a> #プログラミング </a>
                  <li class="tag-name">
                    <a> #グルメ </a>
                  <li class="tag-name">
                    <a> #風景 </a>
                    `
      $(".header__container__nav__category").append(html);
    }


    $(".search-icon1").on("click",function(){
      $(this).hide();
      $(".search-form").show();
    });

    $(".popular").hover(
      function(){
      $(".category").hide();
      appendTag();

      },
      function(){
      $(".tag-name").remove();
      $(".category").show();
      }
    );

    $(function() {
      $('.my-icon').click(function() {
          $('.my-menu').toggle();
          return false
      });
    });
  });
});
