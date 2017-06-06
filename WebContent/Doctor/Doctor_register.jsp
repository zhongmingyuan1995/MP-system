<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<li class="am-active">预约信息</li>
		</ol>
		<div class="tpl-portlet-components">
			<div class="portlet-title">
				<div class="caption font-green bold">
					<span class="am-icon-code"></span> 预约信息
				</div>
				<div class="tpl-portlet-input tpl-fz-ml">
					<div class="portlet-input input-small input-inline">
						<div class="input-icon right"></div>
					</div>
				</div>
			</div>
			<div class="am-tabs" data-am-tabs>
				<ul class="am-tabs-nav am-nav am-nav-tabs">
					<li class="am-active"><a href="#tab1">预约管理</a></li>
					<li><a href="#tab2">预约设置</a></li>					
				</ul>

				<div class="am-tabs-bd">
					<div class="am-tab-panel am-active" id="tab1">
					<div class="tpl-block">
				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-6">
						<div class="am-btn-toolbar">
							<div class="am-btn-group am-btn-group-xs">
								<button type="button"
									class="am-btn am-btn-default am-btn-success">
									<span class="am-icon-plus"></span> 新增预约
								</button>
								<button type="button"
									class="am-btn am-btn-default am-btn-secondary">
									<span class="am-icon-save"></span> 日历
								</button>
								<button type="button"
									class="am-btn am-btn-default am-btn-danger">
									<span class="am-icon-trash-o"></span> 列表
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="am-g">
					<table class="am-table am-table-bordered" style="text-align:center;margin-top:20px;">						
						<tbody>
							<tr>
							    <td></td>
								<td>2017-4-30 星期一</td>
								<td>2017-5-1 星期二</td>
								<td>2017-5-2 星期三</td>
								<td>2017-5-3 星期四</td>
								<td>2017-5-4 星期五</td>
								<td>2017-5-5 星期六</td>
								<td>2017-5-6 星期日</td>
							</tr>
							<tr>
							    <td>8：00</td>
								<td> 1人</td>
								<td>2人 </td>
								<td> 2人</td>
								<td>2人 </td>
								<td> 1人</td>
								<td> 2人</td>
								<td> 1人</td>
							</tr>
							<tr>
							    <td>9：00</td>
								<td>2人 </td>
								<td>2人 </td>
								<td> 1人</td>
								<td>2人 </td>
								<td> 1人</td>
								<td>2人 </td>
								<td>2人 </td>
							</tr>
							<tr>
							    <td>10：00</td>
								<td> 2人</td>
								<td>2人 </td>
								<td>1人 </td>
								<td> 2人</td>
								<td>2人 </td>
								<td> 1人</td>
								<td> 2人</td>
							</tr>
							<tr>
							    <td>11：00</td>
								<td>1人 </td>
								<td>2人 </td>
								<td>2人 </td>
								<td>2人 </td>
								<td> 2人</td>
								<td> 1人</td>
								<td> 2人</td>
							</tr>
							<tr>
							    <td>12：00</td>
								<td>2人 </td>
								<td>2人 </td>
								<td> 1人</td>
								<td>2人 </td>
								<td> 1人</td>
								<td>2人 </td>
								<td> 1人</td>
							</tr>
							<tr>
							    <td>13：00</td>
								<td>2人 </td>
								<td> 2人</td>
								<td> 1人</td>
								<td> 2人</td>
								<td> 2人</td>
								<td>1人 </td>
								<td> 2人</td>
							</tr>
							<tr>
							    <td>14：00</td>
								<td>2人 </td>
								<td>1人 </td>
								<td>2人 </td>
								<td>2人 </td>
								<td>1人 </td>
								<td> 2人</td>
								<td> 2人</td>
							</tr>
							<tr>
							    <td>15：00</td>
								<td>1人 </td>
								<td>2人 </td>
								<td>2人 </td>
								<td>2人 </td>
								<td>2人 </td>
								<td>1人 </td>
								<td> 2人</td>
							</tr>
							<tr>
							    <td>16：00</td>
								<td>2人 </td>
								<td>2人 </td>
								<td>2人 </td>
								<td>1人 </td>
								<td> 2人</td>
								<td> 2人</td>
								<td>1人 </td>
							</tr>
							<tr>
							    <td>17：00</td>
								<td> 2人</td>
								<td>2人 </td>
								<td>2人 </td>
								<td>1人 </td>
								<td>1人 </td>
								<td> 2人</td>
								<td> 2人</td>
							</tr>
							<tr>
							    <td>18：00</td>
								<td>2人 </td>
								<td> 1人</td>
								<td>2人 </td>
								<td>2人 </td>
								<td> 2人</td>
								<td>1人 </td>
								<td>2人 </td>
							</tr>
							<tr>
							    <td>19：00</td>
								<td>2人 </td>
								<td>2人 </td>
								<td>1人 </td>
								<td>2人 </td>
								<td> 1人</td>
								<td>2人 </td>
								<td>2人 </td>
							</tr>
							<tr>
							    <td>20：00</td>
								<td>2人 </td>
								<td>1人 </td>
								<td> 1人</td>
								<td> 2人</td>
								<td> 2人</td>
								<td> </td>
								<td>2人 </td>
							</tr>
							<tr>
							    <td>21：00</td>
								<td>1人 </td>
								<td> 1人</td>
								<td>2人 </td>
								<td>2人 </td>
								<td> </td>
								<td> </td>
								<td> </td>
							</tr><tr>
							    <td>22：00</td>
								<td> 2人</td>
								<td> 1人</td>
								<td> </td>
								<td> </td>
								<td> 1人</td>
								<td> </td>
								<td> 2人</td>
							</tr>
														
							
						</tbody>
					</table>
				</div>
			</div>
					</div>
					<div class="am-tab-panel" id="tab2">...</div>					
				</div>
			</div>
			
		</div>
	</div>

</body>
</html>