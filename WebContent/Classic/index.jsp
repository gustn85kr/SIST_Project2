<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<title>Unify | Creative One Page Theme</title>

	<!-- Meta -->
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Web Fonts -->
	<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/one.style.css">

	<!-- CSS Footer -->
	<link rel="stylesheet" href="assets/css/footers/footer-v7.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="assets/plugins/animate.css">
	<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/plugins/pace/pace-flash.css">
	<link rel="stylesheet" href="assets/plugins/owl-carousel/owl.carousel.css">
	<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css">
	<link rel="stylesheet" href="assets/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css">
	<link rel="stylesheet" href="assets/plugins/revolution-slider/rs-plugin/css/settings.css" type="text/css" media="screen">
	<!--[if lt IE 9]><link rel="stylesheet" href="assets/plugins/revolution-slider/rs-plugin/css/settings-ie8.css" type="text/css" media="screen"><![endif]-->

	<!-- Style Switcher -->
	<link rel="stylesheet" href="assets/css/plugins/style-switcher.css">

	<!-- CSS Theme -->
	<link rel="stylesheet" href="assets/css/theme-colors/default.css" id="style_color">
	<link rel="stylesheet" href="assets/css/theme-skins/one.dark.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="assets/css/custom.css">

</head>

<!--
The #page-top ID is part of the scrolling feature.
The data-spy and data-target are part of the built-in Bootstrap scrollspy function.
-->
<body id="body" data-spy="scroll" data-target=".one-page-header" class="demo-lightbox-gallery">

	<!--=== Header ===-->
	<nav class="one-page-header navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="menu-container page-scroll">
				<!--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				-->
				<a class="navbar-brand" href="#intro">
					<span>오</span>내미
					<!-- <img src="assets/img/logo1.png" alt="Logo"> -->
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<div class="menu-container">
					<ul class="nav navbar-nav">
						<li class="page-scroll home">
							<a href="#body"><span class="glyphicon glyphicon-home"></span>&nbsp;집으로</a>
						</li>
						<li class="page-scroll home" id="myBtn">
							<a href="#about"><span class="glyphicon glyphicon-log-in"></span>&nbsp;로그인</a>
						</li>
						<li class="page-scroll home" id="myBtn3">
							<a href="#services"><span class="glyphicon glyphicon-user"></span>&nbsp;회원가입</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!--=== End Header ===-->

	<!-- Intro Section -->
	<section id="intro" class="intro-section">
		<div class="fullscreenbanner-container">
			<div class="fullscreenbanner">
				<ul>
					<!-- SLIDE 1 -->
					<li data-transition="slideup" data-slotamount="5" data-masterspeed="700" data-title="Slide 1">
						<!-- MAIN IMAGE -->
						<img src="assets/img/sliders/revolution/test1.jpg" alt="slidebg1" data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">

						<!-- LAYERS -->
						<div class="tp-caption rs-caption-1 sft start"
						data-x="center"
						data-hoffset="0"
						data-y="100"
						data-speed="800"
						data-start="2000"
						data-easing="Back.easeInOut"
						data-endspeed="300">
						1번 slide
					</div>

					<!-- LAYER -->
					<div class="tp-caption rs-caption-2 sft"
					data-x="center"
					data-hoffset="0"
					data-y="200"
					data-speed="1000"
					data-start="3000"
					data-easing="Power4.easeOut"
					data-endspeed="300"
					data-endeasing="Power1.easeIn"
					data-captionhidden="off"
					style="z-index: 6">
					Creative freedom matters user experience.<br>
					We minimize the gap between technology and its audience.
				</div>

				<!-- LAYER -->
				<div class="tp-caption rs-caption-3 sft"
				data-x="center"
				data-hoffset="0"
				data-y="360"
				data-speed="800"
				data-start="3500"
				data-easing="Power4.easeOut"
				data-endspeed="300"
				data-endeasing="Power1.easeIn"
				data-captionhidden="off"
				style="z-index: 6">
				<span class="page-scroll" id="myBtn2"><a href="#body" class="btn-u btn-brd btn-brd-hover btn-u-light">로그인</a></span>
				<span class="page-scroll" id="myBtn4"><a href="#portfolio" class="btn-u btn-brd btn-brd-hover btn-u-light">회원가입</a></span>
			</div>
		</li>

		<!-- SLIDE 2 -->
		<li data-transition="slideup" data-slotamount="5" data-masterspeed="1000" data-title="Slide 2">
			<!-- MAIN IMAGE -->
			<img src="assets/img/sliders/revolution/test2.jpg" alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">

				<!-- LAYERS -->
				<div class="tp-caption rs-caption-1 sft start"
					data-x="center"
					data-hoffset="0"
					data-y="100"
					data-speed="800"
					data-start="1500"
					data-easing="Back.easeInOut"
					data-endspeed="300">
					2번 slide
				</div>
		
				<!-- LAYER -->
				<div class="tp-caption rs-caption-2 sft"
					data-x="center"
					data-hoffset="0"
					data-y="200"
					data-speed="1000"
					data-start="2500"
					data-easing="Power4.easeOut"
					data-endspeed="300"
					data-endeasing="Power1.easeIn"
					data-captionhidden="off"
					style="z-index: 6">
					We are creative technology company providing<br>
					key digital services on web and mobile.
				</div>
		
				<!-- LAYER -->
				<div class="tp-caption rs-caption-3 sft"
					data-x="center"
					data-hoffset="0"
					data-y="360"
					data-speed="800"
					data-start="3500"
					data-easing="Power4.easeOut"
					data-endspeed="300"
					data-endeasing="Power1.easeIn"
					data-captionhidden="off"
					style="z-index: 6">
					<span class="page-scroll" id="myBtn2"><a href="#body" class="btn-u btn-brd btn-brd-hover btn-u-light">로그인</a></span>
					<span class="page-scroll" id="myBtn4"><a href="#portfolio" class="btn-u btn-brd btn-brd-hover btn-u-light">회원가입</a></span>
				</div>
			</li>

			<!-- SLIDE 3 -->
			<li data-transition="slidefade" data-slotamount="5" data-masterspeed="700"  data-title="Slide 3">
				<!-- MAIN IMAGE -->
				<img src="assets/img/sliders/revolution/test3.jpg"  alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">
			
				<!-- LAYERS -->
				<div class="tp-caption rs-caption-1 sft start"
					data-x="center"
					data-hoffset="0"
					data-y="110"
					data-speed="800"
					data-start="1500"
					data-easing="Back.easeInOut"
					data-endspeed="300">
					3번 slide
				</div>
			
				<!-- LAYER -->
				<div class="tp-caption rs-caption-2 sfb"
					data-x="center"
					data-hoffset="0"
					data-y="210"
					data-speed="800"
					data-start="2500"
					data-easing="Power4.easeOut"
					data-endspeed="300"
					data-endeasing="Power1.easeIn"
					data-captionhidden="off"
					style="z-index: 6">
					Creative freedom matters user experience.<br>
					We minimize the gap between technology and its audience.
				</div>
				
				<!-- LAYER -->
				<div class="tp-caption rs-caption-3 sfb"
					data-x="center"
					data-hoffset="0"
					data-y="370"
					data-speed="800"
					data-start="3500"
					data-easing="Power4.easeOut"
					data-endspeed="300"
					data-endeasing="Power1.easeIn"
					data-captionhidden="off"
					style="z-index: 6">
					<span class="page-scroll" id="myBtn2"><a href="#body" class="btn-u btn-brd btn-brd-hover btn-u-light">로그인</a></span>
					<span class="page-scroll" id="myBtn4"><a href="#portfolio" class="btn-u btn-brd btn-brd-hover btn-u-light">회원가입</a></span>
				</div>
			</li>
			
			<!-- SLIDE 4 -->
			<li data-transition="curtain-4" data-slotamount="5" data-masterspeed="700"  data-title="Slide 4">
				<!-- MAIN IMAGE -->
				<img src="assets/img/sliders/revolution/test4.jpg"  alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">
			
				<!-- LAYERS -->
				<div class="tp-caption rs-caption-1 sft start"
					data-x="center"
					data-hoffset="0"
					data-y="110"
					data-speed="800"
					data-start="1500"
					data-easing="Back.easeInOut"
					data-endspeed="300">
				4번 slide
				</div>

				<!-- LAYER -->
				<div class="tp-caption rs-caption-2 sfb"
					data-x="center"
					data-hoffset="0"
					data-y="210"
					data-speed="800"
					data-start="2500"
					data-easing="Power4.easeOut"
					data-endspeed="300"
					data-endeasing="Power1.easeIn"
					data-captionhidden="off"
					style="z-index: 6">
					Creative freedom matters user experience.<br>
					We minimize the gap between technology and its audience.
				</div>
				
				<!-- LAYER -->
				<div class="tp-caption rs-caption-3 sfb"
					data-x="center"
					data-hoffset="0"
					data-y="370"
					data-speed="800"
					data-start="3500"
					data-easing="Power4.easeOut"
					data-endspeed="300"
					data-endeasing="Power1.easeIn"
					data-captionhidden="off"
					style="z-index: 6">
					<span class="page-scroll" id="myBtn2"><a href="#body" class="btn-u btn-brd btn-brd-hover btn-u-light">로그인</a></span>
					<span class="page-scroll" id="myBtn4"><a href="#portfolio" class="btn-u btn-brd btn-brd-hover btn-u-light">회원가입</a></span>
				</div>
			</li>

			<!-- SLIDE 5 -->
			<li data-transition="slidedown" data-slotamount="5" data-masterspeed="700"  data-title="Slide 5">
				<!-- MAIN IMAGE -->
				<img src="assets/img/sliders/revolution/test5.jpg"  alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">
			
				<!-- LAYERS -->
				<div class="tp-caption rs-caption-1 sft start"
					data-x="center"
					data-hoffset="0"
					data-y="110"
					data-speed="800"
					data-start="1500"
					data-easing="Back.easeInOut"
					data-endspeed="300">
					5번 slide 
				</div>
			
				<!-- LAYER -->
				<div class="tp-caption rs-caption-2 sfb"
					data-x="center"
					data-hoffset="0"
					data-y="210"
					data-speed="800"
					data-start="2500"
					data-easing="Power4.easeOut"
					data-endspeed="300"
					data-endeasing="Power1.easeIn"
					data-captionhidden="off"
					style="z-index: 6">
					Creative freedom matters user experience.<br>
					We minimize the gap between technology and its audience.
				</div>
					
				<!-- LAYER -->
				<div class="tp-caption rs-caption-3 sfb"
					data-x="center"
					data-hoffset="0"
					data-y="370"
					data-speed="800"
					data-start="3500"
					data-easing="Power4.easeOut"
					data-endspeed="300"
					data-endeasing="Power1.easeIn"
					data-captionhidden="off"
					style="z-index: 6">
					<span class="page-scroll" id="myBtn2"><a href="#body" class="btn-u btn-brd btn-brd-hover btn-u-light">로그인</a></span>
					<span class="page-scroll" id="myBtn4"><a href="#portfolio" class="btn-u btn-brd btn-brd-hover btn-u-light">회원가입</a></span>
				</div>
			</li>
		</ul>
		<div class="tp-bannertimer tp-bottom"></div>
		<div class="tp-dottedoverlay twoxtwo"></div>
	</div>
