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
    <link rel="stylesheet" href="<c:url value="/resources/style/setting.css"/> " type="text/css"/>
</head>
<body>
<div class="header ">
    <ul class="header_left ">
        <li><a href="">我的差旅</a></li>
        <a href=""> <li>差旅申请</li></a>
        <a href=""><li>报销</li></a>
        <a href=""><li>统计</li></a>
        <input type="text" id="mytrip_search" placeholder="查询我的差旅记录" name="query_mytrip">
    </ul>

    <div class="header_right">
        <a href="" class="add_mytrip"></a>
        <div class="myprofile">
            <a href="">
                <img src="<c:url value="/resources/image/profile-full-male.png"/> " class="radius3 clearFix" alt="新建差旅">

                <p class="clearFix">胡家煊</p>
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
            <img src="<c:url value="/resources/image/profile-full-male.png"/>" alt=""/>
             vensli
             </a>
        </div>
        <ul class="setting_menu ">
            <li class="setting_active"><a href="">用户资料</a></li>
            <li><a href="">个人信息</a></li>
        </ul>
    </div>
    <div class="right_content">
        <h1 class="content_header">用户资料</h1>
        <div class="module">
            <img src="<c:url value="/resources/image/profile-full-male.png"/>" alt=""/>
            <span class="module_name">vensli</span>
            <a class="module1_a"  href="javascript:void(0);">浏览个人主页</a>
        </div>
        <div class="module">
            <h2 class="m_title">安全</h2>
            <span class="label">密码</span><a href="">修改密码</a>
        </div>
        <div class="module">
            <h2 class="m_title">邮箱地址</h2>
            <span class="label">邮箱地址</span><span class="label email">370403444@qq.com</span>
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