<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<style type="text/css">
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
				<a class="navbar-brand" href="intro.jsp">
					<span>오</span>내미
					<!-- <img src="assets/img/logo1.png" alt="Logo"> -->
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<div class="menu-container">
					<ul class="nav navbar-nav">
						<c:if test="${logNicknameOK eq null}">						
							<li class="page-scroll home" id="myBtn1"><a href="#about">
							<span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;&nbsp;로그인</a></li>
							
							<li class="page-scroll home" id="myBtn2"><a href="#services">
							<span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;회원가입</a></li>
						</c:if>
						<c:if test="${logNicknameOK ne null}">
							<li class="page-scroll home"><a href="onm.jsp">
							<span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;&nbsp;오내미로</a></li>
							
							<li class="page-scroll home"><a href="#detail">
							<span class="glyphicon glyphicon-user"></span>&nbsp;${logUsernoOK }번&nbsp;&nbsp;${logNicknameOK}님</a></li>
							
							<li class="page-scroll home" id="myBtn3"><a href="index.jsp">
							<span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;&nbsp;로그아웃</a></li>
						</c:if>
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

					<li data-transition="curtain-1" data-slotamount="5" data-masterspeed="700" data-title="Slide 1">
						<!-- MAIN IMAGE -->
						
						<img src="assets/img/sliders/revolution/test01.jpg" alt="slidebg1" data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">
     
						<!-- LAYERS -->
						<div class="tp-caption rs-caption-1 sft start"
						data-x="center"
						data-hoffset="0"
						data-y="100"
						data-speed="800"
						data-start="2000"
						data-easing="Back.easeInOut"
						data-endspeed="300">
						Planning made fun!
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
					일정관리! 어렵지 않아요~<br>
                    이제 쉽고 간편하게 즐기세요~
				</div>	
		</li>

		<!-- SLIDE 2 -->
		<li data-transition="slideup" data-slotamount="5" data-masterspeed="1000" data-title="Slide 2">
			<!-- MAIN IMAGE -->
			<img src="assets/img/sliders/revolution/test02.jpg" alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">

			<!-- LAYERS -->
			<div class="tp-caption rs-caption-1 sft start"
			data-x="center"
			data-hoffset="0"
			data-y="200"
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
		data-y="550"
		data-speed="1000"
		data-start="2500"
		data-easing="Power4.easeOut"
		data-endspeed="300"
		data-endeasing="Power1.easeIn"
		data-captionhidden="off"
		style="z-index: 6">
		일정을 보며 할일을 함께 계획하세요
	</div>
</li>

<!-- SLIDE 3 -->
<li data-transition="slidefade" data-slotamount="5" data-masterspeed="700"  data-title="Slide 3">
	<!-- MAIN IMAGE -->
	<img src="assets/img/sliders/revolution/test003.jpg"  alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">

	<!-- LAYERS -->
	<div class="tp-caption rs-caption-1 sft start"
	data-x="center"
	data-hoffset="0"
	data-y="110"
	data-speed="800"
	data-start="1500"
	data-easing="Back.easeInOut"
	data-endspeed="300">
	
</div>
<!-- LAYER -->
<div class="tp-caption rs-caption-2 sfb"
data-x="center"
data-hoffset="0"
data-y="180"
data-speed="800"
data-start="2500"
data-easing="Power4.easeOut"
data-endspeed="300"
data-endeasing="Power1.easeIn"
data-captionhidden="off"
style="z-index: 6">
일정,텍스트,이미지,체크리스트,링크,파일첨부,지도,해시태그 등 <br>
    많은 기능들과 함께 하세요
</div>

</li>
<!-- SLIDE 4 -->
<li data-transition="curtain-4" data-slotamount="5" data-masterspeed="700"  data-title="Slide 4">
	<!-- MAIN IMAGE -->
	<img src="assets/img/sliders/revolution/test13.jpg"  alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">

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
당신의 일상과 계획을 <br>다른사람들과 함께 공유하세요
</div>
</li>

