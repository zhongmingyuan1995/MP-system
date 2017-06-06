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
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <script src="js/BOOTjquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/colResizable-1.3.min.js"></script>
    <script type="text/javascript" src="js/common.js"></script> 
    <link rel="stylesheet" type="text/css" href="css/semantic.css">
    <script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="js/semantic.js"></script>
	<script type="text/javascript" src="js/my.js"></script>
	
    <style type="text/css">
	 .list_table tbody tr:nth-child(even) td {
		  background:rgb(255, 252, 234) none repeat scroll 0% 0%;
		}
	
	table{
	    table-layout:fixed;/* 只有定义了表格的布局算法为fixed，下面td的定义才能起作用。 */
	}
	td{
	    word-break:keep-all;/* 不换行 */
	    white-space:nowrap;/* 不换行 */
	    overflow:hidden;/* 内容超出宽度时隐藏超出部分的内容 */
	    text-overflow:ellipsis;/* 当对象内文本溢出时显示省略标记(...) ；需与overflow:hidden;一起使用。*/
	}
	 </style>
	 <script type="text/javascript">
   		 $(document).ready(function() {
			$("#adminDeleteUser").click(function(){
				$('.ui.modal').modal('show');
			});
			$(".close.ui.button").click(function(){
				$('.ui.modal').modal('hide');
			});
			
			
		});
		
	</script>
  </head>
  
  <body>
    <div class="container" style="width: 100%">
	    <div id="search_bar" class="mt10">
	       <div class="box">
	          <div class="box_border">
	            <div class="box_top"><b class="pl15">搜索</b></div>
	            <div class="box_center pt10 pb10">
	              <table class="form_table" border="0" cellpadding="0" cellspacing="0">
	                <tr>
	                  <td>ID</td>
	                  	<td><input type="text" name="id" class="input-text lh25" size="5"></td>
	                  <td>用户名</td>
	                  	<td><input type="text" name="userName" class="input-text lh25" size="10"></td>
	                  <td>用户类型</td>
	                  	<td></td>
	                </tr>
	              </table>
	            </div>
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
	    <div class="table-responsive ">
		  <table class="table table-hover">
		    <thead>
		      <tr>
		        <th width="5%" style="text-align: center;">ID</th>
		        <th width="10%" style="text-align: center;">用户名</th>
		        <th width="15%" style="text-align: center;">密码（已加密）</th>
		        <th width="12.5%" style="text-align: center;">邮箱</th>
		        <th width="12.5%" style="text-align: center;">联系方式</th>
		        <th width="5%" style="text-align: center;">性别</th>
		        <th width="10%" style="text-align: center;">生日</th>
		        <th width="20%" style="text-align: center;">个性签名</th>
		        <th width="10%" style="text-align: center;">操作</th>
		      </tr>
		    </thead>
		    <tbody>
		      <c:forEach items="${userList}" var="user">
			      <tr>
			        <td id="userid">${user.id}</td>
			        <td>${user.userName}</td>
			        <td>${user.passWord}</td>
			        <td>${user.email}</td>
			        <td>${user.tel}</td>
			        <td>${user.sex}</td>
			        <td>${user.birthday}</td>
			        <td>${user.note}</td>
			        <td><a href="admin_update_user.action?id=${user.id}&userName=${user.userName}&passWord=${user.passWord }&tp=${user.tp}" style="cursor: pointer;" class="updateInfor">修改</a>&nbsp;|&nbsp;
						      								  <a href="admin_delete_user_submit.action?id=${user.id}" onclick="return deleteFunction()" id="adminDeleteUser2" class="deleteInfor">删除</a>
						</td>
			      </tr>
		      </c:forEach>
		    </tbody>
		  </table>
		    <div class="page mt10" style="text-align: center;">
              <div class="pagination">
                <ul>
                    <li class="first-child"><a href="admin_user_bypage.action?pageIndex=1&pageNum=6">首页</a></li>
                    <c:if test="${pageIndex>1}">
                    	<li><a href="admin_user_bypage.action?pageIndex=${pageIndex-6}&pageNum=6">上一页</a></li>
                    </c:if>
                    	<li><a href="admin_user_bypage.action?pageIndex=${pageIndex+6}&pageNum=6">下一页</a></li>
                    <li class="last-child"><a href="admin_user_bypage.action?pageIndex=1&pageNum=6">尾页</a></li>
                </ul>
              </div>
           	</div>
		</div>
		<!-- 
	     <div id="table" class="mt10">
	        <div class="box span10 oh">
	              <table width="100%" border="0" cellpadding="0" cellspacing="0" class="list_table">
	                <tr style="background: #CCCCFF;">
	                   <th width="5%" style="text-align: center;">ID</th>
	                   <th width="10%" style="text-align: center;">用户名</th>
	                   <th width="10%" style="text-align: center;">密码</th>
	                   <th width="10%" style="text-align: center;">邮箱</th>
	                   <th width="10%" style="text-align: center;">联系方式</th>
	                   <th width="5%" style="text-align: center;">性别</th>
	                   <th width="10%" style="text-align: center;">生日</th>
	                   <th width="20%" style="text-align: center;">个性签名</th>
	                   <th width="10%" style="text-align: center;">头像</th>
	                   <th width="10%" style="text-align: center;">操作</th>
	                </tr>
	                <c:forEach items="${userList}" var="user">
						   <tr class="${user.id}" style="height: 35px">
						      <td style="text-align: center;" id="userid">${user.id}</td>
						      <td style="text-align:left;">${user.userName}</td>
						      <td style="text-align:right;">${user.passWord}</td>
						      <td style="text-align:right;">${user.email}</td>
						      <td style="text-align:right;">${user.tel}</td>
						      <td style="text-align:right;">${user.sex}</td>
						      <td style="text-align:right;">${user.birthday}</td>
						      <td style="text-align:right;">${user.note}</td>
						      <td style="text-align:right;">${user.headPicSrc}</td>
						      <td style="text-align: center;"><a href="admin_update_user.action?id=${user.id}&userName=${user.userName}&passWord=${user.passWord }&tp=${user.tp}" style="cursor: pointer;" class="updateInfor">修改</a>&nbsp;|&nbsp;
						      								  <a href="admin_delete_user_submit.action?id=${user.id}" onclick="return deleteFunction()" id="adminDeleteUser2" class="deleteInfor">删除</a>
						      								  </td>
						    </tr>
					</c:forEach>
	              </table>
	              <div class="page mt10" style="text-align: center;">
	                <div class="pagination">
	                  <ul>
	                      <li class="first-child"><a href="admin_user_bypage.action?pageIndex=1&pageNum=6">首页</a></li>
	                      <c:if test="${pageIndex>1}">
	                      	<li><a href="admin_user_bypage.action?pageIndex=${pageIndex-6}&pageNum=6">上一页</a></li>
	                      </c:if>
	                      	<li><a href="admin_user_bypage.action?pageIndex=${pageIndex+6}&pageNum=6">下一页</a></li>
	                      <li class="last-child"><a href="admin_user_bypage.action?pageIndex=1&pageNum=6">尾页</a></li>
	                  </ul>
	                </div>
	              </div>
	        </div>
	     </div>
	      -->
   </div> 
  </body>

<!-- 删除弹出框 -->
	<div class="ui modal">
	  <div class="header">
		删除用户
	  </div>
	  <div class="content">
	    <div class="description">
   		  <table class="form_table" border="0" cellpadding="0" cellspacing="0">
	          <tr>
	            <td>ID</td>
	            	  <td><span>${user.id}</span></td>
	            <td>用户名</td>
	            	  <td><span>${user.userName}</span></td>
	          </tr>
	       </table>
	    </div>
	  </div>
	  <div class="actions">
	    <div class="close ui button">取消</div>
	    <a href="admin_delete_user_submit.action?id=${user.id }"><div class="ui green button">确定</div></a>
	  </div>
	</div>
</html>
