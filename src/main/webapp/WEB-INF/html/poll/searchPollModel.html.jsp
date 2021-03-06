<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>问卷:模版搜索</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main.css">
    <link rel="stylesheet" href="../../userDefined/poll/progress-nav.css">

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
                <li class="active"><a href="../poll/startPoll.html">问卷</a></li>
                <li><a href="../user/selfCenter.html">个人</a></li>
                <li><a href="../demo/demo.html">演示</a></li>
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

<div class="container content">
    <div class="jumbotron">
        <div class="progress-nav">
            <span class="ing">选择模版</span>
            <span> <i class="glyphicon glyphicon-arrow-right"></i> </span>
            <span class="will">编辑模版</span>
            <span> <i class="glyphicon glyphicon-arrow-right"></i> </span>
            <span class="will">预览发布</span>
            <span> <i class="glyphicon glyphicon-arrow-right"></i> </span>
            <span class="will">成功发起</span>
            <span> <i class="glyphicon glyphicon-arrow-right"></i> </span>
            <span class="will">结束</span>
        </div>
    </div>
</div>

<footer class="footer">
    <div class="col-md-1">
    </div>
    <div class="col-md-2">
        <h2>EasyVote</h2>
        <ul>
            <li><a href="">版权声明</a></li>
            <li><a href="">使用须知</a></li>
            <li><a href="">隐私策略</a></li>
            <li><a href="">关于我们</a></li>
        </ul>
    </div>
    <div class="col-md-1">
    </div>
    <div class="col-md-2">
        <br>

        <h3>网站备案</h3>

        <p>京201510-34534****</p>
    </div>
</footer>

<script src="${pageContext.request.contextPath}/resources/easyui/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>