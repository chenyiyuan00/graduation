﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<title>用户:登录</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main.css">
</head>
<body>

	<nav class="navbar navbar-default ">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}/">EasyVote</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/">首页</a></li><li><a href="${pageContext.request.contextPath}/search/">搜索</a></li>
				<li><a
					href="${pageContext.request.contextPath}/vote/startVote.html">投票</a></li>
				<li class="active"><a
					href="${pageContext.request.contextPath}/user/selfCenter.html">个人</a></li>
				<li><a href="${pageContext.request.contextPath}/demo/demo.html">演示</a></li>
				<li><a href="${pageContext.request.contextPath}/help/help.html">帮助</a></li>
				<li><a
					href="${pageContext.request.contextPath}/about/about.html">关于</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">更多 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a
							href="${pageContext.request.contextPath}/more/activity.html">活动</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">隐私政策</li>
						<li><a
							href="${pageContext.request.contextPath}/more/userData.html">用户数据</a></li>
						<li><a
							href="${pageContext.request.contextPath}/more/platformPolicy.html">平台政策</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<%@include file="../user/userBar.jsp"%>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container content">
		<div class="row">

			<div class="col-sm-8">

				<h2>用户登录</h2>
				<p></p>


				<form:form class="form-horizontal"
					action="${pageContext.request.contextPath}/user/userLogin.do"
					method="POST" modelAttribute="userToken" id="loginForm">

					<div class="form-group">
						<label for="emailInput" class="col-md-3 control-label">邮箱</label>

						<div class="col-sm-4">
							<form:input type="email" class="form-control" id="emailInput"
								name="email" placeholder="注册的邮箱" path="email" />
						</div>
						<div>
							<form:errors path="email"></form:errors>
						</div>
					</div>

					<div class="form-group">
						<label for="passwordInput" class="col-md-3 control-label">密码</label>

						<div class="col-sm-4">
							<form:input type="password" class="form-control" name="password"
								id="passwordInput" placeholder="登录密码" path="password" />
						</div>
						<div>
							<form:errors path="password"></form:errors>
						</div>
					</div>

					<div>
						<p>${message }</p>
					</div>

					<div class="form-group">
						<div class="col-sm-3"></div>
						<div class="col-sm-2">
							<input type="submit" class="btn btn-primary" value="登录>>" />
						</div>
						<div class="col-sm-2">
							<a href="userSignIn.html" role="button"
								class="btn btn-sm btn-default">注册</a>
						</div>
					</div>
				</form:form>
			</div>

			<div class="col-sm-4">
				<div class="page-header">
					<h3></h3>
				</div>
				<pre class="pre-scrollab">
				
				</pre>
			</div>

		</div>
	</div>

	<%@ include file="../reusable/footer.jsp" %>

	<script
		src="${pageContext.request.contextPath}/resources/easyui/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#loginForm").validator();
		});

		function reloadKaptchaImage() {
			var verify = $("#kaptchaImage");
			verify.attr('src', '${pageContext.request.contextPath}/captchaImage?'+ Math.random());
		}
	</script>
</body>
</html>