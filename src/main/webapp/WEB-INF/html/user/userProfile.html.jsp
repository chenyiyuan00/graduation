﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="zh-CN">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<title>用户:信息</title>
<link rel="stylesheet" href="/easyvote/staticFile/css/bootstrap.min.css">
<link rel="stylesheet" href="/easyvote/staticFile/main.css">

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
			<a class="navbar-brand" href="/easyvote/">EasyVote</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="/easyvote/">首页</a></li>
				<li><a href="/easyvote/vote/startVote.html">投票</a></li>
				<li><a href="/easyvote/poll/startPoll.html">问卷</a></li>
				<li class="active"><a href="/easyvote/user/selfCenter.html">个人</a></li>
				<li><a href="/easyvote/demo/demo.html">演示</a></li>
				<li><a href="/easyvote/help/help.html">帮助</a></li>
				<li><a href="/easyvote/about/about.html">关于</a></li>
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
				<%@include file="userBar.jsp"%>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container content">
		<ol class="breadcrumb">
			<li><a href="../../index.html">首页</a></li>
			<li><a href="selfCenter.html">个人中心</a></li>
			<li class="active">个人资料</li>
		</ol>

		<div class="row">
			<div class="col-sm-3">
				<div class="panel-success">
					<div class="panel-heading">
						<h4>
							<i class="glyphicon glyphicon-cog"></i>个人管理中心
						</h4>
					</div>
					<div class="panel-body">
						<div class="panel-group" id="accordion">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h4 class="panel-title">
										<i class="glyphicon glyphicon-user"></i> 账号管理
									</h4>
								</div>
								<div id="collapseOne" class="panel ">
									<div class="panel-body">
										<ul>
											<li><a href="userProfile.html">个人资料 </a></li>
											<li><a href="userAccount.html">我的账号 </a></li>
											<li><a href="userOrder.html">我的订单 </a></li>
											<li><a href="userConsole.html">控制面板</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-success">
								<div class="panel-heading">
									<h4 class="panel-title">
										<i class="glyphicon glyphicon-th-list"></i> 内容管理
									</h4>
								</div>
								<div class="panel ">
									<div class="panel-body">
										<ul>
											<li><a href="myLinkman.html">我的联系人</a><span
												class="badge">3</span></li>
											<li><hr></li>
											<li><a href="myPoll.html">我的问卷</a><span class="badge">4</span></li>
											<li><a href="myVote.html">我的投票</a><span class="badge">10</span></li>
											<li><a href="myInfoGather.html">我的信息收集</a><span
												class="badge">1</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="col-sm-9">
				<ul class="nav nav-tabs" id="userInfo">
					<li role="presentation" class="active"><a href="#baseInfo">个人基本资料</a></li>
					<li role="presentation"><a href="#detailInfo">个人详细资料</a></li>
				</ul>

				<div class="tab-content">

					<div class="tab-pane active" id="baseInfo">
						<br>

						<form:form class="form-horizontal"
							action="/easyvote/user/updateUserBaseInfo.do"
							modelAttribute="userBaseInfo" method="POST">

							<div class="form-group">
								<label class="col-md-2 control-label">邮箱</label>

								<div class="col-sm-4">
									<input type="email" class="form-control" name="email"
										value="${userBaseInfo.email }" readonly>
								</div>
							</div>

							<div class="form-group">
								<label for="nicknameInput" class="col-md-2 control-label">昵称</label>

								<div class="col-sm-4">
									<form:input type="text" id="nicknameInput" name="nickName"
										class="form-control" placeholder="新的昵称" value="${nickName }"
										path="nickName" />
								</div>
							</div>

							<div class="form-group">
								<label for="passwordInput" class="col-md-2 control-label">原密码</label>

								<div class="col-sm-4">
									<input type="password" id="passwordInput" name="password"
										class="form-control" placeholder="输入旧的密码">
								</div>
							</div>

							<div class="form-group">
								<label for="newPasswordInput" class="col-md-2 control-label">新密码</label>

								<div class="col-sm-4">
									<input type="password" id="newPasswordInput" name="newPassword"
										class="form-control" placeholder="输入新的密码">
								</div>
							</div>

							<div class="form-group">
								<label for="reNewPasswordInput" class="col-md-2 control-label">确认密码</label>

								<div class="col-sm-4">
									<input type="password" id="reNewPasswordInput"
										name="reNewPassword" class="form-control"
										placeholder="再次输入新的密码">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label" for="secondPasswordInput">二级密码</label>

								<div class="col-sm-4">
									<input type="password" id="secondPasswordInput"
										name="secondPassword" class="form-control"
										placeholder="修改二级密码，需要输入密码">
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-2"></div>
								<div class="col-sm-2">
									<input type="submit" value="修改信息" class="btn btn-primary">
								</div>
							</div>

						</form:form>
					</div>

					<div class="tab-pane" id="detailInfo">
						<br>

						<form class="form-horizontal" action="/easyvote/user/updateUserDetailInfo.do" method="POST">

							<div class="form-group">
								<label class="col-md-2 control-label" for="realNameInput">真实姓名</label>

								<div class="col-sm-4">
									<input type="text" id="realNameInput" name="realName"
										class="form-control" placeholder="真实姓名，保证可信性">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label" id="sex">性别</label>

								<div class="col-sm-4">
									<input type="radio" name="sex"> 男 <input type="radio"
										name="sex"> 女
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label" for="telInput">电话</label>

								<div class="col-sm-4">
									<input type="tel" id="telInput" name="tel" class="form-control"
										placeholder="有必要时我们会用电话或者短信联系你">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label" for="addressInput">地址</label>

								<div class="col-sm-4">
									<input type="tel" id="addressInput" name="address"
										class="form-control" placeholder="你的联系地址">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label" for="companyInput">公司/机构</label>

								<div class="col-sm-4">
									<input type="tel" id="companyInput" name="company"
										class="form-control" placeholder="你的联系地址">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label" for="workInput">工作</label>

								<div class="col-sm-4">
									<input type="tel" id="workInput" name="work"
										class="form-control" placeholder="你的工作">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-2 control-label" for="aboutYouInput">关于你</label>

								<div class="col-sm-4">
									<textarea class="form-control" name="aboutYou"
										id="aboutYouInput" rows="5" cols="50" placeholder="关于你..."></textarea>
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-2"></div>
								<div class="col-sm-2">
									<button type="submit" role="button" class="btn btn-primary">
										更新</button>
								</div>
							</div>

						</form>
					</div>

				</div>
			</div>
		</div>
	</div>

	<footer class="footer">
	<div class="col-md-1"></div>
	<div class="col-md-2">
		<h2>EasyVote</h2>
		<ul>
			<li><a href="">版权声明</a></li>
			<li><a href="">使用须知</a></li>
			<li><a href="">隐私策略</a></li>
			<li><a href="">关于我们</a></li>
		</ul>
	</div>
	<div class="col-md-1"></div>
	<div class="col-md-2">
		<br>

		<h3>网站备案</h3>

		<p>京201510-34534****</p>
	</div>
	</footer>

	<script src="/easyvote/staticFile/js/jquery-1.11.0.min.js"></script>
	<script src="/easyvote/staticFile/js/bootstrap.min.js"></script>
	<script src="/easyvote/staticFile/site/user/userProfile-tab-switch.js"></script>
</body>
</html>