<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.mps.domain.Patient"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>江中医保处方系统</title>
    <meta name="description" content="这是一个 江中医保处方系统首页"/>
    <meta name="keywords" content="index"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="assets/i/favicon.png"/>
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png"/>
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css"/>
    <link rel="stylesheet" href="assets/css/app.css"/>
    <script src="assets/js/echarts.min.js"></script>
</head>

<body data-type="generalComponents">
<%@include file="Patient_header_left.jsp"%> 

        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                                            江中医保处方管理系统
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">分类</a></li>
                <li class="am-active">个人信息</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>基本信息
                    </div>              
                    <div class="tpl-block">                                                
                                    <label for="user-name" class="am-u-sm-3 am-form-label"></label>
                                    <table class="am-table">
											<thead>
												<tr></tr>
											</thead>
											<tbody>
											 <c:forEach items="${PatientList}" var="Patient">
												<tr>
													<td>姓名:${Patient.pname }</td>
													<td>性别:${Patient.pgender }</td>
													<td>出生日期:${Patient.pborth }</td>
												</tr>
												<tr>
													<td>婚姻状况:${Patient.pmarital_status }</td>
													<td>电话:${Patient.ptel }</td>
													<td>邮箱:${Patient.pemail }</td>
												</tr>
												<tr>
													<td>民族:${Patient.pnation }</td>
													<td>职业:${Patient.poccupation }</td>
													<td>工作单位:${Patient.pwork_unit }</td>
												</tr>
												<tr>
													<td>地址:${Patient.paddress }</td>
													<td>照片:${Patient.pphoto }</td>
													<td>备注:${Patient.premarks }</td>
												</tr>	
												</c:forEach>										
											</tbody>
										</table>                                                     
                    </div>                  
                </div>
                </div>   
                <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>病历信息
                    </div>   
                    <div class="tpl-block">                 
                                    <label for="user-name" class="am-u-sm-3 am-form-label"></label>
                                    <table class="am-table">
											<thead>
												<tr>
																									
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>个人史</td>													
												</tr>
												<tr>
													<td>家族史</td>													
												</tr>	
												<tr>
													<td>过敏史</td>													
												</tr>										
											</tbody>
										</table>
                                </div>                                         
                </div>
                </div>          
            </div>
        </div>
    <script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>

</html>