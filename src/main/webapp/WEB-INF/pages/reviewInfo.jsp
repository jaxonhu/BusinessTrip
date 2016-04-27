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
    <link rel="stylesheet" href="<c:url value="/resources/style/reviewInfo.css"/> " type="text/css"/>
    <link rel="stylesheet" href="<c:url value="/resources/style/jquery-ui.min.css"/>" type = "text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/bootstrap.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/style/applyInfo.css"/>" type="text/css"/>
</head>
<body onload="checkBoxInit('${apply.apply_res}');diff_position('${user.user_role}');">
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
        <a href="" >
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
                    <th colspan="2">${apply.user_account}</th>
                    <th colspan="1">目的地</th>
                    <th colspan="2">${apply.trip_destination}</th>
                </tr>
                <tr>
                    <th colspan="1">事由</th>
                    <th colspan="7">${apply.trip_reason}</th>
                </tr>
                <%--<tr>--%>
                    <%--<th colspan="1">交通工具</th>--%>
                    <%--<th colspan="7"><input type="checkbox" checked>汽车--%>
                   <%--<input type="checkbox" checked/>火车--%>
                    <%--<input type="checkbox" checked/>飞机--%>
                    <%--<input type="checkbox" checked/>轮船--%>
                    <%--<input type="checkbox" checked/>私家车</th>--%>
                <%--</tr>--%>
                <tr>
                    <th colspan="8">预算申请</th>
                </tr>

                <c:forEach items="${budgets}" var="item" varStatus="vs">
                    <tr>
                        <th colspan="1">${item.budget_class}(元)</th><th colspan="1">${item.budget_price}</th>
                        <th colspan="2">数量</th><th colspan="2">${item.budget_num}</th>
                        <th colspan="1">明细</th><th colspan="1">${item.budget_info}</th>
                    </tr>
                </c:forEach>
                <tr>
                    <th colspan="5">合计</th><th colspan="5">${apply.budget_money}</th>

                </tr>
                <tr >
                    <th rowspan="1" style="height: 100px !important;">差旅汇报</th>
                    <th rowspan="1" colspan="7" style="height: 100px !important;"></th>
                </tr>
                <tr>
                    <th colspan="1">差旅达成情况</th>
                    <th colspan="7">
                        <input class="input_check" type="checkbox" disabled />达成
                        <input class="input_check" type="checkbox" disabled/>基本达成
                        <input class="input_check" type="checkbox" disabled />未达成
                    </th>
                </tr>
                <tr>
                    <th colspan="1">差旅申请状态</th>
                    <th colspan="7">${apply.apply_state}</th>
                </tr>

            </tbody>
        </table>
            <div class="review">
                <div class="review_input">
                    <input id="review_through" name="review" type="radio" />审批通过
                    <input id="review_not_through"  name="review" type="radio" />审批不通过
                </div>

                审批意见：<textarea id="review_comment"></textarea>
                <div class="review_commit">
                    <a id="commit" href="javascript:void(0);" onclick="post_review();">提交</a>
                    <a href="javascript:void(0);" onclick="get_back();" >返回</a>
                </div>
            </div>
        </div>
        <div class="table_right">
            <div class="process_title">处理流程</div>
            <div class="process_item clearFix">
                <img src="<c:url value="/resources/image/profile-full-male.png"/>" class="clearFix" alt=""/>
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
    $(function(){

    });
    function checkBoxInit(data){
        switch(data){
            case "达成": $(".input_check:eq(0)").attr("checked",true);break;
            case "基本达成": $(".input_check:eq(1)").attr("checked",true);break;
            case "未达成": $(".input_check:eq(2)").attr("checked",true);break;
            default : break;
        }
    }
    function diff_position(position){
        if(position == "manager"){

            $(".tong_ji:eq(0)").after("<a href='<%=request.getContextPath()%>/review'><li>差旅审批</li></a>");
        }
    }
    function post_review(){
        var review_comment = $("#review_comment").val();
        var review_choose;
        var review_date = new Date().toLocaleDateString();
        if($("#review_through").prop("checked")){
            console.log("yes");
            review_choose = "审批通过";
        }
        if($("#review_not_through").prop("checked")){
            console.log("no");
            review_choose = "审批不通过";
        }
        var data = {
            review_comment: review_comment,
            review: review_choose,
            review_date:review_date
                };
        console.log(JSON.stringify(data));
        $.ajax({
            type:"POST",
            url:"/BusinessTrip/review/commit/"+${apply.apply_id},
            data:data,
            success: function(){
                alert("审核通过");
//                window.location.href="/BusinessTrip/review";
            },
            error:function(XMLHttpRequest, textStatus, errorThrown) {
                alert(XMLHttpRequest.status);
                alert(XMLHttpRequest.readyState);
                alert(textStatus);
            }
        });
    }
    function get_back(){
        window.location.href="/BusinessTrip/review";
    }
</script>
</body>
</html>