<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>江中医保处方系统</title>
	
  <link href="css/my.css" rel="stylesheet">
  <link href="css/loginregister.css" rel="stylesheet">
  <link href="css/jquery.zySlide.css" rel="stylesheet">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <link href="css/bootstrap-theme.min.css" rel="stylesheet">
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/templatemo-style.css" rel="stylesheet">
  <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
  <script src="js/BOOTjquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/my.js"></script>
<script type="text/javascript">


</script>
  </head>
  <body>
    <!-- Preloader -->
    <div id="loader-wrapper">
      <div id="loader"></div>
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>
    </div>
    <!-- End Preloader -->
    <div class="header_container header_fixed header_bg_color" id="header_container" style="max-width:auto;min-width: auto;">
        	<div class="menu">
            	<div class="icon" style="margin-top:8px;width: 136px;float: left;">
                    <a href="index.jsp"><img src="img/MyImage/icon2.png" title="学堂在线" /></a>
                </div>
                <div class="list">
                    <div class="menulist" style="width: 15%">
  						<a href="intoCourseList.action?pageIndex=0&pageNum=5" target="">医保资讯</a>
                    </div>
                    <div class="menulist" style="width: 15%">
                        <a href="#" target="">医保处方</a>
                    </div>
                    <div class="menulist" style="width: 15%">
                        <a href="#" target="">常见疾病</a>
                    </div>
                    <div class="menulist" style="width: 17%">
                        <a href="#" target="">辅助诊断</a>
                    </div>
                    <div class="menulist" style="width: 17%">
                        <a href="#" target="">医学论坛</a>
                    </div>   
                    <div class="menulist" style="width: 21%">
                        <a href="#" target="">联系我们</a>
                    </div>
                </div> 
                
                <form class="bs-example bs-example-form" style="width:280px;height:50px;float:left;margin-left:40px;">
                    <div class="input-group">
                        <input type="text" class="form-control" style="width:230px;height:35px;margin-top:7.5px;float:left;background:none;	border-radius:25px;font-size:16px;" placeholder="医保、处方、病症" >
                        <button type="button" class="btn btn-default btn-lg" style="background:none;border:none;width:50px;height:50px;box-shadow: none;">
						  		<span class="glyphicon glyphicon-search"></span>
						</button>
                    </div>
                </form>
                <div class="menulogin" style="width: 110px;">
                	<button id="register" class="register" data-toggle="modal" data-target="#registModal">注册</button>
                    <button id="login" class="login" data-toggle="modal" data-target="#loginModal">登录</button>
                </div>
            </div>
    </div>
    <!--  <section class="tm-welcome-section" style="margin-top: 50px;">
      <div class="container tm-position-relative">
        <div class="tm-lights-container">
          <img src="img/light.png" alt="Light" class="light light-1" style="z-index: 1;">
          <img src="img/light.png" alt="Light" class="light light-2" style="z-index: 1;">
          <img src="img/light.png" alt="Light" class="light light-3" style="z-index: 1;">  
        <img src="img/MyImage/blackboard.png" alt="Table Set" class="tm-table-set img-responsive" style="width: 1300px;height: 390px;">
        </div> 
        <div class="row tm-welcome-content" style="z-index: 1;position: relative;">
        
        </div>
        <img src="img/table-set.png" alt="Table Set" class="tm-table-set img-responsive">             
      </div>      
    </section>-->
    <div class="tm-main-section light-gray-bg">
      <div class="container">
        <section class="tm-section row">
        	<div class="col-lg-12 tm-section-header-container">
            <h2 class="tm-section-header gold-text tm-handwriting-font" ><img src="img/MyImage/videoicon2.png" alt="Logo" class="tm-site-logo" style="width: 40px;height: 40px;">系统功能</h2>
            <div class="tm-hr-container"><hr class="tm-hr"></div>
          </div>
          <div id="Slide1" class="zy-Slide">
						<section><img src="img/MyImage/left.png"></section>
						<section><img src="img/MyImage/right.png"></section>
						<ul>
							<li><img src="images/videocourse17.jpg" /></li>
							<li><img src="images/videocourse18.jpg" /></li>
							<li><img src="images/videocourse19.jpg" /></li>
							<li><img src="images/videocourse14.jpg" /></li>
							<li><img src="images/videocourse15.jpg" /></li>
							<li><img src="images/videocourse16.jpg" /></li>
							<li><img src="images/videocourse1.jpg" /></li>
						</ul>
						<script src="js/jquery.min.js"></script>
						<script src="js/jquery.zySlide.js"></script>
						<script src="js/index.js"></script>
					</div>            
        </section>          
        <section class="tm-section tm-section-margin-bottom-0 row" style="min-width: 960px;">
          <div class="col-lg-12 tm-section-header-container">
            <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/MyImage/hoticon.png" alt="Logo" class="tm-site-logo" style="width: 40px;height: 40px;">系统特点</h2>
            <div class="tm-hr-container"><hr class="tm-hr"></div>
          </div>
          <div class="col-lg-12 tm-popular-items-container">
            <div class="tm-popular-item">
              <img src="images/popularcourse1.jpg" alt="Popular" class="tm-popular-item-img">
              <div class="tm-popular-item-description">
                <h4 class="tm-handwriting-font tm-popular-item-title"><span class="tm-handwriting-font bigger-first-letter"></span>Java程序设计</h4><hr class="tm-popular-item-hr">
                <p>Java语言已经成为当前软件开发行业中主流的开发语言。本课程将介绍Java环境搭建、工具使用、基础语法。带领大家踏入Java达人殿堂！</p>
                <div class="order-now-container">
                  <a href="#" class="order-now-link tm-handwriting-font">Study Now</a>
                </div>
              </div>              
            </div>
            <div class="tm-popular-item">
              <img src="images/popularcourse2.jpg" alt="Popular" class="tm-popular-item-img">
              <div class="tm-popular-item-description">
                <h4 class="tm-handwriting-font tm-popular-item-title"><span class="tm-handwriting-font bigger-first-letter"></span>Android开发</h4><hr class="tm-popular-item-hr">
                <p>本课程涵盖全部Android应用开发的基础，根据技能点的作用分为5个篇章，包括环境篇、控件篇、布局篇、组件篇和通用篇。</p>
                <div class="order-now-container">
                  <a href="#" class="order-now-link tm-handwriting-font">Study Now</a>
                </div>
              </div>              
            </div>
            <div class="tm-popular-item">
              <img src="images/popularcourse3.jpg" alt="Popular" class="tm-popular-item-img">
              <div class="tm-popular-item-description">
                <h3 class="tm-handwriting-font tm-popular-item-title"><span class="tm-handwriting-font bigger-first-letter"></span>IOS基础教程</h3><hr class="tm-popular-item-hr">
                <p>本课程为ios的基础课程，介绍如何在ios上进行界面的开发，在这里可以学会在界面上显示自己喜欢的图片和文字，让你体会到界面的神奇所在。</p>
                <div class="order-now-container">
                  <a href="#" class="order-now-link tm-handwriting-font">Study Now</a>
                </div>
              </div>              
            </div>
          </div>          
        </section>
        <section class="tm-section row" style="min-width: 960px;">
          <div class="col-lg-12 tm-section-header-container">
            <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/MyImage/specialicon.png" alt="Logo" class="tm-site-logo" style="width: 40px;height: 40px;"> Special Course</h2>
            <div class="tm-hr-container"><hr class="tm-hr"></div>
          </div>          
          <div class="col-lg-12 tm-special-container margin-top-40 margin-bottom-30">
            <div class="tm-special-container-left"> <!-- left -->
              <div class="tm-special-item">
                <div class="tm-special-img-container">
                  <img src="images/specialcourse5.jpg" alt="Special" class="tm-special-img img-responsive">  
                  <a href="#">
                    <div class="tm-special-description">
                      <h3 class="tm-special-title">医保处方</h3>
                      <p>查询报销，就是这么简单</p>  
                    </div>            
                  </a>
                </div>
              </div>
            </div>
            <div class="tm-special-container-right"> <!-- right -->
              <div>
                <div class="tm-special-item">
                  <div class="tm-special-img-container">
                    <img src="images/specialcourse2.jpg" alt="Special" class="img-responsive">  
                    <a href="#">
                      <div class="tm-special-description">
                        <h4 class="tm-special-title">为何世界上的葡萄酒厂分布在北纬37°</h4>
                      </div>
                    </a>
                  </div>
                </div>  
              </div>
              <div class="tm-special-container-lower">
                <div class="tm-special-item">
                  <div class="tm-special-img-container">
                    <img src="images/specialcourse3.jpg" alt="Special" class="img-responsive">  
                    <a href="#">
                      <div class="tm-special-description">
                        <p>企业最关心什么？</p>
                      </div>
                    </a>
                  </div>
                </div>
                <div class="tm-special-item">
                  <div class="tm-special-img-container">
                    <img src="images/specialcourse4.jpg" alt="Special" class="img-responsive">  
                    <a href="#">
                      <div class="tm-special-description">
                        <p>不同国家的饮食文化</p>
                      </div>
                    </a>
                  </div>
                </div>  
              </div>              
            </div>
          </div>
        </section>
        <section class="tm-section" style="min-width: 960px;">
          <div class="row">
            <div class="col-lg-12 tm-section-header-container">
              <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/MyImage/partnericon.png" alt="Logo" class="tm-site-logo" style="width: 40px;height: 40px;"> Partner School</h2> 
              <div class="tm-hr-container"><hr class="tm-hr"></div> 
            </div>  
          </div>          
          <div class="row margin-top-30 margin-bottom-30">
            <!--合作伙伴-->
						<div class="cooperation pb_80" id="cooperation">
							<div class="cooperation_wrap wrap" style="height: 265px;">
								<div class="cooperation_left fl">
							      <a href="http://www.nuc.edu.cn/" target="_blank">
							        <img src="images/zhongbeidaxue.png" style="width: 130px;height: 260px;">
							      </a>
								</div>
								<div class="cooperation_right cf fl">
									<ul class="cf">
										<li>
											<a href="http://www.cumt.edu.cn/" title="中国矿业大学" target="_blank">
												<div class="normal">
													<img class="scrollLoading" src="images/zhongguokuangye.png">
													<h3>中国矿业大学</h3>
												</div>
											</a>
										</li>
										<li>
											<a href="http://www.seu.edu.cn/" title="东南大学" target="_blank">
												<div class="normal">
													<img class="scrollLoading" src="images/dongnan.png">
													<h3>东南大学</h3>
												</div>
											</a>
										</li>
										<li>
											<a href="http://www.seu.edu.cn/" title="大连海事大学" target="_blank">
												<div class="normal">
													<img class="scrollLoading" src="images/dalianhaishi.png">
													<h3>大连海事大学</h3>
												</div>
											</a>
										</li>
										<li>
											<a href="http://www.wzu.edu.cn/" title="温州大学" target="_blank">
												<div class="normal">
													<img class="scrollLoading" src="images/wenzhou.png">
													<h3>温州大学</h3>
												</div>
											</a>
										</li>
										<li>
											<a href="http://www.fudan.edu.cn/" title="复旦大学" target="_blank">
												<div class="normal">
													<img class="scrollLoading" src="images/Fudan.png">
													<h3>复旦大学</h3>
												</div>
											</a>
										</li>
										<li>
											<a href="http://www.xjtu.edu.cn/" title="西安交通大学" target="_blank">
												<div class="normal">
													<img class="scrollLoading" src="images/xianjiaotong.png">
													<h3>西安交通大学</h3>
												</div>
											</a>
										</li>
										<li>
											<a href="http://www.stanford.edu/" title="斯坦福大学" target="_blank">
												<div class="normal">
													<img class="scrollLoading" src="images/Stanford.png">
													<h3>斯坦福大学</h3>
												</div>
											</a>
										</li>
										<li>
											<a href="http://www.mit.edu/" title="麻省理工学院" target="_blank">
												<div class="normal">
													<img class="scrollLoading" src="images/MIT.png">
													<h3>麻省理工学院</h3>
												</div>
											</a>
										</li>
										<li>
											<a href="https://www.universityofcalifornia.edu/" title="加州大学伯克利分校" target="_blank">
												<div class="normal">
													<img class="scrollLoading" src="images/Berkeley.png">
													<h3>加州大学伯克利分校</h3>
												</div>
											</a>
										</li>
										<li>
											<a href="/partners" title="更多院校" target="_blank">
												<div class="normal">
													<img class="scrollLoading" src="images/indexmore.png">
													<h3>更多院校</h3>
												</div>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!--合作伙伴结束-->	
          </div>          
        </section>
      </div>
    </div> 
    <footer>
      <div class="tm-black-bg">
        <div class="container">
          <div class="row margin-bottom-60">
            <nav class="col-lg-3 col-md-3 tm-footer-nav tm-footer-div">
              <h3 class="tm-footer-div-title">Main Menu</h3>
              <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Directory</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Our Services</a></li>
              </ul>
            </nav>
            <div class="col-lg-5 col-md-5 tm-footer-div">
              <h3 class="tm-footer-div-title">About Us</h3>
              <p class="margin-top-15">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.</p>
              <p class="margin-top-15">Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus.</p>
            </div>
            <div class="col-lg-4 col-md-4 tm-footer-div">
              <h3 class="tm-footer-div-title">Get Social</h3>
              <p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante.</p>
              <div class="tm-social-icons-container">
                <a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                <a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                <a href="#" class="tm-social-icon"><i class="fa fa-linkedin"></i></a>
                <a href="#" class="tm-social-icon"><i class="fa fa-youtube"></i></a>
                <a href="#" class="tm-social-icon"><i class="fa fa-behance"></i></a>
              </div>
            </div>
          </div>          
        </div>  
      </div>      
   </footer> <!-- Footer content-->  
   <!-- JS -->
   <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
   <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->
	
		<!-- 注册Modal -->
		<div class="modal fade" id="registModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h3 class="modal-title" id="myModalLabel"><b>用户注册</b></h3>
		      </div>
		      <div class="modal-body">
		        <div class="content">
				    <div class="main">
					<p>以下所有注册资料都需认真填写，并保证真实性！ </p>
						<form action="userRegist.action" method="post" onsubmit="return checkForm()">
							<ul class="left-form">
								<li>
									<input type="text"  placeholder="用户名" required id="userName" onblur="checkUserName()" name="userName"/>
									<a class="icon2 un2"> </a>
									<div class="clear"> </div>
								</li> 
								<li>
									<input type="password"   placeholder="密码" required id="passWord" onblur="checkPassWord1()" name="passWord"/>
									<a class="icon2 pw2"> </a>
									<div class="clear"> </div>
								</li> 
								<li>
									<input type="password"   placeholder="确认密码" required id="passWord2" onblur="checkPassWord2()"/>
									<a class="icon2 pw22"> </a>
									<div class="clear"> </div>
								</li> 
								<li>
									<input type="text"  placeholder="邮箱" required id="email" onblur="checkEmail()" name="email"/>
									<a class="icon2 em2"> </a>
									<div class="clear"> </div>
								</li> 
								<li>
									<input type="text"  placeholder="电话" required id="tel" onblur="checkTel()" name="tel"/>
									<a class="icon2 tel2"> </a>
									<div class="clear"> </div>
								</li> 
								<label class="checkbox" style="margin-top: 5px"><input type="checkbox" name="checkbox"  id="checkBox"><i>我已阅读并同意《网站服务协议》</i></label><br>    
							</ul>
							<div class="clear"> </div>
							<div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						        <button type="submit" class="btn btn-success">提交</button>
						    </div>
						</form>
					</div>
				</div>
		      </div>
		    </div>
		  </div>
		</div>
		<!-- 登陆Modal -->
		<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog" style="width: 400px;margin-top: 120px;">
		    <div class="modal-content">
		      <div class="modal-body" style="padding: 0;">
		        <section id="content" style=" border-radius: 6px;">
		        	<div class="modal-header" style="border-bottom: none;">
		        		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		     		</div>
					<form action="userLogin.action" method="post" onsubmit="return loginCheck()" style="width: 358px; height: 240px;">
						<h1>用 户 登 录</h1>
						<div>
							<input type="text" placeholder="账号" id="loginuserName" name="userName" required/>
						</div>
						<div>
							<input type="password" placeholder="密码" id="loginpassWord" name="passWord" required/>
						</div>
						<div class="loginInfo" style="height: 20px;color: red"></div>
						<div>
							<select class="ui dropdown" name="tp" id="tp">
								  <option value="1" selected="selected">普通用户</option>
								  <option value="2">医生</option>
								  <option value="3">管理员</option>
							</select>
							<input type="submit" value="登    录" />
						</div>
					</form><!-- form -->
					<div class="button">
						<div>
							<a href="javascript:void(0);">忘记密码？</a>
							<a href="javascript:void(0);" id="nousername" >没有账号？</a>
						</div>
					</div><!-- button -->
				</section><!-- content -->
		      </div>
		    </div>
		  </div>
		</div>
 </body>
 </html>