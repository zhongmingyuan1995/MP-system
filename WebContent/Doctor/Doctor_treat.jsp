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
            <div class="tpl-content-page-title">
                                        医保处方管理系统
            </div>
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
                            <div class="input-icon right">                                                      
                        </div>
                    </div>
                  </div>		
					 
				</div>
				 <c:forEach items="${PatientList}" var="Patient">
				<div class="am-u-sm-12 am-u-md-6 am-u-lg-4" style="float:left;width:300px;">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time">纪录时间：2016-09-12</div> 
                                    <div class="tpl-i-title">
                                  ${Patient.pname}（${Patient.pgender}）<br/>病案号：002114618（初诊）<br/>手机号：${Patient.ptel}<br/>诊断：${Patient.premarks}
                                    </div>                                  
                                    <a href="javascript:;" class="tpl-table-images-content-i">
                                    <img class="am-img-thumbnail am-circle" src="assets/img/patient/patient32.jpg"  style=" width:200px; height:200px;"/>                                                               
                                    </a>
                                    <div class="tpl-table-images-content-block">                                                                              
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn" style="width:300px;" >                                                                                              
                                                <button type="button" class="am-btn am-btn-default am-btn-success" style="margin-left:65px"><span class="am-icon-edit"></span> 编辑</button>                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                 </div>
                 </c:forEach>
				<div class="am-tabs" data-am-tabs style="float:left;width:1024px;">
					<ul class="am-tabs-nav am-nav am-nav-tabs">
						<li class="am-active"><a href="#tab-4-1">病历</a></li>						
                        <li><a href="#tab-4-2">检查</a></li>
						<li><a href="#tab-4-3">治疗</a></li>
						<li><a href="#tab-4-4">处方</a></li>						
                        <li><a href="#tab-4-5">收费</a></li>
					</ul>
					<div class="am-tabs-bd am-tabs-bd-ofv">
						<div class="am-tab-panel am-active" id="tab-4-1">
							<div class="tpl-block ">
                            <div class="am-g tpl-amazeui-form">
                            <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal" action="insertPatient_rec.action" id="myForm" method="post" onsubmit="return checkTime()">
                            <fieldset>
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">发病日期</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="am-form-field" name="time" placeholder="日历组件" data-am-datepicker  required />                                        
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-email" class="am-u-sm-3 am-form-label">主诉</label>
                                    <div class="am-u-sm-9">
                                      <textarea class="" rows="5" id="user-intro"  name="main"placeholder="输入主诉" required></textarea>                              
                                  </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-phone" class="am-u-sm-3 am-form-label">现病史</label>
                                    <div class="am-u-sm-9">
                                        <textarea class="" rows="5" id="user-intro"  name="present" placeholder="输入现病史" ></textarea>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-QQ" class="am-u-sm-3 am-form-label">既往病史</label>
                                    <div class="am-u-sm-9">
                                       <textarea class="" rows="5" id="user-intro" name="past" placeholder="输入既往病史"></textarea>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">过敏史</label>
                                    <div class="am-u-sm-9">
                                       <select data-am-selected="{searchBox: 1}" name="allergy">
                                       <option value="有">有</option>
                                       <option value="无">无</option>  
                                       </select>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">初步诊断</label>
                                    <div class="am-u-sm-9">
                                       <select data-am-selected="{searchBox: 1}" name="diagnosis" required>
                                       <option value="感冒">感冒</option>
                                       <option value="高血压">高血压</option> 
                                       <option value="过敏性鼻炎">过敏性鼻炎</option>
                                       <option value="小儿肺炎">小儿肺炎</option>  
                                       <option value="慢性支气管炎">慢性支气管炎</option>
                                       <option value="支气管哮喘">支气管哮喘</option>                                       
                                       </select>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-QQ" class="am-u-sm-3 am-form-label">治疗意见</label>
                                    <div class="am-u-sm-9">
                                       <textarea class="" rows="5" id="user-intro" placeholder="治疗意见" name="treat" required></textarea>
                                    </div>
                                </div>                              

                                <div class="am-form-group" style="float:left">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <input type="submit" class="am-btn am-btn-primary"   value="保存修改" />                                     
                                    </div>                                  
                                </div>
                                <div class="am-form-group" style="float:right">
                                    <div class="am-u-sm-9 am-u-sm-push-3" >
                                        <button type="button" class="am-btn am-btn-primary">打印病历</button>                                    
                                    </div>                                  
                                </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>									
				</div>
			</div>
						<div class="am-tab-panel" id="tab-4-2">
								<div class="tpl-block ">
                            <div class="am-g tpl-amazeui-form">
                            <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal" action="getAllPatient.action" method="post">  
                                <div class="am-form-group" >
                                    <label for="user-QQ" class="am-u-sm-3 am-form-label">实验室检查</label>
                                    <div class="am-u-sm-9">
										<select data-am-selected="{searchBox: 1}" style="float:left" name="laboratory">
											<option value="血清蛋白质测定（ALB）">血清蛋白质测定（ALB）</option>
											<option value="甘胆酸测定（CG）">甘胆酸测定（CG）</option>
											<option value="脂肪酶（LPS）">脂肪酶（LPS）</option>
											<option value="淀粉酶测定（AMY）">淀粉酶测定（AMY）</option>
											<option value="血清免疫固定电泳">血清免疫固定电泳</option>
											<option value="肌酐测定（CREA）">肌酐测定（CREA）</option>											
										</select>									
									</div>
                                </div>    
                                
                                 <div class="am-form-group">
                                    <label for="user-QQ" class="am-u-sm-3 am-form-label">检查结果</label>
                                    <div class="am-u-sm-9">
                                       <textarea class="" rows="5" id="user-intro" placeholder="检查结果" name="laboratory_result"></textarea>
                                    </div>
                                </div>
                                 
                                <div class="am-form-group">
                                    <label for="user-QQ" class="am-u-sm-3 am-form-label">辅助检查</label>
                                    <div class="am-u-sm-9">
										<select data-am-selected="{searchBox: 1}" style="float:left" name="auxiliary">
											<option value="彩超常规检查(一个部位)">彩超常规检查(一个部位)</option>
											<option value="浅表器官彩超检查(一个部位)">浅表器官彩超检查(一个部位)</option>
											<option value="颅内段血管彩色多普勒超声">颅内段血管彩色多普勒超声</option>
											<option value="四肢多普勒血流图">四肢多普勒血流图</option>
											<option value="床旁超声心动图">床旁超声心动图</option>
											<option value="腹部大血管彩色多普勒超声">腹部大血管彩色多普勒超声</option>											
										</select>									
									</div>
                                </div>    
                                
                                 <div class="am-form-group">
                                    <label for="user-QQ" class="am-u-sm-3 am-form-label">检查结果</label>
                                    <div class="am-u-sm-9">
                                       <textarea class="" rows="5" id="user-intro" placeholder="检查结果" name="auxiliary_result"></textarea>
                                    </div>
                                </div>                         

                                <div class="am-form-group" style="float:left">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary">保存</button>                                     
                                    </div>                                  
                                </div>                              
                            </form>
                        </div>
                    </div>									
				</div>												
						</div>
						<div class="am-tab-panel" id="tab-4-3">
							<ul class="am-nav am-nav-pills" style="text-align:center">
								<li style="width:200px;"><a href="#">名称</a></li>
								<li style="width:200px;"><a href="#">单位</a></li>
								<li style="width:200px;"><a href="#">次数</a></li>
								<li style="width:200px;"><a href="#">说明</a></li>
								<li style="width:200px;"><a href="#">操作</a></li>
							</ul>									
							<form class="am-form-inline" role="form" action="getAllPatient.action" method="post">
							<select multiple data-am-selected style="float:left;" name="treatname">
								<option value="a">家庭巡诊</option>
								<option value="b">儿童龋齿预防保健</option>
								<option value="o">围产保健访视</option>
								<option value="m">胸外心脏按压</option>
							</select>
								<div class="am-form-group" style="width:200px;text-align:center">
								次
								</div>

								<div class="am-form-group">
									<input type="text" class="am-form-field" style="width:200px;text-align:center" name="number"/>
								</div>
								<div class="am-form-group">
									<input type="text" class="am-form-field"  style="width:200px;text-align:center" name="explain"/>
								</div>
								<button type="button" class="am-btn am-btn-default am-btn-success" style="margin-left:10px;">新增</button>    
								<button type="submit" class="am-btn am-btn-default am-btn-danger" style="margin-left:10px;">删除</button>
								<button type="submit" class="am-btn am-btn-primary" style="margin-top:30px;">保存</button>
							</form>
						</div>
						<div class="am-tab-panel" id="tab-4-4">
						<form  action="getAllPatient.action" method="post">
							<ul class="am-nav am-nav-pills">
								<li class="am-active"><a href="#" >西药处方</a></li>
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
								
									<tr>
										<td><label class="am-checkbox"><input type="checkbox" value="" name="Pid"/> </label></td>
										<td>葡醛内酯胶囊</td>
										<td>肝胆科用药,其它科用药</td>
										<td>国药准字H32025525</td>
										<td>每粒0.1g</td>
										<td>葡醛内酯</td>
										<td>口服。成人：一次0.1～0.2g（1~2粒），一日3次。小儿：5岁以下小儿一次半粒；5岁以上小儿一次0.1g（1粒），一日3次。</td>
										<td>主要用于急慢性肝炎的治疗。</td>
										<td>1、本品性状发生改变时，禁止使用。2、请放在儿童不能拿到之处。 </td>
									</tr>
									<tr>
										<td><label class="am-checkbox"><input type="checkbox" value="" name="Pid"/> </label></td>
										<td>转移因子胶囊（华津）</td>
										<td>皮肤科用药</td>
										<td>国药准字H20073955</td>
										<td>3mg×12粒 </td>
										<td>本品主要成分为从健康猪脾脏中提取的多肽氨基酸和多核苷酸等</td>
										<td>口服，推荐3mg～6mg/次，2～3次/日。</td>
										<td>本品主要用于治疗病毒性感染和自身免疫性疾病。</td>
										<td>当药品性状发生改变时禁止使用。 </td>
									</tr>
									<tr>
										<td><label class="am-checkbox"><input type="checkbox" value="" name="Pid"/> </label></td>
										<td>卡托普利片</td>
										<td>心血管用药</td>
										<td>国药准字H31020449</td>
										<td>(1)12.5mg (2)25mg </td>
										<td>本品主要成份为：卡托普利。</td>
										<td>外用，涂搽于洗净的患处，早晚各1次，症状消失后（通常需2～5周）应继续用药10天，以防复发。 </td>
										<td>（1）高血压。（2）心力衰竭。</td>
										<td>对本品或其他血管紧张素转换酶抑制剂过敏者禁用。 </td>
									</tr>								
											
								</tbody>
							</table>
							  <div class="am-u-lg-12">
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
                                                                                                  已选择的药：
                            <input type="text" class="am-form-field" name="treat_result" value="卡托普利片"/> 
                            <button type="submit" class="am-btn am-btn-primary" style="margin-top:30px;">保存</button>
                            </form>
						</div>
						<div class="am-tab-panel" id="tab-4-5">
						<form class="am-form-inline" role="form" action="getAllPatient.action" method="post">
							<div data-am-widget="titlebar"
								class="am-titlebar am-titlebar-default">
								<h2 class="am-titlebar-title ">收费明细</h2>

								<nav class="am-titlebar-nav"> <a href="#more" class="">more
									&raquo;</a> </nav>
							</div>
							<div class="am-g" style="margin-top:30px;">
								<div class="am-u-lg-6">
									<div class="am-input-group am-input-group-primary">
									<span class="am-input-group-btn">
											<button class="am-btn am-btn-primary" type="button">
										<span>单价</span></button> </span> <input type="text"
											class="am-form-field" name="unit_Price"/>
									</div>
								</div>									
								<div class="am-u-lg-6">
									<div class="am-input-group am-input-group-primary">
										<span class="am-input-group-btn">
											<button class="am-btn am-btn-primary" type="button">
												<span>总额</span>
											</button>
										</span> <input type="text" class="am-form-field" name="total"/>
									</div>
								</div>								
							</div>
							 <button type="submit" class="am-btn am-btn-primary" style="margin-top:30px;margin-left:18px;">保存</button>
							 </form>
						</div>
					</div>
				</div>
			</div>
       </div>
	<div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
		<div class="am-modal-dialog">
			<div class="am-modal-hd">医保处方管理系统</div>
			<div class="am-modal-bd">操作成功！</div>
			<div class="am-modal-footer">
				<span class="am-modal-btn">确定</span>
			</div>
		</div>
	</div>

	<script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>

</html>