<!-- SLIDE 5 -->
<li data-transition="slidedown" data-slotamount="5" data-masterspeed="700"  data-title="Slide 5">
	<!-- MAIN IMAGE -->
	<img src="assets/img/sliders/revolution/test05.jpg"  alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat">

	<!-- LAYERS -->
	<div class="tp-caption rs-caption-1 sft start"
	data-x="center"
	data-hoffset="0"
	data-y="110"
	data-speed="800"
	data-start="1500"
	data-easing="Back.easeInOut"
	data-endspeed="300">
	5번 slide.
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
당신의 일상을 기록하세요.
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

<!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
	<!-- 로그인 Modal  -->
	<!-- Modal -->
	<div class="modal fade" id="LoginModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
			<form class="form-horizontal" method="POST" id="logFrm">
				<div class="modal-header" style="padding: 30px 30px;">
					<button type="button" class="close" data-dismiss="modal" style="margin-top: 7px;">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4>
						<span class="glyphicon glyphicon-lock"></span> 로 그 인
					</h4>
				</div>
				<div class="modal-body" style="padding: 30px 30px; height: 220px">
						<div class="form-group">
							<label for="usrname"><span class="glyphicon glyphicon-user"></span> 이메일</label> 
							<input type="text" class="form-control" name="logEmail" placeholder="이메일을 입력하세요" id="logEmail" value="${emailSave }">
						</div>
						<div class="form-group">
							<label for="psw"><span class="glyphicon glyphicon-eye-open"></span> 비밀번호</label> 
							<input type="password" class="form-control" name="logPwd" placeholder="비밀번호를 입력하세요" id="logPwd">
						</div>
						<div class="form-group">
							<label><input type="checkbox" value="1" id="logSave" name="logSave">아이디 저장</label>
						</div>					
				</div>
				<div class="modal-footer">
					<button type="button" id="logYes" name="logYes" form="logFrm"
						class="btn btn-success btn-default pull-left" value="Send" style="margin: 10px; margin-left: 35px">
						<span class="glyphicon glyphicon-plus"></span>완 료
					</button>	
					<button type="button" class="btn btn-danger btn-default pull-left" data-dismiss="modal" style="margin: 10px; margin-left: 15px">
						<span class="glyphicon glyphicon-remove"></span>취 소
					</button>
					<p style="float: right; margin: 10px; height: 30px">
						비밀번호<a href="#"> 찾기 </a><span class="glyphicon glyphicon-search"></span>
					</p>
					<p style="float: right; margin: 10px; height: 30px;">
						이메일<a href="#"> 찾기 </a><span class="glyphicon glyphicon-search"></span>
					</p>					
				</div>
				</form>
			</div>
		</div>
	</div>
	<!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
	<!-- 회원가입  -->
	<!-- Modal -->
	<div class="modal fade" id="SignUpModal" role="dialog"  tabindex="-1" aria-labelledby="modal-login-label" aria-hidden="true">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="padding: 30px 30px;">
					<button type="button" class="close" data-dismiss="modal" style="margin-top: 7px;">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4>
						<span class="glyphicon glyphicon-user"></span> 회 원 가 입
					</h4>
					
				</div>
				<form class="form-horizontal" method="POST" id="Frm" name="Frm">
					<div class="modal-body" style="padding: 40px 50px; height: 360px;">
						<div class="form-group" style="float: left; width: 83%" id="divEmail" >
							<label for="email"><span class="glyphicon glyphicon-user"></span> 이메일</label>
							<input type="text" class="email form-control" id="email" name="email" placeholder="이메일을 입력하세요">
						</div>
						<div class="form-group"	style="float: right; margin-top: 25px" id="divEmailCheck">
							<button type="button" class="btn btn-primary btn-block" name="emailCheck" id="emailCheck">
								<span class="glyphicon glyphicon-off"></span> 중복확인
							</button>
						</div>
						
						<div class="form-group" id="divNickname">
							<label for="nickname">
							<span class="glyphicon glyphicon-apple"></span> 닉네임</label>
							<input type="text" class="pwd form-control" id="nickname" name="nickname"
								placeholder="사용하실 대화명을 입력하세요.">
						</div>
						<div class="form-group" id="divPwd">
							<label for="psw">
							<span class="glyphicon glyphicon-eye-open"></span> 1차 비밀번호</label>
							<input type="password" class="pwd form-control" id="pwd" name="pwd"
								placeholder="1차 비밀번호를 입력하세요">
						</div>
						<div class="form-group" id="divPwd2">
							<label for="psw"><span
								class="glyphicon glyphicon-eye-open"></span> 2차 비밀번호</label> <input
								type="password" class="form-control" id="pwd2" name="pwd2"
								placeholder="2차 비밀번호를 입력하세요">
						</div>
						<div class="form-group" style="float: left; width: 56%" id="divCheckNum">
							<label for="checknum"><span	class="glyphicon glyphicon-envelope"></span> 인증번호</label> 
							<input type="text" class="form-control" id="inputCheckNum" name="inputCheckNum" placeholder="인증번호를 입력하세요">
						</div>
						<div class="form-group" style="float: right; width: 20%; margin-top: 25px" id="divCheckConfirm">
							<button type="button" class="btn btn-primary btn-block" id="checkconfirm" name="inputCheckNum">
								<span class="glyphicon glyphicon-ok"></span> 확 인
							</button>
						</div>
						<div class="form-group" style="float: right; width: 20%; margin-top: 25px; margin-right: 30px" id="divSendCheckNum">
							<button type="button" class="btn btn-primary btn-block"	id="sendCheckNum">
								<span class="glyphicon glyphicon-envelope"></span> 인증번호
							</button>
						</div>
					</div>
				<div class="modal-footer">
					<button type="button" id="signYes" name="signYes" class="btn btn-success btn-default pull-left"  value="Send" style="margin: 10px; margin-left: 35px" disabled>
						<span class="glyphicon glyphicon-plus"></span>완 료
					</button>
					<button type="button" class="btn btn-danger btn-default pull-left"
						data-dismiss="modal" value="Input Button" style="margin: 10px">
						<span class="glyphicon glyphicon-remove"></span>취 소
					</button>
					<p style="float: right; margin: 10px; height: 30px">
						비밀번호<a href="#"> 찾기 </a><span class="glyphicon glyphicon-search"></span>
					</p>
					<p style="float: right; margin: 10px; height: 30px">
						이메일<a href="#"> 찾기 </a><span class="glyphicon glyphicon-search"></span>
					</p>
				</div>
				</form>
			</div>
		</div>
	</div>
		<script>	
		$(document).ready(function() {
			//로그인 Modal 실행 (아이디 저장까지)
			$("#myBtn1").click(function() {
				//var logEmail = $('#logEmail').val("");
				var logPwd = $('#logPwd').val("");
				var logNickname = $('#logNickname').val("");
				$.ajax({
                    url:'emailSaveGet.do',
                    type:'post',
                    data:$('#logFrm').serialize(),
                    success:function(data){
                    	var logEmail = $('#logEmail').val(data);
        				if(data !="")
                    		$('#logSave').attr('checked',true);
        				else
        					$('#logSave').attr('checked',false);
                    }
	         	});
				$("#LoginModal").modal();
			});			
			
			//회원가입 창 액션
			$("#myBtn2").click(function() {
				$("#SignUpModal").modal();
			});	
			
	         //아이디 중복확인 액션
	        $('#emailCheck').click(function() {
	        	$.ajax({
	            	url:'emailCheckOK.do',
		            type:'post',
		            data:$('#Frm').serialize(),
		            success:function(data){
		                if(data=="0"){
		                	$("#signYes").attr("disabled", false);
		                    alert("사용가능한 email입니다.");
		                }else{
		                   alert("이미 사용중인 email입니다.");
		                }
	            }
	        	});
	   		});
	        
	          //회원가입 액션
	          $('#signYes').click(function() {
	            var email = $('#email').val();
	            var nickname = $('#nickname').val();
	            var pwd = $('#pwd').val();
	            var pwd2 = $('#pwd2').val();
	            var inputCheckNum = $('#inputCheckNum').val();
	            if (email.trim() == "") {
	               $('#email').focus();
	               return;
	            } else  if(nickname.trim() == ""){
	               $('#nickname').focus();
	               return;
	            } else if (pwd.trim() == "") {
	               $('#pwd').focus();
	               return;
	            } else if (pwd2.trim() == "") {
	               $('#pwd2').focus();
	               return;
	            } else if (pwd.trim() == "") {
	               $('#inputCheckNum').focus();
	               return;
	            } else if(pwd!=pwd2){
	               alert("비밀번호가 다릅니다");
	               $('#pwd2').val("");
	               $('#pwd2').focus();
	               return;
	            } else {
	               $.ajax({
	                       url:'joinOK.do',
	                       type:'post',
	                       data:$('#Frm').serialize(),
	                       success:function(data){
	                          alert("회원가입이 완료되었습니다.");
	                          $('#SignUpModal').modal('toggle');
	                          $('#email').val("");
	                          $('#nickname').val("");
	                          $('#pwd').val("");
	                          $('#pwd2').val("");
	                          $('#inputCheckNum').val("");
	                       } 
	                 });
	            }
	            });
	          
	          //로그인 액션
	         $('#logYes').click(function() {
	            var logEmail = $('#logEmail').val();
	            var logPwd = $('#logPwd').val();
	            var logSave = $('#logSave').val();
	            if (logEmail.trim() == "" || logEmail.trim()==null) {
	               alert("Email을 입력해주세요.");
	               $('#logEmail').focus();
	               return;
	            } else if (logPwd.trim() == "") {
	               alert("비밀번호를 입력해주세요.");
	               $('#logPwd').focus();               
	               return;
	            } else {
	               $.ajax({
	                       url:'loginOK.do',
	                       type:'post',
	                       data:$('#logFrm').serialize(),
	                       success:function(data){                  
	                          if(data=="noemail"){
	                             alert("E-Mail이 존재하지 않습니다.");
	                             $('#logEmail').val("");
	                             return;
	                          } else if(data=="nopwd"){
	                             alert("비밀번호가 틀립니다.");
	                             $('#logPwd').val("");
	                             return;
	                          } else {
	                        	 alert("로그인 성공");
	                             $('#logEmail').val("");
	                             $('#logPwd').val("");
	                             $('#LoginModal').modal('toggle');
	                             location.href="onm.jsp";
	                          }
	              		  } 
	               	});
	            }
	         });
	          
	         $('#logYes').click(function() {
        	   	if($('#logSave').attr('checked')) {
		      		$.ajax({
	                       url:'emailSaveOK.do',
	                       type:'post',
	                       data:$('#logFrm').serialize(),
	                       success:function(data){
	                       }
		            });
		    	} else{
		    		$.ajax({
	                       url:'emailSaveOK.do',
	                       type:'post',
	                       data:$('#logFrm').serialize(),
	                       success:function(data){
	                       }
		            });
		    	}
	         });
	   
	         //로그인 아이디 저장 액션
	         $('#logSave').click(function() {
	            var logSave = $('#logSave').val();
	            if($('#logSave').attr('checked')) {
	                  alert("개인 컴퓨터가 아닐시 개인정보 유출에 위험이 있을 수 있습니다.");     
	            }
	         });
	         
	 		//로그아웃
			$('#myBtn3').click(function() {
				$.ajax({
                    url:'logOutOK.do',
                    type:'post',
                    data:$('#logFrm').serialize(),
                    success:function(data){
                    	alert("성공적으로 로그아웃 되었습니다");
                    }
	        	});
			});		
		});
	</script>
</body>
</html>