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
<div class="bg-shadow">

<!-- START WRAPPER -->
    <div id="wrapper" class="container group">

        <!-- START TOP BAR -->
        <div id="topbar">
            <div class="container">
                <div class="row">
                    <div id="nav" class="span12 light">

                        <!-- START MAIN NAVIGATION -->

                        <ul id="menu-menu" class="level-1">
                            <li>
                                <a href="index.html">首页</a>
                                <ul class="sub-menu">                                  
                                </ul>
                            </li>
                            <li>
                                <a href="#">功能</a>
                                <ul class="sub-menu">
                                    <li><a href="revolution-slider.html">Revolution Slider</a></li>
                                    <li><a href="flexslider-classic.html">Flexslider Classic</a></li>
                                    <li><a href="flexslider-elegant.html">Flexslider Elegant</a></li>
                                    <li><a href="elastic.html">Elastic</a></li>
                                    <li><a href="flash.html">Flash</a></li>
                                    <li><a href="rotating.html">Rotating</a></li>
                                    <li><a href="thumbnails.html">Thumbnails</a></li>
                                    <li><a href="usquare.html">Usquare</a></li>
                                    <li><a href="polaroid.html">Polaroid</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">案列</a>
                                <ul class="sub-menu">
                                    <li><a href="services-module.html">Services Module</a></li>
                                    <li><a href="blog-modules.html">Blog modules</a></li>
                                    <li><a href="portfolio-and-video-modules.html">Portfolio and video modules</a></li>
                                    <li><a href="libra-features.html">Libra features</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">产品</a>
                                <ul class="sub-menu">
                                    <li><a href="portfolio-libra.html">Libra</a></li>
                                    <li><a href="portfolio-pinterest.html">Pinterest</a></li>
                                    <li><a href="portfolio-slide-detail.html">Slide Detail</a></li>
                                    <li><a href="portfolio-filterable.html">Filterable</a></li>
                                    <li><a href="portfolio-2-columns.html">2 Columns</a></li>
                                    <li><a href="portfolio-3-columns.html">3 Columns</a></li>
                                    <li><a href="portfolio-4-columns.html">4 Columns</a></li>
                                    <li><a href="portfolio-big-image.html">Big Image</a></li>
                                    <li><a href="portfolio-slider.html">Slider</a></li>
                                    <li><a href="portfolio-project-detail-1.html">Project Detail #1</a></li>
                                    <li><a href="portfolio-project-detail-2.html">Project detail #2</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">功能</a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="testimonials.html">Testimonials</a></li>
                                    <li>
                                        <a href="#">Blog</a>
                                        <ul class="sub-menu">
                                            <li><a href="blog-libra-big.html">Libra Big</a></li>
                                            <li><a href="blog-libra-small.html">Libra Small</a></li>
                                            <li><a href="blog-elegant.html">Elegant</a></li>
                                            <li><a href="blog-big-thumbnails.html">Big Thumbnails</a></li>
                                            <li><a href="blog-small-thumbnails.html">Small Thumbnails</a></li>
                                            <li><a href="blog-pinterest.html">Pinterest</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="pages-faq.html">FAQ</a>
                                    </li>
                                    <li>
                                        <a href="#">关于</a>
                                        <ul class="sub-menu">
                                            <li><a href="accordion-style.html">Accordion Style</a></li>
                                            <li><a href="circle-style.html">Circle Style</a></li>
                                            <li><a href="u-square-style.html">U-square style</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="error-404.html">Error 404</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">帮助</a>
                                <ul class="sub-menu">
                                    <li><a href="shortcodes-alert-box-buttons.html">Alert box &amp; Buttons</a></li>
                                    <li><a href="shortcodes-charts.html">Charts</a></li>
                                    <li><a href="shortcodes-icon-section.html">Icon section</a></li>
                                    <li><a href="shortcodes-media-widgets.html">Media &amp; Widgets</a></li>
                                    <li><a href="shortcodes-mix-various.html">Mix &amp; Various</a></li>
                                    <li><a href="shortcodes-table-box-prices.html">Table &amp; Box prices</a></li>
                                    <li><a href="shortcodes-typography.html">Typography</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">联系我们</a>
                                <ul class="sub-menu">
                                    <li><a href="get-in-touch.html">With MAP</a></li>
                                    <li><a href="get-in-touch-2.html">Without MAP</a></li>
                                </ul>
                            </li>
                        </ul>
                        <!-- END MAIN NAVIGATION -->                      
						
						 <!-- START TOPBAR LOGIN -->					 
						<div id="topbar_login" class="logged_in">

                            <a class="topbar_login" href="zhuce.jsp">
                                注册 <span class="sf-sub-indicator"></span>
                            </a>                          
                        </div> 

                         <!-- START TOPBAR LOGIN -->

                        <div id="topbar_login" class="logged_in">

                            <a class="topbar_login" href="login2.jsp">
                                登录 <span class="sf-sub-indicator"></span>
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
                    <a id="logo-img" href="index.html" title="Libra">
                        <img src="page2/images/logo3.png" title="Libra" alt="Libra" />
                    </a>
                    <p id='tagline' >医保处方管理系统</p>
                </div>
                <!-- END LOGO -->

                <!-- START HEADER SIDEBAR -->
                <div id="header-sidebar" class="span6 group">
                    <div class="widget-first widget header-text-image">
                        <div class="text-image" style="text-align:left">
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

        <!-- BEGIN FLEXSLIDER SLIDER -->
        <div id="slider-polaroid-0" class="slider slider-polaroid polaroid no-responsive" style="height:400px;">
            <div class="thumbs  container">
			
			 <div class="thumb">
                    <img src="page2/images/lunbo14-150x150.jpg" alt="page2/images/slider/flexslider/lunbo14.jpg" />
                    <div class="slide-content container align-right full" style="background-image:url('page2/images/slider/flexslider/lunbo14.jpg');">
                        <div class="container" style="margin:0">
                            <div class="text">
                                <h2>
                                    <span style="color: #0c243d;">需要医保处方</span>
                                    <span style="color: #919303;">解决方案?</span>
                                </h2>

                                <p>
                                    <span style="color: #434f5b;">点击这里.</span>
                                    <br />
                                    <span style="color: red;">开始试用.</span>
                                </p>

                                <p>
                                    <span style="color: #434f5b;">
                                    一套完整的医保处方管理方案.<br />
                                    </span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="thumb">
                    <img src="page2/images/slider/flexslider/doctor1-150x150.png" alt="page2/images/slider/flexslider/doctor1.png" />
                    <div class="slide-content container align-right" style="background-image:url('page2/images/slider/flexslider/doctor1.png');">
                        <div class="text">
                            <h2>医疗卫生技术人员获取医药信息的有效工具</h2>
                            <p>
                               根据临床合理用药专业工作对临床信息的需要，系统收载了临床用药所需的各类信息
				            ，如药物专论、药品说明书、药物相互作用等等
                            </p>
                        </div>
                    </div>
                </div>

                <div class="thumb">
                    <img src="page2/images/slider/flexslider/lunbo12-150x150.jpg" alt="page2/images/slider/flexslider/lunbo12.jpg" />
                </div>

                <div class="thumb">
                    <img src="page2/images/slider/flexslider/lunbo8-150x150.jpg" alt="page2/images/slider/flexslider/lunbo8.jpg" />
                    <div class="slide-content container align-right full" style="background-image:url('page2/images/slider/flexslider/lunbo8.jpg');">
                        <div class="container"></div>
                    </div>
                </div>
             

                <div class="thumb">
                    <img src="page2/images/slider/flexslider/lunbo13-150x150.jpg" alt="page2/images/slider/flexslider/lunbo13.jpg" />
                    <div class="slide-content container align-right full" style="background-image:url('page2/images/slider/flexslider/lunbo13.jpg');">
                        <div class="container"></div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            jQuery(document).ready(function($){
                $('#slider-polaroid-0').polaroid({
                    animation: '',
                    pause: 8000,
                    animationSpeed: 800			    });
            });
        </script>

        <div class="mobile-slider">
            <div class="slider fixed-image container">
                <img src="page2/images/slider/flexslider/lunbo14.jpg" alt="" />
            </div>
        </div>
    </div>
    <!-- END HEADER -->

    <!-- START PRIMARY -->
    <div id="primary" class="sidebar-no">
        <div class="container group">
            <div class="row">
            <!-- START CONTENT -->
                <div id="content-home" class="span12 content group">
                    <div class="page type-page status-publish hentry group">
                        <div class="box-sections numbers-sections margin-bottom ">
                                <div class="number number-left number-zero"></div>
                                <div class="number number-right number-1"></div>
                                <h4>
                                    预约<span class="title-highlight">挂号</span>
                                </h4>
                               
                        </div>

                        <div class="box-sections numbers-sections margin-bottom ">
                            <div class="number number-left number-zero"></div>
                            <div class="number number-right number-2"></div>
                            <h4>
                               病历<span class="title-highlight">查询</span>
                            </h4>
                            
                        </div>

                        <div class="box-sections numbers-sections margin-bottom ">
                            <div class="number number-left number-zero"></div>
                            <div class="number number-right number-3"></div>
                            <h4>
                                开药 <span class="title-highlight">提醒</span>
                            </h4>
                            
                        </div>

                        <div class="box-sections numbers-sections margin-bottom  last">
                            <div class="number number-left number-zero"></div>
                            <div class="number number-right number-4"></div>
                            <h4>
                                处方 <span class="title-highlight">审查</span>
                            </h4>
                            <!--<p>
                                Quisque nec mi eu nibh aliquam elementum. Ut cursus nisl sit amet sapien dignissim at adipiscing lectus ornare lorem lorem dieus.
                            </p>-->
                        </div>
                        <div class="clear"></div>
                        <div class="row">
                            <!-- START SECTION BLOG -->
                            <div class="section blog margin-bottom span12">
                                <h2 class="title">
                                   医保处方 <span class="title-highlight">管理系统</span>
                                </h2>
                                <div class="row">
                                    <div class="post type-post status-publish format-video category-design span6 sticky">
                                        <div class="row">
                                            <div class="thumbnail span3">
                                                <img width="263" height="243" src="page2/images/3-263x243.jpg" class="attachment-section_blog wp-post-image" alt="3" />                                            
                                            </div>

                                            <div class="the-content span3">
                                                <h4>
                                                    <a href="blog-detail.html" title="Section shortcodes &amp; sticky posts!">
                                                        主要功能
                                                    </a>
                                                </h4>

                                                <p>
                                                   医保处方管理系统，通过实现医嘱自动审查和医药信息在线查询，可及时发现潜在的不合理用药问题，
												   帮助医生、药师等临床专业人员在用药过程中及时有效地掌握和利用医药知识，预防药物不良事件的发生、
												   促进临床合理用药工作。
                                                </p>

                                                <p>
                                                   根据临床合理用药专业工作对临床信息的需要，系统收载了临床用药所需的各类信息
								                 ，如药物专论、药品说明书、药物相互作用等等，是医师、药师等医疗卫生技
												   术人员获取医药信息的有效工具。
                                                </p>

                                                <p>
                                                    <a href="blog-detail.html" class="more-link">|| 更多</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="post type-post status-publish format-standard category-design category-themes tag-cleam tag-corporate tag-minimal span3">
                                        <div class="row">
                                            <div class="date span1">
                                                <p>
                                                    <span class="month">1</span>
                                                   
                                                </p>
                                            </div>

                                            <div class="meta span2" >
                                                <h4>
												    <a href="blog-detail.html" title="This is the title of the first article. Enjoy it.">
                                                       <strong> 实用 </strong>
                                                  </a></h4>                                           
                                                                                              	  
                                                <p class="author">用药合理监测</p>  
                                                <p class="author">处方（医嘱）审查</p>  													                                                                                          
                                            </div>
                                        </div>
                                    </div>

                                   <div class="post type-post status-publish format-audio category-themes span3">
                                        <div class="row">
                                            <div class="date span1">
                                                <p>
                                                    <span class="month">2</span>
                                                    
                                                </p>
                                            </div>

                                            <div class="meta span2">
                                                <h4>
                                                    <a href="blog-detail.html" title="Another theme by YIThemes!">
                                                        <strong>全面审查</strong>
                                                    </a>
                                                </h4>
                                                <p class="author" style="margin-top:0">处方（医嘱）审查功能强力提升，五大类审查项目，全面直击不合理用药问题。</p>                                              
                                            </div>
                                        </div>
                                    </div>

                                    <div class="post type-post status-publish format-quote category-uncategorized span3">
                                        <div class="row">
                                            <div class="date span1">
                                                <p>
                                                    <span class="month">3</span>
                                                 
                                                </p>
                                            </div>

                                            <div class="meta span2">
                                                <h4>
                                                    <a href="blog-detail.html" title="Oscar Wilde">
                                                         <strong>精准 </strong>
                                                    </a>
                                                </h4>
                                                <p class="author">全新的药名体系，精确匹配医院使用的厂家说明书，让处方（医嘱）的审查按照医院临床实际精准执行。</p>                                              
                                            </div>
                                        </div>
                                    </div>

                                    <div class="post type-post status-publish format-gallery category-design category-themes tag-css tag-html tag-php span3">
                                        <div class="row">
                                            <div class="date span1">
                                                <p>
                                                    <span class="month">4</span>
                                                    
                                                </p>
                                            </div>

                                            <div class="meta span2">
                                                <h4>
                                                    <a href="blog-detail.html" title="This is the title of the first article. Enjoy it.">
                                                       <strong> 合理 </strong>
                                                  </a>
                                                </h4>
                                                <p class="author">(1)审查功能不会干扰医生正常的处方过程。</p>  
                                                <p class="author">(2)按药品名称显示审查结果，并可查看详细内容。</p>  	                                              												
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           <!-- END SECTION BLOG -->

                            <div class="clear"></div>
                        </div>

                        <div class="clear"></div>

                        <div class="margin-bottom">
                            <div class="logos-slider wrapper">
                                <h2>
                                    合作 <span class="title-highlight">伙伴</span>
                                </h2>
                                <div class="list_carousel">
                                    <ul class="logos-slides">

                                        <li style="height: 70px;">
                                            <a href="#" class="bwWrapper" >
                                                <img src="page2/images/slider/ncbs2.jpg" style="max-height: 70px;" class="logo" />
                                            </a>
                                        </li>

                                        <li style="height: 70px;">
                                            <a href="#" class="bwWrapper" >
                                                <img src="page2/images/slider/hgyy2.jpg" style="max-height: 70px;" class="logo" />
                                            </a>
                                        </li>

                                        <li style="height: 70px;">
                                            <a href="#" class="bwWrapper" >
                                                <img src="page2/images/slider/gpyy2.jpg" style="max-height: 70px;" class="logo" />
                                            </a>
                                        </li>

                                        <li style="height: 70px;">
                                            <a href="#" class="bwWrapper" >
                                                <img src="page2/images/slider/ncdyyy2.jpg" style="max-height: 70px;" class="logo" />
                                            </a>
                                        </li>

                                        <li style="height: 70px;">
                                            <a href="#" class="bwWrapper" >
                                                <img src="page2/images/slider/jxzyy2.jpg" style="max-height: 70px;" class="logo" />
                                            </a>
                                        </li>

                                        <li style="height: 70px;">
                                            <a href="#" class="bwWrapper" >
                                                <img src="page2/images/slider/jxrm2.jpg" style="max-height: 70px;" class="logo" />
                                            </a>
                                        </li>

                                        <li style="height: 70px;">
                                            <a href="#" class="bwWrapper" >
                                                <img src="page2/images/slider/ncbj2.jpg" style="max-height: 70px;" class="logo" />
                                            </a>
                                        </li>

                                        <li style="height: 70px;">
                                            <a href="#" class="bwWrapper" >
                                                <img src="page2/images/slider/ncdy2.jpg" style="max-height: 70px;" class="logo" />
                                            </a>
                                        </li>

                                        <li style="height: 70px;">
                                            <a href="#" class="bwWrapper" >
                                                <img src="page2/images/slider/ncfs2.jpg" style="max-height: 70px;" class="logo" />
                                            </a>
                                        </li>

                                        <li style="height: 70px;">
                                            <a href="#" class="bwWrapper" >
                                                <img src="page2/images/slider/ncmy2.jpg" style="max-height: 70px;" class="logo" />
                                            </a>
                                        </li>

                                        <li style="height: 70px;">
                                            <a href="#" class="bwWrapper" >
                                                <img src="page2/images/slider/ncyk2.jpg" style="max-height: 70px;" class="logo" />
                                            </a>
                                        </li>

                                        <li style="height: 70px;">
                                            <a href="#" class="bwWrapper" >
                                               <img src="page2/images/slider/ncyy2.jpg" style="max-height: 70px;" class="logo" />
                                            </a>
                                        </li>

                                        <li style="height: 70px;">
                                            <a href="#" class="bwWrapper" >
                                                <img src="page2/images/slider/ahfs2.jpg" style="max-height: 70px;" class="logo" />
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="clear"></div>
                                <div class="nav">
                                    <a class="prev" href="#"></a>
                                    <a class="next" href="#"></a>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="clear"></div>

                        <script type="text/javascript">
                            jQuery(function($){

                                $('.logos-slides').imagesLoaded(function(){
                                    $('.logos-slides').carouFredSel({
                                        auto: true,
                                        width: '100%',
                                        prev: '.logos-slider .prev',
                                        next: '.logos-slider .next',
                                        swipe: {
                                            onTouch: true
                                        },
                                        scroll : {
                                            items     : 1,
                                            duration  :	500				}
                                    });
                                });

                                $('.bwWrapper').BlackAndWhite({
                                    hoverEffect : true, // default true
                                    // set the path to BnWWorker.js for a superfast implementation
                                    webworkerPath : false,
                                    // for the page2/images with a fluid width and height
                                    responsive:true,
                                    speed: { //this property could also be just speed: value for both fadeIn and fadeOut
                                        fadeIn: 200, // 200ms for fadeIn animations
                                        fadeOut: 300 // 800ms for fadeOut animations
                                    }
                                });

                                $("a.bwWrapper[href='#']").click(function(){ return false })

                            });
                        </script>


                    </div>
                    <!-- START COMMENTS -->
                    <div id="comments"></div>
                    <!-- END COMMENTS -->
                </div>
            <!-- END CONTENT -->

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
<!-- END WRAPPER -->

