$(document).on("turbolinks:load", function(){
  $(function(){

    $(".note-title__box").css("lineHeight","40px");

    $(".note-title__box").on("input",function(evt){
        if(evt.target.scrollHeight > evt.target.offsetHeight){
            $(evt.target).height(evt.target.scrollHeight);
        }else{
            var lineHeight = Number($(evt.target).css("lineHeight").split("px")[0]);
            while (true){
                $(evt.target).height($(evt.target).height() - lineHeight);
                if(evt.target.scrollHeight > evt.target.offsetHeight){
                    $(evt.target).height(evt.target.scrollHeight);
                    break;
                }
            }
        }
    });
  });

  $(function(){

    $(".note-text__box").css("lineHeight","40px");

    $(".note-text__box").on("input",function(evt){
        if(evt.target.scrollHeight > evt.target.offsetHeight){
            $(evt.target).height(evt.target.scrollHeight);
        }else{
            var lineHeight = Number($(evt.target).css("lineHeight").split("px")[0]);
            while (true){
                $(evt.target).height($(evt.target).height() - lineHeight);
                if(evt.target.scrollHeight > evt.target.offsetHeight){
                    $(evt.target).height(evt.target.scrollHeight);
                    break;
                }
            }
        }
    });
  });
});
