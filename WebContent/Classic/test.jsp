<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/one.style.css">
	<link rel="stylesheet" href="assets/dist/dragula.css" type="text/css">
	 <script src="assets/plugins/jquery/jquery.min.js"></script>
	<script src="assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/dist/dragula.js"></script>
    <script type="text/javascript" src="http://www.google.com/jsapi?key=356376333244-3vlb9bt7qjilchlc0k2c8kbc64gblo45.apps.googleusercontent.com"></script>
    
   
<script type="text/javascript">
$(document).ready(function(){
		  dragula(document.querySelector('.bloc--inner'), {
			    moves: function(el, container, handle) {
			      return !handle.classList.contains('.bloc');
			    }
			  });

		 
		  dragula([].slice.apply(document.querySelectorAll('.bloc')), {
		    direction: 'horizontal'
		  });
});

</script>
<title>오늘 일을 내일로 미루자</title>
</head>
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
							<a href="#body"><span class="glyphicon glyphicon-home"></span>집으로</a>
						</li>
						<li class="page-scroll home">
							<a href="#about"><span class="glyphicon glyphicon-log-in"></span>로그인</a>
						</li>
						<li class="page-scroll home">
							<a href="#services"><span class="glyphicon glyphicon-user"></span>회원가입</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!--=== End Header ===-->
	 <div id="sist">
	    <div class="col-md-6 half">
    	<iframe src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=ko.south_korea%23holiday%40group.v.calendar.google.com&amp;color=%23125A12&amp;ctz=Asia%2FSeoul" style="border-width:0" width="600" height="600" frameborder="0" scrolling="no"></iframe>
    </div>
	 <div class="col-md-6 half">
	    <div class="col-md-4" style="background-color:yellow;" id="test1">
	    	<input type="button" value="insert"/>
	    	<div class="plz">header</div>
	    	<div class="bloc">
		      	<div class="bloc--inner">Move me, but you can only drop me in one of these containers.</div>
				<div class="bloc--inner">If you try to drop me somewhere other than these containers, I'll just come back.</div>
				<div class="bloc--inner">Item 3.</div>
				<div class="bloc--inner">Item 6.</div>
			</div>
	    </div>
	    <div class="col-md-4 bloc" style="background-color:pink;" id="test2">
		    <div class="bloc">
		    	<div class="bloc--inner">You can drop me in the left container, otherwise I'll stay here.</div>
				<div class="bloc--inner">Item 4.</div>
				<div class="bloc--inner">Item 5.</div>
			</div>
	    </div>
	    <div class="col-md-4 bloc" style="background-color:red;" id="test3">
		    <div class="bloc">
		    	<div class="bloc--inner">test</div>
		    	<div class="bloc--inner">test</div>
		    	<div class="bloc--inner">test</div>
		    	<div class="bloc--inner">test</div>
		    </div>
	    </div>
    </div>
    </div>
 
    
	
	</body>
		<!-- JS Global Compulsory -->

</html>