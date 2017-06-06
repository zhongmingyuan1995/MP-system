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
<link rel="shortcut icon"
	href="http://cn.bjmu.findplus.cn/img/user/default//favicon.ico" />
<title>医保处方管理系统--注册</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/common.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/my.js"></script>
<script src="<%=request.getContextPath()%>/js/BOOTjquery.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
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
				<img src="<%=request.getContextPath()%>/images/timg.png">
				<ul>
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
					<p class="title">注册</p>
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
							<span>确认密码</span> <input type="password" id="passWord" onblur="checkPassWord2()"
								name="passWord2" placeholder="6-20个字符，包含字母数字" />
						</div>
						<div class="formintpanel">
							<span>邮箱</span> <input type="text" id="email" name="email" onblur="checkEmail()"
								placeholder="请输入你的email" />
						</div>
						<div class="formintpanel">
							<span>邮箱</span> <input type="text" id="tel" name="tel" onblur="checkTel()"
								placeholder="请输入你的tel" />
						</div>
						<div class="formintpanel">
                                <span>验证码</span>
                                <input type="text" id="validateCode" onblur="checkImg(this.value)" name="validateCode" type="text"><br>
                                <!-- 点击一下重新加载一次验证码 -->
                            </div>
                            <div class="formintpanel">
                                <a href="javascript:flushValidateCode();"  >换一张</a>
                                <img style="float:right;margin-right:60px" id="codeValidateImg"  onClick="javascript:flushValidateCode();"/>  
                            </div>
						<div class="checkdiv">
							<label> <!--<input type="checkbox" checked=checked ""/><span>记住密码</span>-->
							</label>
							<ul style="float: left;">
								<li><a href="login.jsp"
									style="float: left; margin-left: -10px; margin-top: -6px;">已有账号，直接登录</a></li>
							</ul>
						</div>				
						<input type="reset"  value="重置" class="formsubmit" style="float: left; width: 100px; margin-left: 100px;" /> 
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