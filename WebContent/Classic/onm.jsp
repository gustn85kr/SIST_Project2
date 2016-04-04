<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/one.style.css">
	<link rel="stylesheet" href="assets/dist/dragula.css" type="text/css">
	 <script src="assets/plugins/jquery/jquery.min.js"></script>
	<script src="assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/dist/dragula.js"></script>
    <script type="text/javascript" src="http://www.google.com/jsapi?key=356376333244-3vlb9bt7qjilchlc0k2c8kbc64gblo45.apps.googleusercontent.com"></script>
    <style type="text/css">
    .listFoot{
    	text-decoration : underline;
    	text-align : center;
    	margin : 5px;
    	background-color : #d3d3c9;

		width :250px;	
    }
   .footText{
    	width:250px;
    }
    .footInput{
  		width : 250px; 
    } 
    #calendar{
    	height:700px
    }
    #sist{
    	width:4500px;
    	height: 700px;
    }
    #cardList{
		/* position: relative; */
    }
    .cList{
    	position:relative;
    	max-height : 700px;
    	width:300px;
    	margin: 5px;
    	overFlow : auto;
    	background-color:#d3d3d3;
    	border-radius: 0.75em;	
    }
    .listHeader{
    	margin: 2px;
    	font: bold;
    	font-size: 25px;    	
    }
    .cardInsert{
    	margin: 2px;
    }
    .bloc{
    	padding: 5px;
    }
    </style>
   
<script type="text/javascript">
var i=0;

$(document).ready(function(){
	$(this).on("click",".footText",function(){
		$(this).css('display', 'none');
		$(this).siblings(".footInput").css('display', 'inline'); 
	});
	$(this).on("click",".cardCancel",function(){
		$(this).parent(".footInput").css('display', 'none');
		$(this).parent(".footInput").siblings('.footText').css('display', 'inline'); 
	});
	$(this).on("click",".bloc--inner",function(){
		$('#cardDetail').modal();
	});
	
	dragula(document.querySelector('.bloc--inner'), {
	    moves: function(el, container, handle) {
	    	alert('dragula');
	      return !handle.classList.contains('.bloc');
	    }
	});
  	dragula([].slice.apply(document.querySelectorAll('.bloc')), {
    	direction: 'horizontal'
 	});
  	
  	
	
	$(this).on("click","#listBtn",function(){
		$('#cardList').append("<div class='col-md-1 cList'><div class='listHeader'>header</div>"+
				"<div class='bloc'></div><div class='listFoot'><div class='footText'>일정추가하기</div>"+
				"<div class='footInput' style='display:none;'> <textarea cols='30' rows='3'></textarea>"+
				"<input type='button' value='추가' class='cardInsert'/> <input type='button' value='취소' class='cardCancel'/>"+
				"</div></div></div> ");
		dragula(document.querySelector('.bloc--inner'), {
		    moves: function(el, container, handle) {
		    	alert('dragula');
		      return !handle.classList.contains('.bloc');
		    }
		});
	  	dragula([].slice.apply(document.querySelectorAll('.bloc')), {
	    	direction: 'horizontal'
	 	}); 
		
	});
	$(this).on("click",".cardInsert",function(){
		var text = $(this).siblings('textarea').val();
		$(this).siblings('textarea').val("")
		$(this).parents(".listFoot").siblings('.bloc').append("<div class='bloc--inner'>"+text+"</div>");
		$(this).parent(".footInput").css('display', 'none');
		$(this).parent(".footInput").siblings('.footText').css('display', 'inline'); 
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
							<a href="#about"><span class="glyphicon glyphicon-log-in"></span>로그아웃</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<!--=== End Header ===-->
	 <div id="sist" class="row">
	    <div class=" col-md-2 half" id='calendar'>
    	<iframe src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=ko.south_korea%23holiday%40group.v.calendar.google.com&amp;color=%23125A12&amp;ctz=Asia%2FSeoul" style="border-width:0" width="600" height="600" frameborder="0" scrolling="no"></iframe>
   		 </div>
		 <div class="col-md-10 half" id ='cardList' >
		 	<input type='button' value='list' id='listBtn'/>
		 	<br>
		    <div class="col-md-1 cList"  id="cList1"  >	
		    	<div class="listHeader">header</div>
		    	<div class="bloc" >
		    	
				</div>
				<div class = 'listFoot'>
					<div class='footText'>일정 추가하기</div>
					<div class='footInput' style='display:none;'>	
						<textarea cols='30' rows='3'></textarea>
						<input type="button" value="추가" class="cardInsert" />
						<input type="button" value="취소" class="cardCancel" />
					</div>
				</div>
		    </div>
		    
		    <div class="col-md-1 cList"  id="cList2">		    	
		    	<div class="listHeader">header</div>
		    	<div class="bloc" >
				</div>
				<div class = 'listFoot'>
					<div class='footText'>일정 추가하기</div>
					<div class='footInput' style='display:none;'>			
						<textarea cols='30' rows='3'></textarea>
						<input type="button" value="추가" class="cardInsert" />
						<input type="button" value="취소" class="cardCancel" />
					</div>
				</div>
		    </div>
		    
	    </div>
    </div>
 	<!--  detail Modal -->
    <div class="modal fade" id="cardDetail" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
      	<jsp:include page="cardDetail.jsp" flush="false" />
      </div>
    </div>
  </div> 
	
	</body>
		<!-- JS Global Compulsory -->

</html>