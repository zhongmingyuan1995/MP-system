<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
				<link rel="shortcut icon" href="http://cn.bjmu.findplus.cn/img/user/default//favicon.ico" />
		        <title>医保处方管理系统--注册</title>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.min.css" >
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common.css">
</head>
<body>
    <!-- top -->
	<div class="toppanel">
		<div class="container">
			<div class="container">
				<span><a href="index.jsp">首页</a></span><span><a href="#"
					target="_blank">导航</a></span> <span><a href="#" target="_blank">试用</a></span><span><a
					href="#" target="_blank">个人中心</a></span><span><a href="#"
					target="_blank">无法登录，联系我们</a></span>
				<div class="loginpanel row">
				
					<!-- 部分用户不需要显示登录信息 -->					
					<ul class="lufin">
						<li id="user_zc_a"><a href="user.html?h=regist"
							target='_blank'>注册</a></li>
						<li id="user_lo_a"><span
							class="glyphicon glyphicon-folder-close" aria-hidden="true"></span><a
							data-target="#myModal_login" data-toggle="modal"
							href="javascript:;" title="用户登录">登录</a></li>
						
						<!---显示登录按钮--->
						<li><a id="user_ou_a"
							href="control.html?control_type=login_out" target='_self'
							style="display: none;">退出</a></li>
						<li><span class="glyphicon glyphicon-folder-close"
							aria-hidden="true"></span><a href="user.html?h=articles_list"
							target='_blank'>收藏夹(<span id="user_sc_articles">0</span>)</a></li>
						<li><a href="user.html?h=search_history" target='_blank'>检索历史</a></li>
					</ul>
					
					<!-- 部分用户不需要显示登录信息 -->
					<div class="dropdown">
						<button class="btn btn-default dropdown-toggle lugchose"
							type="button" id="dropdownMenu1" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="true">
							语言<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1"
							style="min-width: 100px;">
							<li><a href="?h=login&lan=ch">中文</a></li>
							<li><a href="?h=login&lan=en">英文</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>