</div>
</section>
<!-- End Intro Section -->
	<!-- JS Global Compulsory -->
	<script src="assets/plugins/jquery/jquery.min.js"></script>
	<script src="assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script src="assets/plugins/smoothScroll.js"></script>
	<script src="assets/plugins/jquery.easing.min.js"></script>
	<script src="assets/plugins/pace/pace.min.js"></script>
	<script src="assets/plugins/jquery.parallax.js"></script>
	<script src="assets/plugins/counter/waypoints.min.js"></script>
	<script src="assets/plugins/counter/jquery.counterup.min.js"></script>
	<script src="assets/plugins/owl-carousel/owl.carousel.js"></script>
	<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.form.min.js"></script>
	<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
	<script src="assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script src="assets/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script src="assets/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
	<!-- JS Page Level-->
	<script src="assets/js/one.app.js"></script>
	<script src="assets/js/forms/login.js"></script>
	<script src="assets/js/forms/contact.js"></script>
	<script src="assets/js/plugins/pace-loader.js"></script>
	<script src="assets/js/plugins/owl-carousel.js"></script>
	<script src="assets/js/plugins/style-switcher.js"></script>
	<script src="assets/js/plugins/revolution-slider.js"></script>
	<script src="assets/js/plugins/cube-portfolio/cube-portfolio-lightbox.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initCounter();
			App.initParallaxBg();
			LoginForm.initLoginForm();
			ContactForm.initContactForm();
			OwlCarousel.initOwlCarousel();
			StyleSwitcher.initStyleSwitcher();
			RevolutionSlider.initRSfullScreen();
		});
	</script>
	<!--[if lt IE 9]>
		<script src="assets/plugins/respond.js"></script>
		<script src="assets/plugins/html5shiv.js"></script>
		<script src="assets/js/plugins/placeholder-IE-fixes.js"></script>
		<script src="assets/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
		<![endif]-->

	<!--[if lt IE 10]>
		<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
		<![endif]-->

