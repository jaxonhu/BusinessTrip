<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="<c:url value="/resources/style/home.css"/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value="/resources/style/header.css"/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value="/resources/style/common.css"/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value="/resources/style/left_sidebar.css"/>" type="text/css"/>
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
                <img src="<c:url value="/resources/image/profile-full-male.png"/>" class="radius3 clearFix" alt="新建差旅">
            
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
    
    <div class="main_content">
        <div class="left_sidebar">
            <a href=""  class="sidebar_active">
                <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">首页</span>
                </span>
            </a>
            <a href="">
                 <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">我的差旅</span>
                </span>
            </a>
            <a href="">
                  <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">差旅申请</span>
                </span>
            </a>
            <a href="">
                   <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">我的报销</span>
                </span>
            </a>
             <a href="">
                   <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">统计分析</span>
                </span>
            </a>
             <a href="">
                   <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">积分商城</span>
                </span>
            </a>
        </div>
        <div class="right_content">
            
        </div>
    </div>
  
  <script src="<c:url value="/resources/js/jquery-2.2.2.js"/>"></script>
 <script src="<c:url value="/resources/js/header_bar.js"/>"></script>
 
</body>
</html>