<%@page import="com.mps.domain.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>普通用户管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/main.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/colResizable-1.3.min.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <link rel="stylesheet" type="text/css" href="css/semantic.css">
	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="js/semantic.js"></script>
    <style type="text/css">
	 .list_table tbody tr:nth-child(even) td {
		  background:rgb(255, 252, 234) none repeat scroll 0% 0%;
		}
	 </style>
    <script type="text/javascript">
    $(document).ready(function(){
		$(".deleteInfor").mouseup(function(){
			alert("删除成功!");
		});
	});
    </script>
  </head>
  
  <body>
    <div class="container">
	    <div id="search_bar" class="mt10">
	       <div class="box">
	          <div class="box_border">
	            <div class="box_top"><b class="pl15">修改信息</b></div>
	            <form action="admin_update_user_submit.action?id=${user.id}&userName=$${user.userName}" method="post">
	            <div class="box_center pt10 pb10">
	              <table class="form_table" border="0" cellpadding="0" cellspacing="0">
	                <tr>
	                  <td>ID</td>
	                  	  <td><span>${user.id}</span></td>
	                  <td>用户名</td>
	                  	  <td><span>${user.userName}</span></td>
	                  <td>密码</td>
	                      <td><input type="password" name="passWord" class="input-text lh25" size="15" value="${user.passWord }"></td>
	                  <td>用户类型</td>
	                  	  <td>
		                  <select name="tp" id="select" class="select">
		                  	<option value="1" selected>普通用户</option>
		                  	<option value="2">管理员</option>
		                  </select>
		              	  </td>
	                  <td><input type="submit" value="修改" class="ext_btn ext_btn_submit"></td>
	                </tr>
	              </table>
	            </div>
	            </form>
	            <div class="box_bottom pb5 pt5 pr10" style="border-top:1px solid #dadada;">
	              <div class="search_bar_btn" style="text-align:right;">
	                 <input type="submit" value="确定" class="ext_btn ext_btn_submit">
	                 <input type="button" value="返回" onclick="location.href='javascript:history.go(-1)'" class="ext_btn">
	                 <input type="button" class="ext_btn ext_btn_success" value="成功">
	                 <input type="button" class="ext_btn ext_btn_error" value="错误">
	                 <a href="" class="ext_btn"><span class="add"></span>添加</a>
	              </div>
	            </div>
	          </div>
	        </div>
	    </div>
	     <div id="table" class="mt10">
	        <div class="box span10 oh">
	              <table width="100%" border="0" cellpadding="0" cellspacing="0" class="list_table">
	                <tr>
	                   <th width="70">id</th>
	                   <th width="150">用户名</th>
	                   <th width="150">密码（已加密）</th>
	                   <th width="200">邮箱</th>
	                   <th width="160">联系方式</th>
	                   <th>操作</th>
	                </tr>
	                <c:forEach items="${userList}" var="user">
						   <tr class="${user.id}">
						      <td style="text-align: center;" id="userid">${user.id}</td>
						      <td style="text-align:left;">${user.userName}</td>
						      <td style="text-align:right;">${user.passWord}</td>
						      <td style="text-align:right;">${user.email}</td>
						      <td style="text-align:right;">${user.tel}</td>
						      <td style="text-align: center;"><a style="cursor: pointer;" class="updateInfor" onclick="update(${user.id})">修改</a>&nbsp;|&nbsp;
						      								  <a href="deleteUser.do?id=${user.id}" class="deleteInfor">删除</a></td>
						    </tr>
					</c:forEach>
	              </table>
	              <div class="page mt10">
	                <div class="pagination">
	                  <ul>
	                      <li class="first-child"><a href="admin_user_bypage.do?userIndex=1&userNum=5">首页</a></li>
	                      <c:if test="${userIndex>1}">
	                      	<li><a href="admin_user_bypage.do?userIndex=${userIndex-1}&userNum=5">上一页</a></li>
	                      </c:if>
	                      	<li><a href="admin_user_bypage.do?userIndex=${userIndex+1}&userNum=5">下一页</a></li>
	                      <li class="last-child"><a href="#">尾页</a></li>
	                  </ul>
	                </div>
	
	              </div>
	        </div>
	     </div>
   </div> 
   <!-- 修改弹出框 -->
	   <div class="ui modal update" style="width: 900px;height: 150px; margin-top: -100px;margin-left: -450px;">
		  <div class="header" style="line-height: 0.8em;">
		   修改用户信息
		  </div>
		  <form action="userUpdate.do?id=${oldid}">
		  <div class="content" style="float: left; margin-left: 20px;margin-top: 10px;">
		  	<div class="ui labeled input"><div class="ui label">用户名</div><input type="text"  required id="olduserName" name="userName" style="width:150px;"/></div>
			<div class="ui labeled input"><div class="ui label">密码</div><input type="password" placeholder="password" required id="oldpassWord" name="passWord" style="width:150px;"/></div>
			<div class="ui labeled input"><div class="ui label">邮箱</div><input type="text"  required id="oldemail" name="email" style="width:150px;"/></div>
			<div class="ui labeled input"><div class="ui label">手机</div><input type="text"  required id="oldtel" name="tel" style="width:150px;"/></div>
		  </div>
		  <div class="actions" style="float: right; margin-top: 10px;">
		  	<input class="ui green button" type="submit" value="修改">
		    <div class="ui button" id="cancel">取消</div>
		  </div>
		  </form>
		</div>
   <!-- 修改弹出框结束 -->
  </body>
</html>
