<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>

    <link rel="stylesheet" href="<c:url value="/resources/style/header.css"/> " type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/common.css"/> " type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/left_sidebar.css"/> " type="text/css">

    <link rel="stylesheet" href="<c:url value="/resources/style/setting_profile.css"/> " type="text/css"/>
</head>
<body  onload="diff_position('${user.user_role}');">
<div class="header ">
    <ul class="header_left ">
        <li><a href="">我的差旅</a></li>
        <a href=""> <li>差旅申请</li></a>
        <a href=""><li>报销</li></a>
        <a href=""  class="tong_ji"><li>统计</li></a>
        <input type="text" id="mytrip_search" placeholder="查询我的差旅记录" name="query_mytrip">
    </ul>

    <div class="header_right">
        <a href="" class="add_mytrip"></a>
        <div class="myprofile">
            <a href="">
                <img src="${user.user_face_url}" class="radius3 clearFix" alt="新建差旅">

                <p class="clearFix">${user.user_account}</p>
                <span class="header_drop"></span>
            </a>
        </div>
        <ul id="header_user_menu">
            <li><a href="">个人主页</a></li>
            <li><a href="">通知中心</a></li>
            <li><a href="">退出</a></li>
        </ul>

    </div>
</div>

<div class="main_content shadow_2">
    <div class="left_content">
        <div class="user_title">
            <a href="">
            <img src="${user.user_face_url}" alt=""/>
            ${user.user_account}
             </a>
        </div>
        <ul class="setting_menu ">
            <li ><a href="<%=request.getContextPath()%>/setting">用户资料</a></li>
            <li><a href="<%=request.getContextPath()%>/setting/profile">个人信息</a></li>
        </ul>
    </div>
    <div class="right_content">
        <h1 class="content_header">修改密码</h1>
        <div class="module clearFix">

            <p style="font-weight: bold; color: #888!important;">当前密码</p>
            <input type="password" id="password1" style="width: 200px!important;" />
            <p style=" font-weight: bold;color: #888!important;">新密码</p>
            <input type="password" id="password2" style="width: 200px!important;" value=""/>
            <p style="font-weight: bold;color: #888!important;">确认新密码</p>
            <input type="password" id="password3" style="width: 200px!important;" value=""/>
            <a class="save_profile" style="width: 60px!important;" href="javascript:void(0);" onclick="save_password();">确定</a>
        </div>

    </div>
</div>

<script src="<c:url value="/resources/js/jquery-2.2.2.js"/> "></script>
<script src="<c:url value="/resources/js/header_bar.js"/> "></script>
<script>
    function showComments(index){
//        var obj = document.getElementsByClassName("dp_comments")[index];
//        alert($(".dp_comments:eq(0)").prop("display"));
        var obj = $(".dp_comments:eq("+index+")");
//        alert($(".dp_comments:eq(0)").css("display",""));
        if(obj.css("display")=="block"){

            obj.css("display","none");
        }else{

            obj.css("display","block");
        }


    }
    function diff_position(position){
        if(position == "manager"){

            $(".tong_ji:eq(0)").after("<a href='<%=request.getContextPath()%>/review'><li>差旅审批</li></a>");
        }
    }
    function save_password(){
        var password1 = $("#password1").val();
        var password2 = $("#password2").val();
        var password3 = $("#password3").val();
        alert(password1);
        if(password2!=password3){
            alert("两次输入密码不一致请重新输入");
            return;
        }
        $.ajax({
            type:"POST",
            url:"/BusinessTrip/setting/password/save",
            data:{
                password_old:password1,
                password_new:password2
            },
            dataType:"text",
            success:function(data){
                if(data=="password_error"){
                    alert("当前密码不正确！");
                    return;
                }
                alert("密码修改成功");
            },
            error:function(){
                alert("密码修改失败");
            }
        });
    }

    function showShare(){
        var obj = $(".dp_share:eq(0)");

        if(obj.css("height") == "50px"){
            obj.css("height","110px");
        }else{
            obj.css("height","50px");
        }
    }
</script>
</body>
</html>