$(function(){
    $("#header_user_menu").css("display","none");
});


$(".myprofile>a").hover(
    function(){
        $("#header_user_menu").css("display","block");
    },
    function(){
         $("#header_user_menu").css("display","none");
    }
);
$("#header_user_menu").hover(
    function(){
          $("#header_user_menu").css("display","block");
    },
    function(){
        $("#header_user_menu").css("display","none");
    }
);
