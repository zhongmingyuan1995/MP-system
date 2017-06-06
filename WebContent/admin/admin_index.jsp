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
<%@include file="Admin_header_left.jsp"%> 
    


        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                                            医保处方系统
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">分类</a></li>
                <li class="am-active">内容</li>
            </ol>
            <div class="tpl-content-scope">
                <div class="note note-info">
                    <h3>医保处方管理系统
                        <span class="close" data-close="note"></span>
                    </h3>
                    <p> 医保处方管理系统  提供定点医保医生的开处方和收费情况，监管人员可快速抽检数据、大幅提升医保监管效率。</p>
                    <p><span class="label label-danger">提示:</span> 欢迎使用医保处方管理系统， 试用期为一个月，剩余天数29天。
                    </p>
                </div>
            </div>

            <div class="row">
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat blue">
                        <div class="visual">
                            <i class="am-icon-comments-o"></i>
                        </div>
                        <div class="details">
                            <div class="number"> 开处方数 ：150个 </div>
                            <div class="desc"> 今日处方</div>
                        </div>
                        <a class="more" href="#"> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat red">
                        <div class="visual">
                            <i class="am-icon-bar-chart-o"></i>
                        </div>
                        <div class="details">
                            <div class="number"> 95% </div>
                            <div class="desc"> 医生出勤率 </div>
                        </div>
                        <a class="more" href="#"> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat green">
                        <div class="visual">
                            <i class="am-icon-user"></i>
                        </div>
                        <div class="details">
                            <div class="number"> 15项 </div>
                            <div class="desc"> 不合理处方 </div>
                        </div>
                        <a class="more" href="#"> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat purple">
                        <div class="visual">
                            <i class="am-icon-group"></i>
                        </div>
                        <div class="details">
                            <div class="number">5.23万元 </div>
                            <div class="desc"> 不合理收费 </div>
                        </div>
                        <a class="more" href="#"> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
             </div>
         </div>



	<div class="am-g" class="am-g">
		<div class="tpl-table-images" style="width: auto;" >
			<div class="am-u-sm-12 am-u-md-6 am-u-lg-4"
				style="float:left;width: 300px; height: 565px; border: 2px solid #fff; background: #fff; margin-left: 20px;">
				<div class="tpl-table-images-content"
					style="background: #fff; border: 2px solid #fff;">
					<a href="javascript:;" class="tpl-table-images-content-i"> <img
						src="assets/img/patient/patient24.jpg"
						style="width: 200px; height: 200px; border-radius: 200px;" /></a>
					<div class="tpl-i-title"
						style="text-align: center; padding-top: 5px">
						<table class="am-table">
							<tbody>
								<tr>
									<td>姓名：钟有禄</td>
								</tr>
								<tr>
									<td>编号：002114618</td>
								</tr>
								<tr>
									<td>医保局</td>
								</tr>
								<tr>
									<td>职称：监管员</td>
								</tr>
								<tr>
									<td>状态：在岗</td>
								</tr>
								<tr>
									<td>手机号：187****0975</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="tpl-table-images-content-block"
						style="margin-left: 60px; width: 300px;">
						<div class="am-btn-toolbar">
							<div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">
								<button type="button"
									class="am-btn am-btn-default am-btn-success">
									<span class="am-icon-edit"></span> 编辑
								</button>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			
			
			
			 <div class="row" >
                <div class="am-u-md-6 am-u-sm-12 row-mb" style="float:left;width:1330px;height:auto;">

                    <div class="tpl-portlet" style="height:auto;">
                        <div class="tpl-portlet-title" style="height:auto;">
                            <div class="tpl-caption font-green ">
                                <span>院部消息</span>
                                <span class="caption-helper">16 件</span>
                            </div>
                            <div class="tpl-portlet-input">
                                <div class="portlet-input input-small input-inline">
                                    <div class="input-icon right">
                                        <i class="am-icon-search"></i>
                                        <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
                                </div>
                            </div>
                        </div>
                        <div id="wrapper" class="wrapper" style="height:480px;">
                            <div id="scroller" class="scroller">
                                <ul class="tpl-task-list">
                                    <li>
                                        <div class="task-checkbox">
                                            <input type="hidden" value="1" name="test">
                                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                        <div class="task-title">
                                            <span class="task-title-sp"> 在院长领导下，分管全院的医疗、护理、医技等科室的工作. </span>
                                            <span class="label label-sm label-success">住院部</span>
                                            <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                                        </div>
                                        <div class="task-config">
                                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                                </a>
                                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-check"></i> 保存 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                                    </li>
                                                </ul>


                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="task-checkbox">
                                            <input type="hidden" value="1" name="test">
                                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                        <div class="task-title">
                                            <span class="task-title-sp"> 督促检查医疗制度、医护常规和技术操作规程的执行情况。 </span>
                                            <span class="label label-sm label-danger">门诊部</span>

                                        </div>
                                        <div class="task-config">
                                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                                </a>
                                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-check"></i> 保存 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                                    </li>
                                                </ul>


                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="task-checkbox">
                                            <input type="hidden" value="1" name="test">
                                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                        <div class="task-title">
                                            <span class="task-title-sp"> 深入科室，了解和检查诊断、治疗和护理情况，必要时领导重危病员的会诊、抢救工作，定期分析医疗指标，采取措施，不断提高医疗护理质量。 </span>
                                            <span class="label label-sm label-warning">运行部</span>

                                        </div>
                                        <div class="task-config">
                                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                                </a>
                                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-check"></i> 保存 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                                    </li>
                                                </ul>


                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="task-checkbox">
                                            <input type="hidden" value="1" name="test">
                                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                        <div class="task-title">
                                            <span class="task-title-sp">负责外事联系、行政接待、业务洽谈。 </span>
                                            <span class="label label-sm label-default">采购部</span>

                                        </div>
                                        <div class="task-config">
                                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                                </a>
                                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-check"></i> 保存 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                                    </li>
                                                </ul>


                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="task-checkbox">
                                            <input type="hidden" value="1" name="test">
                                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                        <div class="task-title">
                                            <span class="task-title-sp"> 安排各种行政会议，做好会议记录，负责综合医院的工作计划、总结及草拟有关文件，并负责督促其贯彻执行。 </span>
                                            <span class="label label-sm label-success">信息科</span>
                                            <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                                        </div>
                                        <div class="task-config">
                                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                                </a>
                                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-check"></i> 保存 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                                    </li>
                                                </ul>


                                            </div>
                                        </div>
                                    </li>


                                    <li>
                                        <div class="task-checkbox">
                                            <input type="hidden" value="1" name="test">
                                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                        <div class="task-title">
                                            <span class="task-title-sp"> 负责领导行政文件的收发登记、转递传阅、立卷归档、保管、利用等工作。 </span>
                                            <span class="label label-sm label-default">行政部</span>

                                        </div>
                                        <div class="task-config">
                                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                                </a>
                                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-check"></i> 保存 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                                    </li>
                                                </ul>


                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="task-checkbox">
                                            <input type="hidden" value="1" name="test">
                                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                        <div class="task-title">
                                            <span class="task-title-sp"> 做好印鉴、打字、外勤、通讯联络、人民群众来访来信处理、参观及外宾的接待等工作医院各科室岗位职责文章医院各科室岗位职责. </span>
                                            <span class="label label-sm label-warning">市场部</span>

                                        </div>
                                        <div class="task-config">
                                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                                </a>
                                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-check"></i> 保存 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                                    </li>
                                                </ul>


                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="task-checkbox">
                                            <input type="hidden" value="1" name="test">
                                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                        <div class="task-title">
                                            <span class="task-title-sp"> 协助各科开展工作，合理安排人员。 </span>
                                            <span class="label label-sm label-default">住院部</span>

                                        </div>
                                        <div class="task-config">
                                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                                </a>
                                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-check"></i> 保存 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                                    </li>
                                                </ul>


                                            </div>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="task-checkbox">
                                            <input type="hidden" value="1" name="test">
                                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                        <div class="task-title">
                                            <span class="task-title-sp"> 负责全院医疗护理业务的检查(本文转自实用工作文档频道)和岗位职责的制定。 </span>
                                            <span class="label label-sm label-success">管理部</span>
                                            <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                                        </div>
                                        <div class="task-config">
                                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                                </a>
                                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-check"></i> 保存 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                                    </li>
                                                </ul>


                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="task-checkbox">
                                            <input type="hidden" value="1" name="test">
                                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                        <div class="task-title">
                                            <span class="task-title-sp"> 学习与运用国内外先进医学科学技术，开展新技术、新疗法，进行科研工作，做好资料积累，及时总结经验。 </span>
                                            <span class="label label-sm label-success">技术部</span>
                                            <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                                        </div>
                                        <div class="task-config">
                                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                                </a>
                                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-check"></i> 保存 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                                    </li>
                                                </ul>


                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="task-checkbox">
                                            <input type="hidden" value="1" name="test">
                                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                        <div class="task-title">
                                            <span class="task-title-sp"> 掌握病员的病情变化，病员发生病危、死亡、医疗事故或其他重要问题时，应及时处理，并向院办及业务院长汇报。 </span>
                                            <span class="label label-sm label-success">技术部</span>
                                            <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                                        </div>
                                        <div class="task-config">
                                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                                </a>
                                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-check"></i> 保存 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                                    </li>
                                                </ul>


                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
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