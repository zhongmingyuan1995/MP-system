<%@page import="com.mps.domain.Patient"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head> 
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>医保处方系统</title>
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
<%@include file="Doctor_header_left.jsp"%> 
   




        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                                        医保处方管理系统
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#"> 医保处方管理系统</a></li>
                <li class="am-active">病人列表</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 列表
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <div class="input-icon right">
                                <i class="am-icon-search"></i>
                                <input type="text" class="form-control form-control-solid" placeholder="搜索..."/> </div>
                        </div>
                    </div>
                </div>


			<div class="am-tabs" data-am-tabs>
				<ul class="am-tabs-nav am-nav am-nav-tabs">
					<li class="am-active"><a href="#tab1">预约病人</a></li>
					<li><a href="#tab2">住院病人</a></li>
					<li><a href="#tab3">会员病人</a></li>
				</ul>

				<div class="am-tabs-bd">
					<div class="am-tab-panel am-active" id="tab1">
					<div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-6">
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增病人</button>
                                    <button type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-save"></span> 导出病人</button>                                 
                                    <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除病人</button>
                                </div>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select data-am-selected="{btnSize: 'sm'}">
              <option value="option1">所有类别</option>
              <option value="option2">男</option>
              <option value="option3">女</option>
              <option value="option3">电话</option>
              <option value="option3">邮箱</option>
              <option value="option3">地址</option>
              <option value="option3">年龄</option>
            </select>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <input type="text" class="am-form-field"/>
                                <span class="am-input-group-btn"/>
            <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="button"></button>
          </span>
                            </div>
                        </div>
                    </div>
                    <div class="am-g">
                        <div class="tpl-table-images">
                        
                         <c:forEach items="${patientList}" var="patient">
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-4" style="width:300px;height:400px;margin-top:50px;">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time">预约时间：2016-09-12</div> 
                                    <div class="tpl-i-title">
                                     ${patient.pname}（${patient.pgender}）<br/>病案号：002114618（初诊）<br/>手机号：${patient.ptel}<br/>诊断：${patient.premarks}
                                    </div>                                  
                                    <a href="javascript:;" class="tpl-table-images-content-i">                                                                        
                                        <img src="assets/img/patient/patient9.jpg" style="width:200px;height:200px;border-radius:200px; "/>
                                    </a>
                                    <div class="tpl-table-images-content-block" style="margin-left:60px;width:300px;">                                                                              
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">                                                                                              
                                                <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-edit"></span> <a href="getPatients.action?Pno=${patient.pno}&tp=2" style="color:#fff">接诊</a></button>                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                         </c:forEach>



									<div class="am-u-lg-12" style="margin-top:50px;">
                                <div class="am-cf">
                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <li class="am-disabled"><a href="#">«</a></li>
                                            <li class="am-active"><a href="getAllPatient.action?pageIndex=1&pageNum=6">首页</a></li>
                                            <c:if test="${pageIndex>1}">
                                            <li><a href="getAllPatient.action?pageIndex=${pageIndex-6}&pageNum=6">上一页</a></li>
                                            </c:if>
                                            <li><a href="getAllPatient.action?pageIndex=${pageIndex+6}&pageNum=6">下一页</a></li>
                                            <li><a href="getAllPatient.action?pageIndex=1&pageNum=6">尾页</a></li>                                          
                                            <li><a href="#">»</a></li>
                                        </ul>
                                    </div>
                                </div>                            
                            </div>

                        </div>

                    </div>
                </div>
					</div>
					<div class="am-tab-panel" id="tab2"><div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-6">
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增病人</button>
                                    <button type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-save"></span> 导出病人</button>                                 
                                    <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除病人</button>
                                </div>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
										<select data-am-selected="{btnSize: 'sm'}">
											<option value="option1">所有类别</option>
											<option value="option2">男</option>
											<option value="option3">女</option>
											<option value="option3">电话</option>
											<option value="option3">邮箱</option>
											<option value="option3">地址</option>
											<option value="option3">年龄</option>
										</select>
									</div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <input type="text" class="am-form-field"/>
                                <span class="am-input-group-btn"/>
            <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="button"></button>
          </span>
                            </div>
                        </div>
                    </div>
                    <div class="am-g">
                        <div class="tpl-table-images">
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-4" style="width:300px;height:400px;">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div> 
                                    <div class="tpl-i-title">
                                                                                                                              辜益凡（男40岁）<br/>病案号：002114618（初诊）<br/>手机号：187****0975<br/>诊断：
                                    </div>                                  
                                    <a href="javascript:;" class="tpl-table-images-content-i">                                                                        
                                        <img src="assets/img/patient/patient32.jpg" style="width:200px;height:200px;border-radius:200px; "/>
                                    </a>
                                    <div class="tpl-table-images-content-block" style="margin-left:60px;width:300px;">                                                                              
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">                                                                                              
                                                <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-edit"><a href="getPatients.action?Pno=6&tp=2" style="color:#fff">接诊</a></span> </button>                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-4" style="width:300px;height:400px;">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div> 
                                    <div class="tpl-i-title">
                                                                                                                              祝文开（男20岁）<br/>病案号：002114618（初诊）<br/>手机号：187****0975<br/>诊断：
                                    </div>                                  
                                    <a href="javascript:;" class="tpl-table-images-content-i">                                                                        
                                        <img src="assets/img/patient/patient25.jpg" style="width:200px;height:200px;border-radius:200px; "/>
                                    </a>
                                    <div class="tpl-table-images-content-block" style="margin-left:60px;width:300px;">                                                                              
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">                                                                                              
                                                <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-edit"></span> 接诊</button>                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          <div class="am-u-sm-12 am-u-md-6 am-u-lg-4" style="width:300px;height:400px;">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div> 
                                    <div class="tpl-i-title">
                                                                                                                              李志超（男69岁）<br/>病案号：002114618（初诊）<br/>手机号：187****0975<br/>诊断：
                                    </div>                                  
                                    <a href="javascript:;" class="tpl-table-images-content-i">                                                                        
                                        <img src="assets/img/patient/patient24.jpg" style="width:200px;height:200px;border-radius:200px; "/>
                                    </a>
                                    <div class="tpl-table-images-content-block" style="margin-left:60px;width:300px;">                                                                              
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">                                                                                              
                                                <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-edit"></span> 接诊</button>                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-4" style="width:300px;height:400px;">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div> 
                                    <div class="tpl-i-title">
                                                                                                                              张小红（女32岁）<br/>病案号：002114618（初诊）<br/>手机号：187****0975<br/>诊断：
                                    </div>                                  
                                    <a href="javascript:;" class="tpl-table-images-content-i">                                                                        
                                        <img src="assets/img/patient/patient29.jpg" style="width:200px;height:200px;border-radius:200px; "/>
                                    </a>
                                    <div class="tpl-table-images-content-block" style="margin-left:60px;width:300px;">                                                                              
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">                                                                                              
                                                <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-edit"></span> 接诊</button>                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-4" style="width:300px;height:400px;">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div> 
                                    <div class="tpl-i-title">
                                                                                                                              刘明（男75岁）<br/>病案号：002114618（初诊）<br/>手机号：187****0975<br/>诊断：
                                    </div>                                  
                                    <a href="javascript:;" class="tpl-table-images-content-i">                                                                        
                                        <img src="assets/img/patient/patient26.jpg" style="width:200px;height:200px;border-radius:200px; "/>
                                    </a>
                                    <div class="tpl-table-images-content-block" style="margin-left:60px;width:300px;">                                                                              
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">                                                                                              
                                                <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-edit"></span> 接诊</button>                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-4" style="width:300px;height:400px;margin-top:50px;">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div> 
                                    <div class="tpl-i-title">
                                                                                                                              吕飘飘（女81岁）<br/>病案号：002114618（初诊）<br/>手机号：187****0975<br/>诊断：
                                    </div>                                  
                                    <a href="javascript:;" class="tpl-table-images-content-i">                                                                        
                                        <img src="assets/img/patient/patient27.jpg" style="width:200px;height:200px;border-radius:200px; "/>
                                    </a>
                                    <div class="tpl-table-images-content-block" style="margin-left:60px;width:300px;">                                                                              
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">                                                                                              
                                                <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-edit"></span> 接诊</button>                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <div class="am-u-sm-12 am-u-md-6 am-u-lg-4" style="width:300px;height:400px;margin-top:50px;">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div> 
                                    <div class="tpl-i-title">
                                                                                                                             龚春花（男29岁）<br/>病案号：002114618（初诊）<br/>手机号：187****0975<br/>诊断：
                                    </div>                                  
                                    <a href="javascript:;" class="tpl-table-images-content-i">                                                                        
                                        <img src="assets/img/patient/patient30.jpg" style="width:200px;height:200px;border-radius:200px; "/>
                                    </a>
                                    <div class="tpl-table-images-content-block" style="margin-left:60px;width:300px;">                                                                              
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">                                                                                              
                                                <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-edit"></span> 接诊</button>                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            <div class="am-u-lg-12" style="margin-top:50px;">
                                <div class="am-cf">
                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <li class="am-disabled"><a href="#">«</a></li>
                                            <li class="am-active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li><a href="#">»</a></li>
                                        </ul>
                                    </div>
                                </div>                            
                            </div>

                        </div>

                    </div>
                </div></div>
					<div class="am-tab-panel" id="tab3">...</div>
				</div>
			</div>
			
                <div class="tpl-alert"></div>
            </div>


        </div>
    <script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>

</html>