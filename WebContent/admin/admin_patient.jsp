<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="UTF-8">
		<title></title>
		<base href="<%=basePath%>">
		<link href="css/bootstrap.min.css" rel="stylesheet">
	    <link href="css/bootstrap.css" rel="stylesheet">
	    <link href="css/bootstrap-theme.css" rel="stylesheet">
	    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
	    <link href="css/font-awesome.min.css" rel="stylesheet">
	    <script src="js/BOOTjquery.js"></script>
	    <script src="js/bootstrap.min.js"></script>
	    <script src="laydate/laydate.js"></script>
	    <script type="text/javascript" src="js/my.js"></script>
	    <script type="text/javascript">
	    	function insertCourseSuccess(){
	    		var courseName=$("#courseName").val();
	    		if(courseName!=""){
	    			alert("添加课程成功！");
	    			return true;
	    		}else{
	    			alert("请输入课程名称！");
	    			return false;
	    		}
	    	}
	    </script>
  </head>
  
  <body>
    <form action="adminInsertCourse.action" method="post" enctype="multipart/form-data">
	    <div style="float: left;width: 60%;margin-left: 10%;">
	    	<div class="form-group" style="float: left;width: 100%;">
			    <label for="firstname" class="col-sm-2 control-label">课程名称</label>
			    <div class="col-sm-4">
			      <input name="courseName" type="text" class="form-control" id="courseName">
			    </div>
			    <div class="col-sm-6"></div>
			</div>
			<br>
			<div class="form-group" style="float: left;width: 100%;">
			    <label for="name" class="col-sm-2 control-label">课程描述</label>
			    <div class="col-sm-10">
			    	<textarea name="courseDescription" class="form-control" rows="3" id="courseDescription"></textarea>
			    </div>
			</div>
			<div class="form-group" style="float: left;width: 100%;">
			    <label for="name" class="col-sm-2 control-label">课程简介</label>
			    <div class="col-sm-10">
			    	<textarea name="courseInfor" class="form-control" rows="3" id="courseInfor"></textarea>
			    </div>
			</div>
			<div class="form-group" style="float: left;width: 100%;">
			    <label for="name" class="col-sm-2 control-label">课程类型</label>
			    <div class="col-sm-4">
				    <select name="courseType" class="form-control" id="courseType">
				      <option value="计算机">计算机</option>
				      <option value="哲学">哲学</option>
				      <option value="经管·会计">经管·会计</option>
				      <option value="医学健康">医学健康</option>
				      <option value="生命科学">生命科学</option>
				      <option value="历史">历史</option>
				      <option value="音乐">音乐</option>
				      <option value="文学">文学</option>
				      <option value="体育">体育</option>
				    </select>
				 </div>
				 <div class="col-sm-6"></div>
		    </div>
		    
		    <div class="form-group" style="float: left;width: 100%;">
			    <label class="col-sm-2 control-label">开课时间 </label>
			    <div class="col-sm-4">
			      	<div style="width:300px; margin-top:10px;">
					    <input name="courseDate" id="courseDate" class="form-control" name="birthday" onClick="laydate()" value="${user.birthday}">
					</div>
			    </div>
			    <div class="col-sm-6"></div>
		 	</div>
			<div class="form-group" style="float: left;width: 100%;">
			    <label for="firstname" class="col-sm-2 control-label">课程时长</label>
			    <div class="col-sm-4">
			      <input name="courseTime" type="text" id="courseTime" class="form-control">
			    </div>
			    <div class="col-sm-6"></div>
			</div>
			<div class="form-group" style="float: left;width: 100%;">
			    <label for="lastname" class="col-sm-2 control-label">授课教师</label>
			    <div class="col-sm-4">
			      <input name="courseTeacher" type="text" id="courseTeacher" class="form-control">
			    </div>
			    <div class="col-sm-6"></div>
			</div>
			<div class="form-group" style="float: left;width: 100%;">
			    <label for="name" class="col-sm-2 control-label">教师介绍</label>
			    <div class="col-sm-10">
			    	<textarea name="teacherInfor" id="teacherInfor" class="form-control" rows="3"></textarea>
			    </div>
			</div>
			<div class="form-group" style="float: left;width: 100%;">
			    <label for="name" class="col-sm-2 control-label">课程章节</label>
			    <div class="col-sm-10">
			    	<textarea name="courseMenu" id="courseMenu" class="form-control" rows="3"></textarea>
			    </div>
			</div>
			<div class="form-group" style="float: left;width: 100%;">
			    <label for="firstname" class="col-sm-2 control-label">课程图片</label>
			    <div class="col-sm-5">
			      <input type="file" name="file" id="inputfile" accept="image/*">
			    </div>
			    <div class="col-sm-5"></div>
			</div>
			<div class="form-group" style="float: left;width: 100%;">
			    <label for="firstname" class="col-sm-2 control-label">视频上传</label>
			    <div class="col-sm-5">
			      <input type="file" name="file" id="inputfile2" accept="video/*">
			    </div>
			    <div class="col-sm-5"></div>
			</div>
			<!-- 
			<div class="form-group" style="float: left;width: 100%;">
			    <label for="lastname" class="col-sm-2 control-label">视频地址</label>
			    <div class="col-sm-5">
			      <input name="courseSrc" type="text" id="courseSrc" class="form-control">
			    </div>
			    <div class="col-sm-5"></div>
			</div>
			 -->
			<div class="col-sm-5"></div>
			<button type="submit" class="col-sm-2 btn btn-success" onclick="return insertCourseSuccess()">添加课程</button>
			<div class="col-sm-5"></div>
		</div>
    </form>
      
  </body>
</html>