<!-- 로그인 Modal  -->
  <!-- Modal -->
  <div class="modal fade" id="LoginModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:30px 30px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> 로 그 인</h4>
        </div>
        <div class="modal-body" style="padding:30px 30px;">
          <form role="form" action="onm.jsp" method="post">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>이메일</label>
              <input type="text" class="form-control" id="usrname" placeholder="이메일을 입력하세요">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span>비밀번호</label>
              <input type="text" class="form-control" id="psw" placeholder="비밀번호를 입력하세요">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>아이디 저장</label>
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> 확 인</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal" style="margin:10px; margin-left: 15px"><span class="glyphicon glyphicon-remove"></span>취 소</button>
          <p style="float: right; margin: 10px; height: 30px">비밀번호<a href="#"> 찾기 </a><span class="glyphicon glyphicon-search"></span></p>
          <p style="float: right; margin: 10px; height: 30px;">이메일<a href="#"> 찾기 </a><span class="glyphicon glyphicon-search"></span></p>
        </div>
      </div>
      
    </div>
  </div> 
  
  <!-- 회원가입  -->
  <!-- Modal -->
  <div class="modal fade" id="SignUpModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:30px 30px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-user"></span> 회 원 가 입</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;height: 355px;">
          <form role="form">
            <div class="form-group">
              <label for="email"><span class="glyphicon glyphicon-user"></span> 이메일</label>
              <input type="text" class="form-control" id="email" placeholder="이메일을 입력하세요">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> 1차 비밀번호</label>
              <input type="text" class="form-control" id="pwd" placeholder="1차 비밀번호를 입력하세요">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> 2차 비밀번호</label>
              <input type="text" class="form-control" id="pwd2" placeholder="2차 비밀번호를 입력하세요">
            </div>
            <div class="form-group" style="float: left; width:55%">
              <label for="checknum"><span class="glyphicon glyphicon-envelope"></span> 인증번호</label>
              <input type="text" class="form-control" id="inputCheckNum" placeholder="인증번호를 입력하세요">
            </div>
            <div class="form-group" style="float: right; width:20%; margin-top: 25px">
    		  <button type="submit" class="btn btn-primary btn-block" id="confirm"><span class="glyphicon glyphicon-off"></span> 확 인</button>
            </div>
             <div class="form-group" style="float: right; width:20%; margin-top: 25px; margin-right: 10px">
    		  <button type="submit" class="btn btn-primary btn-block" id="sendCheckNum"><span class="glyphicon glyphicon-off"></span> 인증번호</button>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-success btn-default pull-left" data-dismiss="modal" style="margin:10px; margin-left: 35px"><span class="glyphicon glyphicon-plus"></span>완 료</button>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal" style="margin:10px"><span class="glyphicon glyphicon-remove"></span>취 소</button>
          <p style="float: right; margin: 10px; height: 30px">비밀번호<a href="#"> 찾기 </a><span class="glyphicon glyphicon-search"></span></p>
          <p style="float: right; margin: 10px; height: 30px">이메일<a href="#"> 찾기 </a><span class="glyphicon glyphicon-search"></span></p>
        </div>
      </div>
    </div>
  </div> 
	<script>
		$(document).ready(function() {
			$("#myBtn").click(function() {
				$("#LoginModal").modal();
			});
		});
		$(document).ready(function() {
			$("#myBtn2").click(function() {
				$("#LoginModal").modal();
			});
		});
		$(document).ready(function() {
			$("#myBtn3").click(function() {
				$("#SignUpModal").modal();
			});
		});
		$(document).ready(function() {
			$("#myBtn4").click(function() {
				$("#SignUpModal").modal();
			});
		});
		$(document).ready(function() {
			$("#myBtn4").click(function() {
				$("#SignUpModal").modal();
			});
		});
	</script>
	
	
</body>
<style>
	.modal-header, h4, .close {
		background-color: #5cb85c;
		color:white !important;
	    text-align: center;
	    font-size: 30px;
	}
	.modal-footer {
	    background-color: #f9f9f9;
	}
</style>
</html>
