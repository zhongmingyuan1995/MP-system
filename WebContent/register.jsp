<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath(); 
    String basePath = request.getScheme()+"://"+request.getServerName()
    +":"+request.getServerPort()+path+"/";
%>
<head>
  <base href=" <%=basePath%>"> 
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>江中医保处方系统-请登录</title>
  <meta name="description" content="这是一个 江中医保处方系统-请登录页面">
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="alternate icon" type="image/png" href="assets/i/favicon.png">
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <script src="js/BOOTjquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/my.js"></script>
   <style>
    .header {
      text-align: center;
    }
    .header h1 {
      font-size: 200%;
      color: #333;
      margin-top: 30px;
    }
    .header p {
      font-size: 14px;
    }
  </style>
</head>
<body>
<div class="header">
  <div class="am-g">
    <h1>医保处方管理系统</h1>
    <p>Integrated Development Environment<br/>预约挂号，病历登记，接诊治疗，处方开药，医患交流</p>
  </div>
  <hr />
</div>
<div class="am-g">
  <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
    <h3>注册</h3>
    <hr>  
      <form action="userRegist.action" method="post" onsubmit="return checkForm()" class="am-form">
      <label for="email">帐号:</label>
      <input type="text" required id="userName" onblur="checkUserName()" name="userName" value="">
      <br>
      <label for="password">密码:</label>
      <input type="password" required id="passWord" onblur="checkPassWord1()" name="passWord" value="">
      <br>
	  <label for="password">确认密码:</label>
      <input type="password" required id="passWord2" onblur="checkPassWord2()" value="">
	  <br>
	  <label for="password">邮箱:</label>
      <input type="text" required id="email" onblur="checkEmail()" name="email">
      <br>
      <label for="password">电话:</label>
      <input type="text" required id="tel" onblur="checkTel()" name="tel">
      <label for="remember-me">
      <input id="remember-me" type="checkbox" name="checkbox"  id="checkBox">
        我已阅读并同意《网站服务协议》
      </label>
      <br />
      <div class="am-cf">
        <input type="submit" name="" value="注册" class="am-btn am-btn-success am-btn-sm">
    <div class="am-btn-group" style="float:right">
      <a href="#" class="am-btn"><i class="am-icon-qq"></i></a>
      <a href="#" class="am-btn"><i class="am-icon-weixin"></i></a>  
      <a href="login.jsp" class="am-btn am-btn-primary am-btn-sm am-fl"> 登录 </a>
    </div>	
      </div>
    </form>
    <hr>
    <p>@ 2017 Jiangxi University Of Traditional Chinese Medicine</p>
  </div>
</div>
</body>
</html>
