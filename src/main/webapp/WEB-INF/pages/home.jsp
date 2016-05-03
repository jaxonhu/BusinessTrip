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
    <link rel="stylesheet" href="<c:url value="/resources/style/common.css"/>" type="text/css">
    <link rel="stylesheet" href="http://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css">
</head>
<body onload="diff_position('${user.user_role}');" >
    <div class="header ">
        <ul class="header_left ">
            <li><a href="">我的差旅</a></li>
            <a href=""> <li>差旅申请</li></a>
            <a href=""><li>报销</li></a>
            <a class="tong_ji" href=""><li>统计</li></a>

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
    
    <div class="main_content">
        <div class="left_sidebar">
            <a href=""  class="sidebar_active">
                <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">首页</span>
                </span>
            </a>
            <a href="<%=request.getContextPath()%>/mytrip">
                 <span class="span_item">
                    <span class="nav_icons home"></span>
                    <span class="left_sidebar_title">我的差旅</span>
                </span>
            </a>
            <a href="<%=request.getContextPath()%>/apply">
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
            <div class="content_left">
                <p>分享你的最新动态...</p>
                <div class="dp_share clearFix">
                    <div class="stream_share_input" onclick="showShare();" contenteditable="true" spellcheck="false" accesskey="q"></div>
                    <a class="stream_publish" href="javascript:void(0);" onclick="weibo_publish();">发布</a>
                </div>
                <div class="profile_dp_list">
                    <c:forEach items="${weibo_list}" var="list" varStatus="vs">
                    <div class="profile_dp_item" id="${list.weibo_id}">
                        <img src="${list.user_face_url}" alt=""/>
                        <div class="dp_content clearFix">
                            <a href="javascript:void(0);">${list.user_account}</a>
                            <span>${list.weibo_date}</span>
                            <p>${list.weibo_content}</p>
                            <div class="dp_btns">
                                <a href="javascript:void(0);" class="thumb_on" onclick="give_thumbon('${list.weibo_id}',${list.thumb_on});"><i class="fa fa-thumbs-o-up"></i> ${list.thumb_on}</a>
                                <a href="javascript:void(0);" onclick="showComments(${vs.index},'${list.weibo_id}');" class="comments_publish"><i class="fa fa-edit"></i> 评论</a>
                            </div>

                        </div>
                        <div class="dp_comments">
                            <div class="comments_input" contenteditable="true" spellcheck="false" accesskey="q" >
                            </div>
                            <input type="button" onclick="putComment('${list.weibo_id}',${vs.index})" value="提交评论" class="comment_post"/>
                            <div class="comments_list">

                            </div>
                        </div>
                    </div>
                    </c:forEach>

                </div>
            </div>
            <div class="content_right">
                <p>软件学院</p>
                <div class="member_manager clearFix">
                    <p>部门经理：</p>

                    <c:forEach items="${managers}" var="list" varStatus="vs">
                        <div class="member_item">
                            <img src="${list.user_face_url}" alt=""/>
                            <a href="/BusinessTrip/profile/${list.user_id}">${list.user_account}</a>
                        </div>
                    </c:forEach>
                </div>
                <div class="member_employee clearFix">
                    <p>部门成员：</p>
                    <c:forEach items="${employees}" var="list" varStatus="vs">
                        <div class="member_item">
                            <img src="<c:url value="${list.user_face_url}"/>" alt=""/>
                            <a href="">${list.user_account}</a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
  
  <script src="<c:url value="/resources/js/jquery-2.2.2.js"/>"></script>
 <script src="<c:url value="/resources/js/header_bar.js"/>"></script>
    <script>
        $(function(){
            var divs = $(".profile_dp_item");

            for(var i = 0;i<divs.length;i++){
                var obj = $(".profile_dp_item:eq("+i+")");
                var weibo_id = obj.prop("id");
                loadComments(i,weibo_id);
            }
        });
        function weibo_publish(){
//           var obj = document.getElementsByClassName("stream_share_input")[0];
            var obj = $(".stream_share_input:eq(0)")
            var content = obj.html();
            var date = new Date().toLocaleDateString();
            $.ajax({
                type:"POST",
                url:"/BusinessTrip/weibo/publish",
                data:{
                    weibo_content: content,
                    weibo_date: date
                },
                dataType:"text",
                success:function(data){
                    alert("发布成功");
                },
                error:function(){
                    alert("ajax链接失败");
                }
            });
        }

        function diff_position(position){
            if(position == "manager"){

                $(".tong_ji:eq(0)").after("<a href='<%=request.getContextPath()%>/review'><li>差旅审批</li></a>");
            }
        }
        function putComment(WeiboId,index){
            alert($(".comments_input:eq("+index+")").html());
            var comment = $(".comments_input:eq("+index+")").html();
            var date = new Date().toLocaleDateString();
            $.ajax({
                type:"POST",
                url:"/BusinessTrip/weibo/comments/publish",
                data:{
                    weibo_id:WeiboId,
                    comment:comment,
                    date:date
                },
                success:function(){
                    alert("评论成功");
                },
                error:function(){
                    alert("ajax连接失败");
                }
            });
        }
        function loadComments(index1,weiboId){
            $.ajax({
                type:"POST",
                url:"/BusinessTrip/weibo/comments",
                data:{
                    weibo_id:weiboId
                },
                dataType:"json",
                success:function(data){
                    if(data){
                        $.each(data,function(index){
                            var content="<div class=\"comments_item\">" +
                                    "<img src='"+data[index].user_face_url+"' alt=''/> " +
                                    "<div class='comments_item_content'> " +
                                    "<a class='comment_author' href='javascript:void(0);'>"+data[index].user_account+":</a>" +
                                    "<p class='comment_content'>"+data[index].comment+"</p>" +
                                    "<span class='comment_date'>"+data[index].comment_date+"</span> " +
                                    "</div>" +
                                    "</div>";
                            var obj = $(".comments_list:eq("+index1+")");
                            obj.append(content);

                        });
                    }
                },
                error:function(){
                    alert("ajax链接失败");
                }
            });
        }
        function showComments(index,weiboId){
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
        function give_thumbon(weiboId,num){

            var data = num+1;
            var data_ = "'"+data+"'";
            $.ajax({
                type:"POST",
                url:"/BusinessTrip/weibo/thumbOn",
                data:{
                    num:data,
                    weibo_id:weiboId
                },
                success: function(data){
                    alert("点赞成功");
                },
                error: function(){
                    alert("ajax链接失败");
                }
            });
        }
    </script>
</body>
</html>