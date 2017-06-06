<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath(); 
    String basePath = request.getScheme()+"://"+request.getServerName()
    +":"+request.getServerPort()+path+"/";
%>
<head>
    <base href=" <%=basePath%>"> 
    <meta charset="UTF-8" />

    <!-- this line will appear only if the website is visited with an iPad -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />
    <title>医保处方管理系统</title>
    <!-- RESET STYLESHEET -->
    <link rel="stylesheet" type="text/css" media="all" href="page2/css/reset.css" />
    <!-- BOOTSTRAP STYLESHEET -->
    <link rel="stylesheet" type="text/css" media="all" href="page2/css/bootstrap.css" />
    <!-- MAIN THEME STYLESHEET -->
    <link rel="stylesheet" type="text/css" media="all" href="page2/style.css" />

    <!-- [favicon] begin -->
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
    <link rel="icon" type="image/x-icon" href="favicon.ico" />
    <!-- [favicon] end -->

    <!-- Touch icons more info: http://mathiasbynens.be/notes/touch-icons -->
    <!-- For iPad3 with retina display: -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144x.png" />
    <!-- For first- and second-generation iPad: -->
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114x.png" />
    <!-- For first- and second-generation iPad: -->
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-72x.png">
    <!-- For non-Retina iPhone, iPod Touch, and Android 2.1+ devices: -->
    <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-57x.png" />
    <link rel='stylesheet' id='thickbox-css'  href='page2/js/thickbox/thickbox.css' type='text/css' media='all' />
    <link rel='stylesheet' id='usquare-css-css'  href='page2/sliders/usquare/css/frontend/usquare_style.css' type='text/css' media='all' />
    <link rel='stylesheet' id='responsive-css'  href='page2/css/responsive.css' type='text/css' media='all' />
    <link rel='stylesheet' id='polaroid-slider-css'  href='page2/sliders/polaroid/css/polaroid.css' type='text/css' media='all' />
    <link rel='stylesheet' id='ahortcodes-css'  href='page2/css/shortcodes.css' type='text/css' media='all' />
    <link rel='stylesheet' id='contact-form-css'  href='page2/css/contact_form.css' type='text/css' media='all' />
    <link rel='stylesheet' id='custom-css'  href='page2/css/custom.css' type='text/css' media='all' />

    <style type="text/css">
            body { background-color: #ffffff; background-image: url('page2/images/bg-pattern.png'); background-repeat: repeat; background-position: top left; background-attachment: scroll; }
    </style>

    <script type='text/javascript' src='page2/js/jquery/jquery.js'></script>
    

</head>
<!-- END HEAD -->
<!-- START BODY -->
<body class="home page no_js responsive stretched">

<!-- START BG SHADOW -->

			<!-- START TOP BAR -->
			<div id="topbar">
				<div class="container">
					<div class="row">
						<div id="nav" class="span12 light">

							<!-- START MAIN NAVIGATION -->

							<ul id="menu-menu" class="level-1">
								<li><a href="index.html">首页</a>
									<ul class="sub-menu">
									</ul></li>
								<li><a href="#">功能</a>
									<ul class="sub-menu">
										<li><a href="revolution-slider.html">Revolution
												Slider</a></li>
										<li><a href="flexslider-classic.html">Flexslider
												Classic</a></li>
										<li><a href="flexslider-elegant.html">Flexslider
												Elegant</a></li>
										<li><a href="elastic.html">Elastic</a></li>
										<li><a href="flash.html">Flash</a></li>
										<li><a href="rotating.html">Rotating</a></li>
										<li><a href="thumbnails.html">Thumbnails</a></li>
										<li><a href="usquare.html">Usquare</a></li>
										<li><a href="polaroid.html">Polaroid</a></li>
									</ul></li>
								<li><a href="#">案列</a>
									<ul class="sub-menu">
										<li><a href="services-module.html">Services Module</a></li>
										<li><a href="blog-modules.html">Blog modules</a></li>
										<li><a href="portfolio-and-video-modules.html">Portfolio
												and video modules</a></li>
										<li><a href="libra-features.html">Libra features</a></li>
									</ul></li>
								<li><a href="#">产品</a>
									<ul class="sub-menu">
										<li><a href="portfolio-libra.html">Libra</a></li>
										<li><a href="portfolio-pinterest.html">Pinterest</a></li>
										<li><a href="portfolio-slide-detail.html">Slide
												Detail</a></li>
										<li><a href="portfolio-filterable.html">Filterable</a></li>
										<li><a href="portfolio-2-columns.html">2 Columns</a></li>
										<li><a href="portfolio-3-columns.html">3 Columns</a></li>
										<li><a href="portfolio-4-columns.html">4 Columns</a></li>
										<li><a href="portfolio-big-image.html">Big Image</a></li>
										<li><a href="portfolio-slider.html">Slider</a></li>
										<li><a href="portfolio-project-detail-1.html">Project
												Detail #1</a></li>
										<li><a href="portfolio-project-detail-2.html">Project
												detail #2</a></li>
									</ul></li>
								<li><a href="#">功能</a>
									<ul class="sub-menu">
										<li><a href="testimonials.html">Testimonials</a></li>
										<li><a href="#">Blog</a>
											<ul class="sub-menu">
												<li><a href="blog-libra-big.html">Libra Big</a></li>
												<li><a href="blog-libra-small.html">Libra Small</a></li>
												<li><a href="blog-elegant.html">Elegant</a></li>
												<li><a href="blog-big-thumbnails.html">Big
														Thumbnails</a></li>
												<li><a href="blog-small-thumbnails.html">Small
														Thumbnails</a></li>
												<li><a href="blog-pinterest.html">Pinterest</a></li>
											</ul></li>
										<li><a href="pages-faq.html">FAQ</a></li>
										<li><a href="#">关于</a>
											<ul class="sub-menu">
												<li><a href="accordion-style.html">Accordion Style</a></li>
												<li><a href="circle-style.html">Circle Style</a></li>
												<li><a href="u-square-style.html">U-square style</a></li>
											</ul></li>
										<li><a href="error-404.html">Error 404</a></li>
									</ul></li>
								<li><a href="#">帮助</a>
									<ul class="sub-menu">
										<li><a href="shortcodes-alert-box-buttons.html">Alert
												box &amp; Buttons</a></li>
										<li><a href="shortcodes-charts.html">Charts</a></li>
										<li><a href="shortcodes-icon-section.html">Icon
												section</a></li>
										<li><a href="shortcodes-media-widgets.html">Media
												&amp; Widgets</a></li>
										<li><a href="shortcodes-mix-various.html">Mix &amp;
												Various</a></li>
										<li><a href="shortcodes-table-box-prices.html">Table
												&amp; Box prices</a></li>
										<li><a href="shortcodes-typography.html">Typography</a></li>
									</ul></li>
								<li><a href="#">联系我们</a>
									<ul class="sub-menu">
										<li><a href="get-in-touch.html">With MAP</a></li>
										<li><a href="get-in-touch-2.html">Without MAP</a></li>
									</ul></li>
							</ul>
							<!-- END MAIN NAVIGATION -->

							<!-- START TOPBAR LOGIN -->
							<div id="topbar_login" class="logged_in">

								<a class="topbar_login" href="zhuce.jsp"> 注册 <span
									class="sf-sub-indicator"></span>
								</a>
							</div>

							<!-- START TOPBAR LOGIN -->

							<div id="topbar_login" class="logged_in">

								<a class="topbar_login" href="login2.jsp"> 登录 <span
									class="sf-sub-indicator"></span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END TOP BAR -->

			<!-- START HEADER -->
			<div id="header" class="group margin-bottom">

				<div class="group container">
					<div class="row" id="logo-headersidebar-container">
						<!-- START LOGO -->
						<div id="logo" class="span6 group">
							<a id="logo-img" href="index.html" title="Libra"> <img
								src="page2/images/logo3.png" title="Libra" alt="Libra" />
							</a>
							<p id='tagline'>医保处方管理系统</p>
						</div>
						<!-- END LOGO -->

						<!-- START HEADER SIDEBAR -->
						<div id="header-sidebar" class="span6 group">
							<div class="widget-first widget header-text-image">
								<div class="text-image" style="text-align: left">
									<img src="page2/images/phone1.png" alt="CUSTOMER SUPPORT" />
								</div>

								<div class="text-content">
									<h3>咨询热线</h3>
									<p>+86 - 8711 - 8777</p>
								</div>
							</div>


						</div>
					</div>
				</div>

			</div>		