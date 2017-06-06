<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon"
	href="http://cn.bjmu.findplus.cn/img/user/default//favicon.ico" />
<title>医保处方管理系统--登录</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/common.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/my.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery-1.10.2.min.js"></script>
</head>
<body>
    <!-- footer -->	
	<%@include file="zhuce_top.jsp"%>
	
	
	<!-- logopanel -->	
	<div class="logopanel">
		<div class="container">
			<a href="./"><img
				src="<%=request.getContextPath()%>/images/logo3.png" class="logoimg"></a>
			<span class="logo-centercollage">医保处方管理系统</span>
		</div>
	</div>


	<!--topmenu-->
	<div class="loginforpanel">
		<div class="bag"></div>
		<div class="container">
			<div class="leftoflogin">
				<!-- <img src="<%=request.getContextPath()%>/images/doctor2.png">-->
				<ul style="margin:0px">
					<li><p>登录您的个性化帐户</p></li>
					<li>·保存您的使用偏好</li>
					<li>·通过文件夹，组织您的研究知识资源</li>
					<li>·文件夹内容共享</li>
					<li>·查看与保存检索历史</li>
					<li>·保存您的个人检索数据</li>
				</ul>
			</div>		
			<div class="rigthoflogin ">
				<div class="ablogin row">
					<p class="title">登录</p>
					<form   action="userRegist.action" method="post" onsubmit="return checkForm()" >

						<div class="formintpanel">
							<span>用户名</span> <input type="text" id="userName" name="userName" onblur="checkUserName()"
								placeholder="用户名长度限制在15位以内" />
						</div>
						<div class="formintpanel">
							<span>密码</span> <input type="password" id="passWord" onblur="checkPassWord1()"
								name="passWord" placeholder="6-20个字符，包含字母数字" />
						</div>
						<div class="formintpanel">
						<span>类别</span> 
						<select  name="tp" id="tp" style="height:38px;float:left">
							<option value="1">病人</option>
							<option value="2">医生</option>
							<option value="3">管理员</option>
						</select>
						</div>
						<div class="formintpanel">
							<span>验证码</span> <input type="text" id="passWord"
								onblur="checkPassWord2()" name="passWord2" placeholder="请输入验证码" />
						</div>
						<div class="formintpanel">
							<a style="float: left; color: #000; margin-left: 40px;"
								href="javascript:;"
								onclick="document. getElementById('img').src='/imagecode.do?'+new Date().getTime();">看不清，换一个</a>
							<img style="float: right; margin-right: 60px;"
								src="/imagecode.do" id="img" />
						</div>						
						<div class="checkdiv">
							<label> <input type="checkbox" checked=checked ""/><span>记住密码</span>
							</label>
						</div>
						<input type="submit"  value="登录" class="formsubmit" style="float: left; width: 100px; margin-left: 100px;" /> 
						<input type="submit" style="width: 100px;" class="formsubmit" value="注册"/>						
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<!-- footer -->	
	<%@include file="zhuce_foot.jsp"%>
	<!-- Modal -->
</body>
</html>