<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<title>用户:注册</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main.css">
</head>
<body>

	<nav class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="../../index.html">EasyVote</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/">首页</a></li><li><a href="${pageContext.request.contextPath}/search/">搜索</a></li>
				<li><a href="${pageContext.request.contextPath}/vote/startVote.html">投票</a></li>
				<li><a href="${pageContext.request.contextPath}/poll/startPoll.html">问卷</a></li>
				<li class="active"><a href="${pageContext.request.contextPath}/user/selfCenter.html">个人</a></li>
				<li><a href="${pageContext.request.contextPath}/demo/demo.html">演示</a></li>
				<li><a href="${pageContext.request.contextPath}/help/help.html">帮助</a></li>
				<li><a href="${pageContext.request.contextPath}/about/about.html">关于</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">更多 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../more/activity.html">活动</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">隐私政策</li>
						<li><a href="../more/userData.html">用户数据</a></li>
						<li><a href="../more/preform.html">平台政策</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<%@include file="../user/userBar.jsp"%>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container content">
		<div class="page-header">
			<h3>注册成功</h3>
		</div>
		<div class="row">
			<div class="col-lg-9">
				<div class="jumbotron">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你已成功注册，我们会发送一封确认邮件到你的注册时使用的邮箱。请在邮件中激活你的账户，只有确认后才可使用账户登录。
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你已经成为EasyVote的注册用户你可以，<a
						href="" target="_blank">购买套餐</a>为你更好的服务。 <br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;更多精彩点击
					<a href="${pageContext.request.contextPath}/user/userLogin.html" role="button" class="btn btn-primary">登录</a>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3>快速操作</h3>
					</div>
					<div class="panel-body">
						<ul>
							<li><a href="" target="_blank"> 创建联系人组</a></li>
							<li><a href="" target="_blank"> 修改个人信息</a></li>
							<li><a href="" target="_blank"> 创建新的投票</a></li>
							<li><a href="" target="_blank"> 查看详细演示</a></li>
							<li><a href="" target="_blank"> 进入个人中心</a></li>
						</ul>
					</div>
				</div>

			</div>

		</div>

		<hr>

	</div>

	<div></div>

<%@ include file="../reusable/footer.jsp" %>

	<script src="${pageContext.request.contextPath}/resources/easyui/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>