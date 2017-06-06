<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
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
                                            医保处方管理系统
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">分类</a></li>
                <li class="am-active">信息登记</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span>信息登记
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <div class="input-icon right">
                                <i class="am-icon-search"></i>
                                <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
                        </div>
                    </div>


                </div>

                <div class="tpl-block">

                    <div class="am-g">
                        <div class="tpl-form-body tpl-form-line">
                            <form class="am-form tpl-form-line-form" action="addPatientByUser.action" method="post">
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">姓名<span class="tpl-form-line-small-title">Name</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" id="user-name" name="Pname" placeholder="请输入姓名"/>
                                       
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-email" class="am-u-sm-3 am-form-label">出生日期 <span class="tpl-form-line-small-title">Birthday</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="am-form-field tpl-form-no-bg"  name="Pborth" placeholder="出生日期" data-am-datepicker="" readonly/>
                                       
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-phone" class="am-u-sm-3 am-form-label">性别 <span class="tpl-form-line-small-title">Gender</span></label>
                                    <div class="am-u-sm-9">
                                        <select data-am-selected="{searchBox: 1}"  name="Pgender" >
                                           <option value="a">男</option>
                                           <option value="b">女</option>
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-phone" class="am-u-sm-3 am-form-label">婚姻状况<span class="tpl-form-line-small-title">Marital status</span></label>
                                    <div class="am-u-sm-9">
                                        <select data-am-selected="{searchBox: 1}"  name="Pmarital_status" >
                                           <option value="a">已婚</option>
                                           <option value="b">未婚</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">手机号<span class="tpl-form-line-small-title">teliphone number</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text"  name="Ptel" placeholder="输入手机号"/>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">邮箱<span class="tpl-form-line-small-title">Email</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="Pemail" placeholder="输入邮箱"/>
                                    </div>
                                </div>                                                          
                                
                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">民族<span class="tpl-form-line-small-title">Nation</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text"  name="Pnation" placeholder="输入民族"/>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">职业<span class="tpl-form-line-small-title">Occupation</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="Poccupation" placeholder="输入职业"/>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">工作单位<span class="tpl-form-line-small-title">Work unit</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="Pwork_unit" placeholder="输入工作单位"/>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">地址<span class="tpl-form-line-small-title">Address</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="Paddress" placeholder="输入工作地址"/>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">照片 <span class="tpl-form-line-small-title">Photo</span></label>
                                    <div class="am-u-sm-9">
                                        <div class="am-form-group am-form-file">
                                            <button type="button" class="am-btn am-btn-danger am-btn-sm">
    <i class="am-icon-cloud-upload"></i> 添加照片</button>
                                            <input id="doc-form-file" name="Pphoto" type="file" multiple/>
                                        </div>

                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-3 am-form-label">备注<span class="tpl-form-line-small-title">Remarks</span></label>
                                    <div class="am-u-sm-9">
                                        <textarea class="" rows="10" id="user-intro" name="Premarks" placeholder="输入病历信息，如个人史，家族史，过敏史，若无则不用填写"></textarea>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success " data-am-modal="{target: '#my-alert'}">提交</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>


            </div>










        </div>

    </div>
    <div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
  <div class="am-modal-dialog">
    <div class="am-modal-hd">恭喜你！</div>
    <div class="am-modal-bd">
      提交成功
    </div>
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