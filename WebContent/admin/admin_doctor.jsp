
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
    
    <title>My JSP 'admin_course.jsp' starting page</title>
    
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
	<script src="js/BOOTjquery.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  	<script src="js/my.js"></script>
  </head>
  
  <body>
	  <div class="container" style="width: 100%">
	    <div class="table-responsive ">
		  <table class="table table-hover">
		    <thead>
		      <tr>
		      	<th>ID</th>
		        <th>课程名称</th>
		        <th>课程类型</th>
		        <th>开课时间</th>
		        <th>课程时长</th>
		        <th>授课教师</th>
		        <th>操作</th>
		      </tr>
		    </thead>
		    <tbody>
		      <c:forEach items="${allCourseList}" var="allCourse">
			      <tr>
			        <td>${allCourse.id }</td>
			        <td>${allCourse.courseName }</td>
			        <td>${allCourse.courseType }</td>
			        <td>${allCourse.courseDate}</td>
			        <td>${allCourse.courseTime }</td>
			        <td>${allCourse.courseTeacher }</td>
			        <td><a href="intoCoursePage.action?courseName=${allCourse.courseName }" target="_blank" class="deleteInfor">进入</a>&nbsp;|&nbsp;
						<a href="admin_Delete_CourseById.action?id=${allCourse.id}" onclick="return deleteCourseFunction()" style="cursor: pointer;" class="deleteInfor">删除</a>
						</td>
			      </tr>
		      </c:forEach>
		    </tbody>
		  </table>
		  <div class="page mt10" style="text-align: center;">
            <div class="pagination">
              <ul>
                  <li class="first-child"><a href="admin_Select_AllCourse.action?pageIndex=0&pageNum=5">首页</a></li>
                  <c:if test="${pageIndex>1}">
                  	<li><a href="admin_Select_AllCourse.action?pageIndex=${pageIndex-5}&pageNum=5">上一页</a></li>
                  </c:if>
                  	<li><a href="admin_Select_AllCourse.action?pageIndex=${pageIndex+5}&pageNum=5">下一页</a></li>
                  <li class="last-child"><a href="admin_Select_AllCourse.action?pageIndex=${pageIndex+5}&pageNum=5">尾页</a></li>
              </ul>
            </div>
           </div>
		</div>
	  </div>
  </body>
</html>
