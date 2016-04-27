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
    <link rel="stylesheet" href="<c:url value="/resources/style/profile.css"/> " type="text/css"/>
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
    <div class="clearFix">
        <div class="profile-head blue long"></div>
        <div class="profile-head orange "></div>
        <div class="profile-head green "></div>
        <div class="profile-head blue "></div>
        <div class="profile-head orange "></div>
        <div class="profile-head green long"></div>

    </div>
    <div class="profile_header">

        <img src="<c:url value="/resources/image/profile-full-male.png"/>" alt=""/>
        <div class="profile_header_content">
            <h2 class="profile_name">胡家煊</h2>
            <div class="profile_description">啊哈哈哈哈哈哈哈哈哈哈哈哈</div>
            <div class="profile_department">软件学院</div>
            <div class="profile_contact">370403444@qq.com</div>
            <a class="profile_edit" href="javascript:void(0);">编辑您的个人信息</a>
        </div>
    </div>
    <div class="profile_bar">
        <a href="javascript:void(0);">个人动态</a>
    </div>


    <div class="profile_dp_list">
        <div class="profile_dp_item">
            <img src="<c:url value="/resources/image/profile-full-male.png"/>" alt=""/>
            <div class="dp_content clearFix">
                <a href="javascript:void(0);">胡家煊</a>
                <span>2016-04-24</span>
                <p>。。。。。。。。。。。。。。。。。。。。</p>
                <div class="dp_btns">
                    <a href="javascript:void(0);" class="thumb_on"><i class="fa fa-thumbs-o-up"></i> 2</a>
                    <a href="javascript:void(0);" onclick="showComments(0);" class="comments_publish"><i class="fa fa-edit"></i> 评论</a>
                </div>

            </div>
            <div class="dp_comments">
                <div class="comments_input" contenteditable="true" spellcheck="false" accesskey="q" >
                </div>
                <input type="button" value="提交评论" class="comment_post"/>
                <div class="comments_list">
                    <div class="comments_item">
                        <img src="<c:url value="/resources/image/profile-full-male.png"/>" alt=""/>
                        <div class="comments_item_content">
                            <a class="comment_author" href="javascript:void(0);">胡家煊:</a>
                            <p class="comment_content">aaaaaaaaaaa</p>
                            <span class="comment_date">2016-04-24</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="profile_dp_item">
            <img src="<c:url value="/resources/image/profile-full-male.png"/>" alt=""/>
            <div class="dp_content clearFix">
                <a href="javascript:void(0);">胡家煊</a>
                <span>2016-04-24</span>
                <p>。。。。。。。。。。。。。。。。。。。。</p>
                <div class="dp_btns">
                    <a href="javascript:void(0);" class="thumb_on"><i class="fa fa-thumbs-o-up"></i> 2</a>
                    <a href="javascript:void(0);" onclick="showComments(1);" class="comments_publish"><i class="fa fa-edit"></i> 评论</a>
                </div>

            </div>
            <div class="dp_comments">
                <div class="comments_input" contenteditable="true" spellcheck="false" accesskey="q" >
                </div>
                <input type="button" value="提交评论" class="comment_post"/>
                <div class="comments_list">
                    <div class="comments_item">
                        <img src="<c:url value="/resources/image/profile-full-male.png"/>" alt=""/>
                        <div class="comments_item_content">
                            <a class="comment_author" href="javascript:void(0);">胡家煊:</a>
                            <p class="comment_content">aaaaaaaaaaa</p>
                            <span class="comment_date">2016-04-24</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="profile_dp_item">
            <img src="<c:url value="/resources/image/profile-full-male.png"/>" alt=""/>
            <div class="dp_content clearFix">
                <a href="javascript:void(0);">胡家煊</a>
                <span>2016-04-24</span>
                <p>。。。。。。。。。。。。。。。。。。。。</p>
                <div class="dp_btns">
                    <a href="javascript:void(0);" class="thumb_on"><i class="fa fa-thumbs-o-up"></i> 2</a>
                    <a href="javascript:void(0);" onclick="showComments(2);" class="comments_publish"><i class="fa fa-edit"></i> 评论</a>
                </div>

            </div>
            <div class="dp_comments">
                <div class="comments_input" contenteditable="true" spellcheck="false" accesskey="q" >
                </div>
                <input type="button" value="提交评论" class="comment_post"/>
                <div class="comments_list">
                    <div class="comments_item">
                        <img src="<c:url value="/resources/image/profile-full-male.png"/>" alt=""/>
                        <div class="comments_item_content">
                            <a class="comment_author" href="javascript:void(0);">胡家煊:</a>
                            <p class="comment_content">aaaaaaaaaaa</p>
                            <span class="comment_date">2016-04-24</span>
                        </div>
                    </div>
                </div>
            </div>
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
</script>
</body>
</html>