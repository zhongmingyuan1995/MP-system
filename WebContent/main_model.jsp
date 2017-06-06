<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
    <meta charset="UTF-8" /> 
    <title>医保处方管理系统</title>  
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    
    <link rel="stylesheet" href="assets/css/app.css"/>
    <script src="assets/js/echarts.min.js"></script> 
</head>
<!-- END HEAD -->
<!-- START BODY -->
<body class="home page no_js responsive stretched">
<!-- START BG SHADOW -->
    <%@include file="main_top.jsp"%>
    <!-- SLOGAN -->
    <div class="slogan">
        <h2>欢迎使用医保处方管理系统</h2>     
    </div>
    <!-- START PRIMARY -->
    <div id="primary" class="sidebar-right">
        <div class="container group">
            <div class="row">
                <!-- START CONTENT -->
                <div id="content-home" class="span9 content group">
                    <div class="page type-page status-publish group">
                        <div class="row">
                            <div id="features-tab-libra" class="features-tab-container  group span9 margin-bottom">
                                <div class="row">
                                    <img src="http://demo.yithemes.com/libra/wp-content/themes/libra/theme/assets/page2/images/features-tab-shadow.png" class="shadow" />
									<ul class="features-tab-labels span3">
										<li class="features-tab-0 current-feature withicon"><img
											src="page2/images/hi.png" title="Welcome to LIBRA"
											alt="Welcome to LIBRA" /> 你好！admin</li>

										<li class="features-tab-1  withicon"><img
											src="page2/images/111.png" title="Sliders features"
											alt="Sliders features" /> <a href="page2/index2.jsp">首页</a></li>

										<li class="features-tab-2  withicon"><img
											src="page2/images/layouts.png" title="Page Layouts & Modules"
											alt="Page Layouts & Modules" /> <a href="page2/index2.jsp">
												消息</a></li>

										<li class="features-tab-3  withicon"><img
											src="page2/images/shortcodes.png" title="Shortcode manager"
											alt="Shortcode manager" /> <a href="page2/index2.jsp">个人信息</a></li>

										<li class="features-tab-4  withicon"><img
											src="page2/images/seo.png" title="SEO Optimized"
											alt="SEO Optimized" /><a href="page2/index2.jsp"> 登记信息</a></li>

										<li class="features-tab-5  withicon"><img
											src="page2/images/customize.png" title="Customize Libra"
											alt="Customize Libra" /> <a href="page2/index2.jsp">预约挂号</a></li>

										<li class="features-tab-6  withicon"><img
											src="page2/images/advanced.png" title="Advanced features"
											alt="Advanced features" /><a href="page2/index2.jsp">
												辅助诊断</a></li>

										<li class="features-tab-7  withicon"><img
											src="page2/images/sample.png" title="Sample data"
											alt="Sample data" /> <a href="page2/index2.jsp">在线咨询</a></li>

										<li class="features-tab-8  withicon"><img
											src="page2/images/forum.png"
											title="Support and Videotutorials"
											alt="Support and Videotutorials" /><a
											href="page2/index2.jsp"> 系统设置</a></li>
									</ul>
									
									
									
									
					<div class="tpl-block" style="float:left;width:600px">
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
                    </div>

                    <!-- START COMMENTS -->
                    <div id="comments"></div>
                    <!-- END COMMENTS -->
                </div>
                <!-- END CONTENT -->

                <!-- START SIDEBAR -->
                <div id="sidebar-features" class="span3 sidebar group">
                    <div class="widget-1 widget-first widget widget-icon-text group">
                        <img class="imgicon" src="page2/images/emotion_smile.png" alt="" />
                        <h3>We&#8217;re on Themeforest</h3>
                        <p>15,500 happy customers</p>
                    </div>

                    <div class="widget-2 widget widget-icon-text group">
                        <a href="http://www.yithemes.com" title="">
                            <img class="imgicon" src="page2/images/themes.png" alt="" />
                            <h3>We do nice themes</h3>
                            <p>view our portfolio</p>
                        </a>
                    </div>
                    <div class="widget-3 widget widget-icon-text group">
                        <a href="http://yithemes.com/" title="">
                            <img class="imgicon" src="page2/images/free.png" alt="" />
                            <h3>Download free themes</h3>
                            <p>Discovery Your Inspiration Themes</p>
                        </a>
                    </div>
                    <div class="widget-4 widget-last widget widget_text">
                        <h3>A nice testimonial:</h3>
                        <div class="textwidget">
                            Thanks for this awesome and totally versatile WP Theme. After working with it for a while,
                            I am happy to say that I would always buy this again! The support is simply phenomenal and more
                            than willing to help, even when I asked if it was possible to add a certain functionality to the theme.
                            All questions were promptly solved within MET timeframes. Thanks yiw and keep up the great work!
                            <strong>[ by wowstyle ]</strong>
                        </div>
                    </div>
                </div>
                <!-- END SIDEBAR -->

                <!-- START EXTRA CONTENT -->
                <!-- END EXTRA CONTENT -->
            </div>
        </div>
    </div>
    <!-- END PRIMARY -->

    <!-- START FOOTER -->
   <div id="footer">
        <div class="container">
            <div class="row">
                <div class="footer-widgets-area with-sidebar-right">
                    <div class="widget-first widget span2 widget_text"><h3>关于我们</h3>
                        <div class="textwidget">
                            医保处方管理系统依托 <a href="#">江西中医药大学</a> 先进的产学研
                           思想，能让管理者掌握医院实际用药情况，
						   从而监控和干预不合理用药的情况，及时避免可能的用药错误和医疗纠纷，实现药品使用的精细化管理，
						   进而提高医院的医疗质量和用药管理水平。
                        </div>
                    </div>

                    <div class="widget span2 widget_nav_menu">
                        <h3>导航</h3>

                        <div class="menu-widget-footer-container">
                            <ul id="menu-widget-footer" class="menu">
                                <li class="menu-item menu-item-type-post_type menu-item-object-page">
                                    <a href="accordion-style.html">关于</a>
                                </li>

                                <li class="menu-item menu-item-type-post_type">
                                    <a href="testimonials.html">首页</a>
                                </li>

                                <li class="menu-item menu-item-type-post_type">
                                    <a href="portfolio-3-columns.html">功能</a>
                                </li>

                                <li class="menu-item menu-item-type-post_type">
                                    <a href="get-in-touch.html">产品</a>
                                </li>

                                <li class="menu-item menu-item-type-custom">
                                    <a href="#">案例</a>
                                </li>

                                <li class="menu-item menu-item-type-custom">
                                    <a href="#">帮助</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="widget-last widget span2 widget_nav_menu">
                        <h3>分享</h3>

                        <div class="menu-socialize-container">
                            <ul id="menu-socialize" class="menu">

                                <li class="menu-item menu-item-type-custom">
                                    <a href="#">QQ</a>
                                </li>

                                <li class="menu-item menu-item-type-custom">
                                    <a href="#">微信</a>
                                </li>
								
                                <li class="menu-item menu-item-type-custom">
                                    <a href="#">人人</a>
                                </li>
								
                                <li class="menu-item menu-item-type-custom">
                                    <a href="#">新浪微博</a>
                                </li>

                                <li class="menu-item menu-item-type-custom">
                                    <a href="#">腾讯微博</a>
                                </li>                              

                                <li class="menu-item menu-item-type-custom">
                                    <a href="#">丁香园论坛</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="footer-widgets-sidebar with-sidebar-right">
                    <div  class="widget-first widget span6 yit_quick_contact">
                        <h3>联系我们</h3>

                        <form class="contact-form row" method="post" action="" enctype="multipart/form-data">

                            <div class="usermessagea"></div>
                            <fieldset>
                                <ul>
                                    <li class="text-field with-icon span3">
                                        <label>
                                            <span class="mainlabel">姓名</span>
                                        </label>

                                        <div class="input-prepend">
                                            <span class="add-on">
                                                <img src="page2/images/footer/author-footer.png" alt="" title=""/></span>
                                            <input type="text" name="yit_contact[name]" class="with-icon required" value=""/>
                                        </div>
                                        <div class="msg-error"></div>
                                        <div class="clear"></div>
                                    </li>

                                    <li class="text-field with-icon span3">
                                        <label>
                                            <span class="mainlabel">邮箱</span>
                                        </label>

                                        <div class="input-prepend">
                                            <span class="add-on">
                                                <img src="page2/images/footer/envelope-footer.png" alt="" title=""/>
                                            </span>
                                            <input type="text" name="yit_contact[email]" class="with-icon required email-validate" value=""/>
                                        </div>
                                        <div class="msg-error"></div>
                                        <div class="clear"></div>
                                    </li>

                                    <li class="textarea-field with-icon span6">
                                        <label>
                                            <span class="mainlabel">备注</span>
                                        </label>

                                        <div class="input-prepend">
                                            <span class="add-on">
                                                <img src="page2/images/footer/pencil-footer.png" alt="" title=""/>
                                            </span>
                                            <textarea name="yit_contact[message]" rows="8" cols="30" class="with-icon required"></textarea>
                                        </div>
                                        <div class="msg-error"></div>
                                        <div class="clear"></div>
                                    </li>

                                    <li class="submit-button span6">
                                        <div style="position:absolute;left:-9999px;">
                                            <input type="text" name="email_check_2" id="email_check_2" value=""/>
                                        </div>
                                        <input type="hidden" name="yit_action" value="sendemail" id="yit_action"/>
                                        <input type="hidden" name="yit_referer" value="index.html"/>
                                        <input type="hidden" name="id_form" value="228"/>
                                        <input type="submit" name="yit_sendemail" value="SEND" class="sendmail alignright"/>
                                        <div class="clear"></div>
                                    </li>
                                </ul>
                            </fieldset>
                        </form>

                        <script type="text/javascript">
                            var messages_form_228 = {
                                name: "Insert the name",
                                email: "Insert a valid email",
                                message: "Insert a message"
                            };
                        </script>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END FOOTER -->

    <!-- START COPYRIGHT -->
    <div id="copyright" style="background-color:#183350">
        <div class="container">
            <div class="row">
                <div class="left span6">
                    <p>
                        <a href="http://www.cssmoban.com/"><img src="page2/images/logo2.jpg" alt="Your Inspiration Themes" style="position:relative; top:9px; margin: -22px 5px 0 0;"></a> <strong></strong> 
                        医保处方管理系统
                    </p>
                </div>
                <div class="right span6">
                    <p>
                        @ 2017 Jiangxi University Of Traditional Chinese Medicine <a href="http://www.cssmoban.com/" title="江西中医药大学" target="_blank">江西中医药大学</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- END COPYRIGHT -->

    <div class="wrapper-border"></div>

    </div>
</body>
<!-- END BODY -->
</html>