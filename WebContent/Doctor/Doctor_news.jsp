<%@page import="com.mps.domain.Patient"%>
<%@page import="com.mps.domain.Patient_wes"%>
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
		<div class="tpl-content-page-title">医保处方管理系统</div>
		<ol class="am-breadcrumb">
			<li><a href="#" class="am-icon-home">首页</a></li>
			<li><a href="#"> 医保处方管理系统</a></li>
			<li class="am-active">医生接诊</li>
		</ol>
		<div class="tpl-portlet-components">
			<div class="portlet-title">
				<div class="caption font-green bold">
					<span class="am-icon-code"></span> 接诊
				</div>
				<div class="tpl-portlet-input tpl-fz-ml">
					<div class="portlet-input input-small input-inline">
						<div class="input-icon right"></div>
					</div>
				</div>

			</div>
			<div class="am-tab-panel" id="tab-4-4">
						<form  action="getAllPatient.action" method="post">
							<ul class="am-nav am-nav-pills">
								<li><a href="getAllPatient_wes.action?pageIndex=0&pageNum=6">西药处方</a></li>
								<li><a href="#">中药处方</a></li>	
								<li style="float:right;"><div class="input-icon right">
                                    <i class="am-icon-search"></i>
                                    <input type="text" class="form-control form-control-solid" placeholder="搜索..." name="treat"/> 
                                    </div>
                                </li>							
							</ul>
							<div class="tpl-portlet-input tpl-fz-ml">
                        
                        </div>
							<table
								class="am-table am-table-bordered am-table-striped am-table-compact">
								<thead>
									<tr>
										<th>全选</th>
										<th>名称</th>
										<th>类别</th>
										<th>批号</th>
										<th>剂型规格</th>
										<th>成分</th>
										<th>用法用量</th>
										<th>功能主治</th>
										<th>注意事项</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${patient_wesList}" var="patient_wes">
									<tr>
										<td><label class="am-checkbox"><input type="checkbox" value="" name="Pid"/> </label></td>
										<td>${patient_wes.wes_name}</td>
										<td>${patient_wes.wes_type}</td>
										<td>${patient_wes.wes_number}</td>
										<td>${patient_wes.wes_specifications}</td>
										<td>${patient_wes.wes_component}</td>
										<td>${patient_wes.wes_usage}</td>
										<td>${patient_wes.wes_function}</td>
										<td>${patient_wes.wes_taboo}</td>
									</tr>
								</c:forEach>								
								</tbody>
							</table>
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
                                                                                                  已选择的药：
                            <input type="text" class="am-form-field" name="treat_result"/>
                            <button type="submit" class="am-btn am-btn-primary" style="margin-top:30px;">保存</button>
                            </form>
						</div>
		</div>
	</div>


</body>
</html>