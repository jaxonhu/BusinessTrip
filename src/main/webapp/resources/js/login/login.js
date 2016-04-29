window.onload = init();
function init(){
    console.log("hello world");
}

function login_query(){

    var user_account = $("#login_account").val();
    var user_password = $("#login_password").val();
    var user_data = {
        user_account :user_account,
        user_password:user_password
    };
    if(user_account==""||user_password==""){
        alert("用户名或密码不能为空");
        return ;
    }
    console.log("/BusinessTrip/login/" + user_account);
    $.ajax({
        type:"POST",
        url: "/BusinessTrip/login/user_query",
        data:user_data,
        success:function(data){
            if(data == "success"){
                window.location.href = '/BusinessTrip/home';
            }else{
                alert("用户名或密码错误");
            }
        },
        error: function(data){
            alert("ajax连接错误");
        }
    });
}