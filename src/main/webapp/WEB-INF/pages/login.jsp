<%@ page contentType="text/html; charset=utf-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet"  type="text/css" href="<c:url value="/resources/style/login.css"/>"/>
</head>
<body>
    <div class="login_tittle">
        <p>公司差旅管理系统</p>
    </div>
    <div id="login_box">  
        <div class="login_block">
            <p class="login_input">用户名或电子邮箱</p>
            <input type="text" id="login_account">
            <p class="login_input">密码</p>
            <input type="password" id="login_password">
        </div>
        <input type="submit" name = "login" onclick="login_query()" id="login" value="登录" class="login_btn">
    </div>
    <script type="text/javascript" src="<c:url value="/resources/js/jquery-2.2.2.js"/> " ></script>
<script type="text/javascript" src="<c:url value="/resources/js/login/login.js"/> " ></script>
</body>
</html>