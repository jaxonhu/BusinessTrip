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
<body onload="diff_position('${user.user_role}');">
<div class="header ">
    <ul class="header_left ">
        <li><a href="">我的差旅</a></li>
        <a href=""> <li>差旅申请</li></a>
        <a href=""><li>报销</li></a>
        <a href="" class="tong_ji"><li>统计</li></a>
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
            <li><a href="<%=request.getContextPath()%>/profile">个人主页</a></li>
            <li><a href="<%=request.getContextPath()%>/notification">通知中心</a></li>
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
            <li class="setting_active"><a href="<%=request.getContextPath()%>/setting/profile">个人信息</a></li>
        </ul>
    </div>
    <div class="right_content">
        <h1 class="content_header">个人信息</h1>
        <div class="module clearFix">
            <img src="${user.user_face_url}" alt=""/>
            <input id="image_face" type="file" name="file"/>
            <%--<input value="上传" type="button" id="upload" onclick="ima();">--%>
            <a class="module1_a"  href="javascript:void(0);" onclick="imageUpload();">上传头像</a>


            <p>姓名</p>
            <input type="text" disabled value="${user.user_account}"/>
            <p>联系方式</p>
            <input type="text" id="phone" value="${profile.phone}"/>
            <p>个人介绍</p>
            <input type="text" id="self_description" value="${profile.description}"/>
            <a class="save_profile" href="javascript:void(0);" onclick="save_profile();">保存个人信息</a>
        </div>

    </div>
</div>

<script src="<c:url value="/resources/js/jquery-2.2.2.js"/> "></script>
<script src="<c:url value="/resources/js/header_bar.js"/> "></script>
<script src="<c:url value="/resources/js/ajaxfileupload.js"/>"></script>
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

    function save_profile(){
        var phone = $("#phone").val();
        var description = $("#self_description").val();
        $.ajax({
            type:"POST",
            url:"/BusinessTrip/setting/profile/save",
            data:{
                phone:phone,
                description:description
            },
            dataType:"text",
            success:function(){
                alert("保存成功");
            },
            error:function(){
                alert("保存失败");
            }
        });
    }
    function diff_position(position){
        if(position == "manager"){

            $(".tong_ji:eq(0)").after("<a href='<%=request.getContextPath()%>/review'><li>差旅审批</li></a>");
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
    function imageUpload(){
        alert("hello");
        $.ajaxFileUpload({
            url : '/BusinessTrip/upload', //用于文件上传的服务器端请求地址
            fileElementId : 'image_face', //文件上传空间的id属性  <input type="file" id="file" name="file" />
            type : 'post',
            dataType : 'text', //返回值类型 一般设置为json
            success : function(data, status) //服务器成功响应处理函数
            {
                alert("头像上传成功");
                //$("#picList").datagrid('reload');
                //$('#uploadPicWindow').window('close');
                // alert(data.msg);
            },
            error : function(data, status, e)//服务器响应失败处理函数
            {
                alert("图片上传失败");
                //$("#picList").datagrid('reload');
                //$('#uploadPicWindow').window('close');
                // alert(data.msg);
            }
        });
    }
</script>
</body>
</html>