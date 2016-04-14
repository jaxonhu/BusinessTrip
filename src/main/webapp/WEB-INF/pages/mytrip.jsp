<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="<c:url value="/resources/style/home.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/header.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/common.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/left_sidebar.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/new.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/jquery-ui.min.css"/>" type = "text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/bootstrap.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/common.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/mytrip.css"/>" type="text/css"/>
    <link rel="stylesheet" href="http://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css">
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

<div class="main_content">
    <div class="left_sidebar">
        <a href=""  >
                <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">首页</span>
                </span>
        </a>
        <a href="" class="sidebar_active">
                 <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">我的差旅</span>
                </span>
        </a>
        <a href="" >
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

            <div class="mytrip_table">
                <table class="table table-bordered">
                    <thread>
                        <tr>
                            <th>#</th>
                            <th>差旅申请编号</th>
                            <th>差旅申请人</th>
                            <th>差旅事因</th>
                            <th>差旅申请状态</th>
                            <th>操作</th>
                        </tr>
                    </thread>
                    <tbody>

                     <c:forEach items="${applyShorts}" var="list" varStatus="vs">
                            <tr>
                                <th>${vs.index}</th>
                                <th><a href="javascript:void(0);" onclick="applyShow('${list.apply_id}')">${list.budget_info}</a></th>
                                <th>${list.apply_user}</th>
                                <th>${list.trip_reason}</th>
                                <th>${list.apply_state}</th>
                                <th class="th_align_center"><a href="javascript:void(0);" onclick="applyEdit('${list.apply_id}');" class="table_button"><i class="fa fa-pencil">修改</i></a></th>
                            </tr>
                     </c:forEach>
                    </tbody>
                </table>
            </div>

    </div>
</div>

<script src="../js/jquery-2.2.2.js"></script>
<script src="../js/header_bar.js"></script>
<script src="../js/jquery-ui.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script>

    function applyEdit(apply_id){
        window.location.href = "/BusinessTrip/apply/"+apply_id;
    }
    function applyShow(apply_id){
        window.location.href = "/BusinessTrip/applyInfo/"+apply_id;
    }
</script>
</body>
</html>