</div>
<!-- END BG SHADOW -->

<script type='text/javascript' src='page2/js/comment-reply.min.js'></script>
<script type='text/javascript' src='page2/js/underscore.min.js'></script>
<script type='text/javascript' src='page2/js/jquery/jquery.masonry.min.js'></script>
<script type='text/javascript' src='page2/sliders/polaroid/js/jquery.polaroid.js'></script>
<script type='text/javascript' src='page2/js/jquery.colorbox-min.js'></script>
<script type='text/javascript' src='page2/js/jquery.easing.js'></script>
<script type='text/javascript' src='page2/js/jquery.carouFredSel-6.1.0-packed.js'></script>
<script type='text/javascript' src='page2/js/jQuery.BlackAndWhite.js'></script>
<script type='text/javascript' src='page2/js/jquery.touchSwipe.min.js'></script>
<script type='text/javascript' src='page2/sliders/polaroid/js/jquery.transform-0.8.0.min.js'></script>
<script type='text/javascript' src='page2/sliders/polaroid/js/jquery.preloader.js'></script>
<script type='text/javascript' src='page2/js/responsive.js'></script>
<script type='text/javascript' src='page2/js/mobilemenu.js'></script>
<script type='text/javascript' src='page2/js/jquery.superfish.js'></script>
<script type='text/javascript' src='page2/js/jquery.placeholder.js'></script>
<script type='text/javascript' src='page2/js/contact.js'></script>
<script type='text/javascript' src='page2/js/jquery.tipsy.js'></script>
<script type='text/javascript' src='page2/js/jquery.cycle.min.js'></script>
<script type='text/javascript' src='page2/js/shortcodes.js'></script>
<script type='text/javascript' src='page2/js/jquery.custom.js'></script>

</body>
<!-- END BODY -->
</html>