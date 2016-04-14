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

    <link rel="stylesheet" href="<c:url value="/resources/style/jquery-ui.min.css"/>" type = "text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/bootstrap.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/applyInfo.css"/>" type="text/css"/>
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
        <a href="" >
                <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">首页</span>
                </span>
        </a>
        <a href=""  class="sidebar_active">
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
        <div class="trip_report">
            <!--<h3>出差申请单</h3>-->
            <!--<div class="line1">-->
                <!--<span class="fix_text">部门</span>-->
                <!--<span class="span_content">asda</span>-->
                <!--<span class="fix_text">姓名</span>-->
                <!--<span class="span_content">asdas</span>-->
                <!--<span class="fix_text">目的地</span>-->
                <!--<span class="fix_content">adasd</span></div>-->
        <!--</div>-->
        <table class="table table-bordered">
            <thread>
                <tr>
                    <th colspan="8" style="text-align: center;">差旅申请单</th>
                </tr>
            </thread>
            <tbody>
                <tr>
                    <th colspan="1">部门</th>
                    <th colspan="2">asd</th>
                    <th colspan="1">姓名</th>
                    <th colspan="2">asd</th>
                    <th colspan="1">目的地</th>
                    <th colspan="2">asdas</th>
                </tr>
                <tr>
                    <th colspan="1">事由</th>
                    <th colspan="7">sda</th>
                </tr>
                <tr>
                    <th colspan="1">交通工具</th>
                    <th colspan="7"><input type="checkbox" checked>汽车
                   <input type="checkbox" checked/>火车
                    <input type="checkbox" checked/>飞机
                    <input type="checkbox" checked/>轮船
                    <input type="checkbox" checked/>私家车</th>
                </tr>
                <tr>
                    <th rowspan="6">预算申请</th>
                    <th colspan="1">交通费(元)</th><th colspan="2">300</th>
                    <th colspan="1">明细</th><th colspan="3">aaaaaaaa</th>
                </tr>
                <tr>

                    <th colspan="1">住宿费(元)</th><th colspan="2">300</th>
                    <th colspan="1">明细</th><th colspan="3">aaaaaaaa</th>
                </tr>
                <tr>

                    <th colspan="1">餐饮费(元)</th><th colspan="2">300</th>
                    <th colspan="1">明细</th><th colspan="3">aaaaaaaa</th>
                </tr>
                <tr>

                    <th colspan="1">招待费(元)</th><th colspan="2">300</th>
                    <th colspan="1">明细</th><th colspan="3">aaaaaaaa</th>
                </tr>
                <tr>

                    <th colspan="1">其他(元)</th><th colspan="2">300</th>
                    <th colspan="1">明细</th><th colspan="3">aaaaaaaa</th>
                </tr>
                <tr>

                    <th colspan="5">合计</th><th colspan="5">300</th>

                </tr>
                <tr >
                    <th rowspan="1" style="height: 100px !important;">差旅汇报</th>
                    <th rowspan="1" colspan="7" style="height: 100px !important;">asd</th>
                </tr>
                <tr>
                    <th colspan="1">差旅达成情况</th>
                    <th colspan="7">
                        <input type="checkbox" checked/>达成
                        <input type="checkbox" checked/>基本达成
                        <input type="checkbox" checked/>未达成
                    </th>
                </tr>


            </tbody>
        </table>
        </div>
        <div class="table_right">
            <div class="process_title">处理流程</div>
            <div class="process_item clearFix">
                <img src="../image/profile-full-male.png" class="clearFix" alt=""/>
                <div class="item_text clearFix">
                    <a href="#">胡家煊</a><span>2016/4/14</span>
                    <p>已经提交审批</p>
                </div>

            </div>
        </div>
    </div>
</div>
<script src="<c:url value="/resources/js/jquery-2.2.2.js"/>"></script>
<script src="<c:url value="/resources/js/header_bar.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-ui.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script>
    
</script>
</body>
</html>