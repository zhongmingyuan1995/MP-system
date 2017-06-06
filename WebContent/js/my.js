$(document).ready(function(){	
	$(".form-control").click(function(){
		$(this).css("background","white");
	});
	$(".form-control").blur(function(){
		$(this).css("background","none");
	});
	$("#nousername").click(function(){
		$("#registModal").modal('show');
	});
	
});
var flag = true;
function checkUserName(){
    var id = document.getElementById("userName");
    var userName=id.value;
    var url="checkUserName.action?userName="+userName;
    //设置同步（默认异步true）
    $.ajaxSetup({
        async : false
    });
	$.get(url,function(data){
		if(userName.length > 16||userName.length <6)
	    {
	      $(".icon2.un2").css("background","url(img/MyImage/spirit.png) no-repeat -31px 0px");
	      alert("用户名输入有误！"+'\n'+"请输入6~16位有效字符！");
	      flag = false;
	    }else{
	    	if(data=="1"){
	    		$(".icon2.un2").css("background","url(img/MyImage/spirit.png) no-repeat -31px 0px");
			    alert("该用户名已被注册！"+'\n'+"请重新输入用户名");
			    flag = false;
			}else{
				$(".icon2.un2").css("background","url(img/MyImage/spirit.png)");
				flag = true;
			}
	    }
	});
	return flag;
}
/*    if(userName.length > 16||userName.length <6)
    {
      $(".icon2.un2").css("background","url(img/MyImage/spirit.png) no-repeat -31px 0px");
      alert("用户名输入有误！"+'\n'+"请输入6~16位有效字符！");
      return false;
    }else{
		var url="checkUserName.action?userName="+userName;
		$.get(url,function(data){
			if(data=="0"){
				$(".icon2.un2").css("background","url(img/MyImage/spirit.png)");
			      return true;
			}else{
				$(".icon2.un2").css("background","url(img/MyImage/spirit.png) no-repeat -31px 0px");
			      alert("该用户名已被注册！"+'\n'+"请重新输入用户名");
			      return false;
			}
		});
    }
*/

function checkPassWord1(){
  var id = document.getElementById("passWord");
  var Password=id.value;
  if (Password.length < 3||Password.length > 16) {
     $(".icon2.pw2").css("background","url(img/MyImage/spirit.png) no-repeat -31px 0px");
  	 alert("密码输入有误！"+'\n'+"请输入3~16位有效字符！");
  	 return false;
  }
  else{
  	 $(".icon2.pw2").css("background","url(img/MyImage/spirit.png)");
  	return true;
  }
}

