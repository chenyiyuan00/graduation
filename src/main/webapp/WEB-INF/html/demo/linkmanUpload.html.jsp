﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <title>演示:联系人上传</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main.css">
</head>
<body>

<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">EasyVote</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="../../index.html">首页</a></li><li><a href="${pageContext.request.contextPath}/search/">搜索</a></li>
                <li><a href="../vote/startVote.html">投票</a></li>
                <li><a href="../user/selfCenter.html">个人</a></li>
                <li class="active"><a href="../demo/demo.html">演示</a></li>
                <li><a href="../help/help.html">帮助</a></li>
                <li><a href="../about/about.html">关于</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">更多 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="../more/activity.html">活动</a></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">隐私政策</li>
                        <li><a href="../more/userData.html">用户数据</a></li>
                        <li><a href="../more/platformPolicy.html">平台政策</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
				<%@include file="../user/userBar.jsp"%>
			</ul>
        </div>
    </div>
</nav>

<div class="content">
    <div class="row">
        <div class="col-md-8">
            <div class="jumbotron">
                <h4>Excel上传模式</h4>
                &nbsp;&nbsp;&nbsp;&nbsp;为了用户更方便的管理联系人管理，我们提供了Excel模式。但是如果格式不正确可能会出行解析错误，所以使用此模式请下载模版并填写。
                <a href="上传联系人格式模版.xls" class="btn btn-sm btn-success">下载模版</a>
            </div>
        </div>

        <div class="col-md-4">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h4>相关演示</h4>
                </div>
                <div class="panel-body">
                    <ul>
                        <li><a href="#">##</a></li>
                        <li><a href="#">##</a></li>
                        <li><a href="#">##</a></li>
                    </ul>
                </div>
                <div class="panel-footer">

                </div>
            </div>
        </div>

    </div>
</div>

<%@ include file="../reusable/footer.jsp" %>

<script src="${pageContext.request.contextPath}/resources/easyui/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>