<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>投票:预览</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main.css">
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
			<a class="navbar-brand" href="/index.html">EasyVote</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="../../index.html">首页</a></li>
				<li><a href="${pageContext.request.contextPath}/search/">搜索</a></li>
				<li class="active"><a href="../vote/startVote.html">投票</a></li>
				<li><a href="../user/selfCenter.html">个人</a></li>
				<li><a href="../demo/demo.html">演示</a></li>
				<li><a href="../help/help.html">帮助</a></li>
				<li><a href="../about/about.html">关于</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">更多 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../more/activity.html">活动</a></li>
						<li class="divider"></li>
						<li class="dropdown-header">隐私政策</li>
						<li><a href="../more/userData.html">用户数据</a></li>
						<li><a href="../more/platformPolicy.html">平台政策</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<%@include file="../user/userBar.jsp"%>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container content">
		<div class="alert-success">
			你应经成功的提交要问题，接下来你可以发布它，邀请其他人来参加问题填写。在发布时你要选取一种授权方式（公开的/保护的/私有的）。
			公有的：既不需要授权。人人都可以参加。保护的：我们会生成一个安全密码，在填写前我们会要求输入这个密码。只有密码正确才能进入填写。
			私有的：它是在使用联系人的情况，为每个受邀请的联系人生成一个密码，只有正确输入得联系方式和密码才能填写，且无法进行多次提交。如果，使用私用的授权方式，
			请先上传，要使用的联系人。 在发布之前，请记得先自己预览一下。</div>
		<p>
			<a class="btn btn-primary" role="button"
				href="${pageContext.request.contextPath}/vote/publish/${voteId }">发布</a>
			&nbsp;&nbsp;&nbsp;&nbsp; <a class="btn btn-default" role="button"
				href="${pageContext.request.contextPath}/user/myLinkman.html">上传联系人</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a class="btn btn-default" role="button"
				href="${pageContext.request.contextPath}/vote/editVoteByHTML/${voteId }">继续编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;

		</p>
	</div>


<%@ include file="../reusable/footer.jsp" %>
</body>
</html>