function checkPassWord2(){
    var id1 = document.getElementById("passWord");
    var id2 = document.getElementById("passWord2");
    var Password=id1.value;
    var Password2=id2.value;
    if (Password2.length < 3||Password2.length > 16){
   	    $(".icon2.pw22").css("background","url(img/MyImage/spirit.png) no-repeat -31px 0px");
    }else if (Password != Password2) {
        $(".icon2.pw22").css("background","url(img/MyImage/spirit.png) no-repeat -31px 0px");
  	    alert("两次输入密码有误！");
  	    return false;
    }
    else{
   	    $(".icon2.pw22").css("background","url(img/MyImage/spirit.png)");
   	    return true;
    }
}  
function checkEmail(){
    var id =  document.getElementById("email");
    var Email = id.value;   
    //以字母或数字开头，跟上@,字母数字以.com结尾
    var expr =  /^([0-9]|[a-z])+@([0-9]|[a-z])+(\.[c][o][m])$/i;
    if(!expr.test(Email))
    {
        $(".icon2.em2").css("background","url(img/MyImage/spirit.png) no-repeat -31px 0px");
  	 	alert("邮箱格式有误！");
  	 	return false;
    }
    else{
    	$(".icon2.em2").css("background","url(img/MyImage/spirit.png)");
    	return true;
    }
}
function checkTel(){
    var id =  document.getElementById("tel");
    var Tel = id.value;   
    //
    var expr =  /^(13[0-9]|14[0-9]|15[0-9]|18[0-9])\d{8}$/i;
    if(!expr.test(Tel))
    {
        $(".icon2.tel2").css("background","url(img/MyImage/spirit.png) no-repeat -31px 0px");
  	 	alert("请输入正确的手机号！");
  	 	return false;
    }
    else{
    	$(".icon2.tel2").css("background","url(img/MyImage/spirit.png)");
    	return true;
    }
}
function checkForm(){
	if(checkUserName()&&checkPassWord1()&&checkPassWord2()&&checkEmail()&&checkTel()){
		alert("恭喜您，注册成功！");
		return true;
	}else{
		return false;
	}
}
var flag2 = true;
function loginCheck(){
	var id1 = document.getElementById("loginuserName");
    var userName=id1.value;
    var id2 = document.getElementById("loginpassWord");
    var passWord=id2.value;
    var id3 = document.getElementById("tp");
    var tp=id3.value;
	var url="checkLogin.action?userName="+userName+"&passWord="+passWord+"&tp="+tp;
	//设置同步（默认异步true）
	$.ajaxSetup({
        async : false
    });
	$.get(url,function(data){
			if(data=="0"){
				$(".loginInfo").html("用户名或密码错误！");
				flag2 = false;
			}else{
				flag2 = true;
			}
	});
	return flag2;
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function updateUserInfoCheck(){
	var Password=$(".passWord").val();
	var Email=$(".email").val();
	var expr1 =  /^([0-9]|[a-z])+@([0-9]|[a-z])+(\.[c][o][m])$/i;
	var Tel=$(".tel").val();
	var expr2 =  /^(13[0-9]|14[0-9]|15[0-9]|18[0-9])\d{8}$/i;
	 if (Password.length < 3||Password.length > 16) {
	  	alert("密码输入有误！"+'\n'+"请输入3~16位有效字符！");
	  	return false;
	  }else if(!expr1.test(Email)){
	  	alert("邮箱格式有误！");
	  	return false;
	  }else if(!expr2.test(Tel)){
	  	alert("请输入正确的手机号！");
	  	return false;
	  }else{
		alert("修改成功！");
	  	return true;
	  }
}
//删除弹出框~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function deleteFunction(){
	var r=confirm("确认删除此用户？");
	if (r==true){
		return true;
		alert("删除成功！");
	}
	else{
		return false;
	}
}

function deleteCourseFunction(){
	var r=confirm("确认删除此课程？");
	if (r==true){
		return true;
		alert("删除成功！");
	}
	else{
		return false;
	}
}
//检查时间是否为空~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
var flag = true;
function checkTime(){
    var time = document.getElementById("time");
    var diagnosis = document.getElementById("diagnosis");
		if(time.length<1)
	    {	  
	      alert("时间不能为空");
	      flag = false;
	    }else{
	    	if(diagnosis.length<1){
			    alert("初诊不能为空");
			    flag = false;
			}else{
				document.getElementById("myForm").submit();
	            alert("操作成功");
			}
	    }
	return flag;
}
//刷新验证码~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$(document).ready(function() {
    flushValidateCode();//进入页面就刷新生成验证码
  });

/* 刷新生成验证码 */
$(document).ready(function() {
    flushValidateCode();//进入页面就刷新生成验证码
  });

/* 刷新生成验证码 */
function flushValidateCode(){
var validateImgObject = document.getElementById("codeValidateImg");
validateImgObject.src = "${pageContext.request.contextPath }/getSysManageLoginCode?time=" + new Date();
}
/*校验验证码输入是否正确*/
function checkImg(code){
   var url = "${pageContext.request.contextPath}/checkimagecode";
   $.get(url,{"validateCode":code},function(data){
       if(data=="ok"){
           alert("ok!");
       }else{
           alert("error!");
           flushValidateCode();
       }
   });
}
