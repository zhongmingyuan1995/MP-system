<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
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
	    <script>
		  
		</script>
	</head>
	<body style="overflow: hidden;">
		<div class="form-group">
		    <label class="col-sm-2 control-label">头像</label>
		    <div class="col-sm-10">
		      <div style="float: left;">
		    	<img class="avatar" src="upload/${headPicSrc}" style="width: 130px;height: 130px;border-radius: 50%; float: left;"/>
		      </div>
		      <div style="height: 130px;">
		      <label class="sr-only" for="inputfile">文件输入</label>
			  <form action="userUploadHeadPic.action" method="post" enctype="multipart/form-data" style="float: left; margin-left: 30px;margin-top: 10px">
			  	<input type="file" name="file" id="inputfile" accept="image/*">
		      	<input type="submit" value="预览" style="margin-top: 50px"/>
			  </form>
			  </div>
		    </div>
		</div>
			
		<form action="userUpdateInfo.action" target="_top" method="post" onsubmit="return updateUserInfoCheck()" class="form-horizontal" >
		  <div class="form-group">
		    <label class="col-sm-2 control-label">用户名</label>
		    <div class="col-sm-10">
		      <input name="userName" class="form-control" id="disabledInput" type="text" value="${user.userName}" readonly="readonly">
		    </div>
		  </div>
		  <!-- 
		  <div class="form-group">
		    <label class="col-sm-2 control-label">密码</label>
		    <div class="col-sm-10">
		      <input name="passWord" class="form-control" id="disabledInput" type="text" value="${user.passWord}">
		    </div>
		  </div>
		   -->
		  <div class="form-group">
		    <label class="col-sm-2 control-label">邮箱</label>
		    <div class="col-sm-10">
		      <input name="email" class="form-control" id="disabledInput" type="text" value="${user.email}">
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">手机</label>
		    <div class="col-sm-10">
		      <input name="tel" class="form-control" id="disabledInput" type="text" value="${user.tel}">
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">性别</label>
		    <div class="col-sm-10">
		      <div class="radio">
				<label>
				  <input type="radio" name="sex" id="optionsRadios1" value="男">男
				</label>
		      </div>
		      <div class="radio">
				<label>
				  <input type="radio" name="sex" id="optionsRadios2" value="女">女
				</label>
			  </div>
			  <script type="text/javascript">
		    	var selects = document.getElementsByName("sex");  
				    for (var i=0; i<selects.length; i++){  
				        if (selects[i].value=="${user.sex}") {  
				            selects[i].checked= true;  
				            break;  
				        }  
				    }  
			  </script>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">生日</label>
		    <div class="col-sm-10">
		      	<div style="width:300px; margin-top:10px;">
				    <input class="form-control" name="birthday" onClick="laydate()" value="${user.birthday}">
				</div>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">个人签名</label>
		    <div class="col-sm-10">
		      <textarea name="note" class="form-control" rows="3">${user.note}</textarea>
		    </div>
		  </div>
		  <div class="form-group">
		  	<button type="submit" class="btn btn-success" style="margin-left: 40%;">提交信息</button>
		  </div>
		</form>
	</body>
</html>