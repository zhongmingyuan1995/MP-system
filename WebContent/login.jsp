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
    <h3>登录</h3>
    <hr>
    <div class="am-btn-group">
      <a href="#" class="am-btn am-btn-secondary am-btn-sm"><i class="am-icon-qq"></i> QQ </a>
      <a href="#" class="am-btn am-btn-success am-btn-sm"><i class="am-icon-weixin"></i> 微信</a>    
    </div>
    <br>
    <br>

    <form action="userLogin.action" method="post" onsubmit="return loginCheck()" class="am-form">
      <label for="email">帐号:</label>
      <input type="text" id="loginuserName" name="userName" value="">
      <br>
      <label for="password">密码:</label>
      <input type="password" id="loginpassWord" name="passWord" value="">
      <br>				
	  <label for="user-phone">类型</label>
	  <select data-am-selected="{searchBox: 1}" name="tp" id="tp" style="width:200px">
	    <option value="1">病人</option>
		<option value="2">医生</option>
		<option value="3">管理员</option>
	  </select>
	  <div class="loginInfo" style="height: 20px;color: red"></div>
      <br>	
	  <label for="remember-me">
        <input id="remember-me" type="checkbox">
                   记住密码
      </label>
      <br />
      <div class="am-cf">
        <input type="submit" name="" value="登 录" class="am-btn am-btn-primary am-btn-sm am-fl">
		<div class="am-btn-group" style="float:right">
      <a href="#" class="am-btn am-btn-defaul am-btn-sm am-fl">忘记密码 </a>
      <a href="register.jsp" class="am-btn am-btn-secondary am-btn-sm am-fl">注册</a>
      </div>	
      </div>
    </form>
    <hr>
    <p>@ 2017 Jiangxi University Of Traditional Chinese Medicine</p>
  </div>
</div>
</body>
</html>