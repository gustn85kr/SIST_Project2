
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/one.style.css">
	<link rel="stylesheet" href="assets/dist/dragula.css" type="text/css">
	
	
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-teal.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">    <%-- css --%>
	
	
	<link rel='stylesheet' href='calendar/jquery-ui.min.css' />
   	<link href="calendar/fullcalendar.css" rel="stylesheet" />
   	<link href="calendar/fullcalendar.print.css" rel='stylesheet' media='print' />
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
   	
    <script src="assets/plugins/jquery/jquery.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="calendar/moment.min.js"></script>
	<script src="calendar/fullcalendar.min.js"></script>
	
	<script type="text/javascript" src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
	<script type="text/javascript" src="http://www.pureexample.com/js/lib/jquery.ui.touch-punch.min.js"></script>
	
	<script src="assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script src='//cdn.tinymce.com/4/tinymce.min.js'></script>
	
 	
  

    <style type="text/css">
body{
	font-family:'Malgun Gothic';
}
.bar {
    width: 100px;
    height: 20px;
    margin: 2px;
    border: 1px solid black;
    background-color: lightgreen;
    text-align: center;
    float: left;
    margin: 2px;
    padding: 2px;
    cursor: pointer;
    border-radius: 3px;
}
 
.list {
    background-color: #FFFFFF; 
    border: 1px solid;
    border-radius: 2em;
    margin: 5px;
    padding : 5px;
    font-size: 20px;
    word-break:break-all;
    

}
 
.items .ui-selected {
    background: red;
    color: white;
    font-weight: bold;
}
 
.items {
    list-style-type: none;
 	margin:0;
 	padding: 10px;
 
    
}
 
.items li {
    margin: 2px;
    padding: 2px;
    cursor: pointer;
    border-radius: 3px;
}
 
.weekday {

    width: 300px;
    padding: 5px;
    border: 1px solid green;
    border-radius: 0.75em;	
    background-color: #65BD13;

    margin: 5px;
    
    /* max-height : 700px; */   
}
 
.availablelist {
    background-color: orange;
    display: inline;
}
    
    #draggablePanelList .panel-heading {
        cursor: move;
    } 
   #calendar_attr {
  
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}

	#calendar_container {
		position:relative;
		top:700px;
		max-width: 700px;
		margin: 0 auto;
	}
	
    #sist{
    	/* width:4500px; */
    	height: 700px;
    		
    }
    #cardList{
    }

    .listHeader{
    	margin: 2px;
    	font: bold;
    	font-size: 25px;
    	
    }

   .footText{
    	width:280px;
    }
    .footInput{
  		width : 280px; 
  		text-align : center;
  		margin : 5px;
  		height: 50px;
    } 
    .footInput textarea{
    	width:280px;
    }
    .cardInsert{
    	margin-left: 100px;
    }
    .listHeader{
    	margin:5px;
    	height: 20px;
    }
    .listHeader p{
    	color :white;
    	font-size:20px;
    	margin: 5px;
    }
    #calendar{

    }
	#cardDetail .modal-dialog {
		width:75%
	}

.fc-time{
   display : none;
}
    </style>
   
<script type="text/javascript">


$(document).ready(function(){
	$('#calendar').fullCalendar({
		theme: true,
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		defaultDate: '2016-04-02',
		selectable: true,
		selectHelper: true,
		select: function(start, end) {
			var title = prompt('내용을 입력해주세요');
			var eventData;
			if (title) {
				eventData = {
					title: title,
					start: start,
					end: end
				};
				$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
			}
			$('#calendar').fullCalendar('unselect');
		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: [
			{
				title: 'All Day Event',
				start: '2014-11-01'
			},
			{
				title: 'Long Event',
				start: '2014-11-07',
				end: '2014-11-10'
			}
		
		]
	});
		$(this).on("click",".list",function(){
			$('#cardDetail').modal();
		});
		/* $("td").sortable({
			connectWith:".fc-day"
		}); */
		/* $("td").draggable({
			helper:"clone",
			connectToSortable: ".items"
		}); */
  	    $("#timetable .items").sortable({
  	            connectWith: "ul"        
  	    });
  	    $("ul[id^='available']").draggable({
/*   	        helper: "clone",
  	        connectToSortable: "td", */
  	        	revert: true,      // immediately snap back to original position
  	          revertDuration: 0
  	    });
  	    $(this).on("click",".footText",function(){
  			$(this).css('display', 'none');
  			$(this).siblings(".footInput").css('display', 'inline'); 
  		});
  	    $(this).on("click",".cardInsert",function(){
  	    	var text = $(this).siblings('textarea').val();
  			$(this).siblings('textarea').val("")
  			
  			$(this).parents(".listFoot").siblings('.items').append("<li class='list'>"+text+"</li>");
  			$(this).parent(".footInput").css('display', 'none');
  			$(this).parent(".footInput").siblings('.footText').css('display', 'inline'); 
  		});
  	    $(this).on("click","#listAddBtn",function(){
  	    	var text = prompt("제목을 입력하세요.","새로운 일정");
  	    	
  			$('#timetable').append("<div class='weekday col-md-1'><div class='listHeader'><p>"+text+
  					"<button type='button' class='btn btn-sm btn-default listDelete' style='float:right'> "+
  					"<span class='glyphicon glyphicon-trash'></span></p>"+
	    			"</div><ul class='items'></ul><div class = 'listFoot'> "+
  					"<button class='btn-primary footText'>일정 추가하기</button><div class='footInput' style='display:none;'> "+
  					" <textarea cols='30' rows='3'></textarea><input type='button' value='추가' class='cardInsert btn-primary'/>  "+
  	 				" <input type='button' value='취소' class='cardCancel btn-primary'/> </div></div></div> ");
  			 $("#timetable .items").sortable({
   	            connectWith: "ul"  
   	    	});
  		});
  	    $("#insertContent").tooltip();
  	    $(this).on("click","#insertContent",function(){
  	    	
  	    	$(this).parent("#contentText").siblings("#newTA").css('display','inline');
  	    	$(this).parent("#contentText").siblings("#showContent").css('display','none');
  	    	$(this).css('display','none');
  	    	
  	    	tinymce.init({
  	    	  selector: '#mytextarea',
  	    	  height: 200,
  	    	  theme: 'modern',
  	    	  plugins: [
  	    	    'advlist autolink lists link image charmap print preview hr anchor pagebreak',
  	    	    'searchreplace wordcount visualblocks visualchars code fullscreen',
  	    	    'insertdatetime media nonbreaking save table contextmenu directionality',
  	    	    'emoticons template paste textcolor colorpicker textpattern imagetools'
  	    	  ],
  	    	  toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
  	    	  toolbar2: 'print preview media | forecolor backcolor emoticons',
  	    	  image_advtab: true,
  	    	  templates: [
  	    	    { title: 'Test template 1', content: 'Test 1' }

  	    	  ],
  	    	  content_css: [
  	    	    '//fast.fonts.net/cssapi/e6dc9b99-64fe-4292-ad98-6974f93cd2a2.css',
  	    	    '//www.tinymce.com/css/codepen.min.css'
  	    	  ]
  	    	   
  	    	 });
  	      	 
  	    });
  	    $(this).on("click","#contentInsert",function(){
  	    	var tmp = tinyMCE.activeEditor.getContent();
  	    	$(this).parent("#newTA").css('display',"none");
  	    	$(this).parent("#newTA").siblings("#showContent").css('display',"inline");
  	    	$(this).parent("#newTA").siblings("#showContent").empty();
  	    	$(this).parent("#newTA").siblings("#showContent").append(tmp);
  	    	$(this).parent("#newTA").siblings("#contentText").children("#insertContent").css('display',"inline");
  	    });
  	  $(this).on("click","#contentCancel",function(){
	    	var tmp = tinyMCE.activeEditor.getContent();
	    	$(this).parent("#newTA").css('display',"none");
	    	$(this).parent("#newTA").siblings("#showContent").css('display',"inline");
	    	$(this).parent("#newTA").siblings("#contentText").children("#insertContent").css('display',"inline");
	    });
  	  $(this).on("click","#priorityBtn",function(){
  		 obj = document.getElementById('priorityDiv');
  		if(obj.style.display == "none"){
  		  	$("#priorityDiv").css('display','inline');
  		}else{
  			$("#priorityDiv").css('display','none');
  		}
  		
  	  });
  	  $(this).on("click","#priorityInsert",function(){
  			$("#priorityDiv").css('display','none');
  			var op1 = $(':radio[name="option1"]:checked').val();
  			
		  	var op2 = $(':radio[name="option2"]:checked').val();
		  	$('input').prop('checked', false);
		  	$('#modalPriority').empty();
	  		$('#modalPriority').append("<span class='glyphicon glyphicon-star'>우선순위</span><br/><div id='priorityIf'></div> ");
	  		if(op1!=null){
	  			$("#priorityIf").append("<span style='background-color:"+op1+"'> 중요도</span>");
	  		}
	  		if(op2!=null){
	  			$("#priorityIf").append("<span style='background-color:"+op2+"'> 선호도</span>");
	  		}
  	  });
  	  $(this).on("click","#priorityCancel",function(){
  		$("#priorityDiv").css('display','none');
  		$('#modalPriority').empty();
  	  });
  	  $(this).on("click","#checkBtn",function(){
  		  obj = document.getElementById('checkDiv');
  		  if(obj.style.display=="none"){
  		  	$("#checkDiv").css("display","inline");
  		  }else{
  			$("#checkDiv").css("display","none");
  		  }
  		  
  	  });
  	  $(this).on("click","#checkInsert",function(){
  		  $("#checkDiv").css("display",'none');
  	  });
  	$(this).on("click","#checkCancel",function(){
		  $("#checkDiv").css("display",'none');
	  });
  	  
 	 	$(this).on("click","#btn1",function(){
	        $("p1").append(" <button class='w3-btn w3-red' id='btn2'></button>");    
	    });
	    $(this).on("click","#btn2",function(){
	          $(this).remove();
	    });
	   
	    $(this).on("click","#btn3",function(){
	        $("p2").append(" <button class='w3-btn w3-yellow' id='btn4'></button>");    
	    });
	    $(this).on("click","#btn4",function(){
	          $(this).remove();
	    });
	   
	    $(this).on("click","#btn5",function(){
	         $("p3").append(" <button class='w3-btn w3-green' id='btn6'></button>");    
	     });
	    $(this).on("click","#btn6",function(){
	          $(this).remove();
	     });
	   
	    $(this).on("click","#btn7",function(){
	        $("p3").append(" <button class='w3-btn w3-pink' id='btn8'></button>");    
	    });
	    $(this).on("click","#btn8",function(){
	          $(this).remove();
	    });
	   
	    $(this).on("click","#btn9",function(){
	        $("p3").append(" <button class='w3-btn w3-black' id='btn10'></button>");    
	    });
	    $(this).on("click","#btn10",function(){
	          $(this).remove();
	    });
	    $(this).on("click","#dateBtn",function(){
	    	 obj = document.getElementById('dateDiv');
	    	 if(obj.style.display=="none"){
	    		$("#dateDiv").css("display","inline");
	    	 }else{
	    		$("#dateDiv").css("display","none");
	    	 }
	    });
	    
	    $('#sdate').datepicker();
	    $('#sdate').datepicker("option", "maxDate", $("#edate").val());
	    $('#sdate').datepicker("option", "onClose", function ( selectedDate ) {
	        $("#edate").datepicker( "option", "minDate", selectedDate );
	    });
	 
	    $('#edate').datepicker();
	    $('#edate').datepicker("option", "minDate", $("#sdate").val());
	    $('#edate').datepicker("option", "onClose", function ( selectedDate ) {
	        $("#sdate").datepicker( "option", "maxDate", selectedDate );
	    });
	    
	    $(this).on("click","#dateInsert",function(){
	    	$("#dateDiv").css("display","none");
	    	var title = $('#glypTitle').text();
	    	
	    	var startDate= $('#sdate').val();
	    	var endDate=$('#edate').val();
	    	
	    	var events=new Array();     
	    	event = new Object();       
	    	event.title = title; 
	    	event.start = startDate;    // its a date string
	    	event.end = endDate;        // its a date string.
	    	event.color = "red";
	    	event.allDay = false;

	    	events.push(event);
	    	$('#calendar').fullCalendar('addEventSource',events);
	    	$('#modalDate').empty();
	    	$('#modalDate').append("<span class='glyphicon glyphicon-calendar'>일정날짜</span><div id='sdateDiv'> <b>시작일 </b>: "+startDate+"</div>");
	    	if(endDate!=""){
	    		$('#modalDate').append("<div id='edateDiv'> <b>종료일 </b>: "+endDate+"</div>");
	    	}
	    	
	    	
	    	
	    });
	    $(this).on("click",".listDelete",function(){
	    	if (confirm('해당 리스트를 삭제 하시겠습니까?')) {
	    		$(this).parents(".weekday").remove();    
	    	} else {
	    	    // Do nothing!
	    	}
	    	
	    });

});


 //달력!!!!!!!!
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
	 <div id="sist" class="row">
	    <div class=" col-md-6 half" id='calendar'>
        	<div id="calendar_attr">
				<div id='calendar_container'></div>
				</div>    	
			</div>
   		 <div class="col-md-6 half" id ='cardList' >
			<div style="clear:both"></div>
			<div id="timetable" style="float:left;max-width:7000px;">
				<input style="align:left" type="button" value="리스트 추가" id="listAddBtn">
	    		<div style="text-align:center">
	    		
	    		</div>
	    		
	    		<div class="weekday col-md-1">
	    			<div class='listHeader'>
	    				<p> Title
	    				<button type="button" class="btn btn-sm btn-default listDelete" style="float:right">
         							 <span class="glyphicon glyphicon-trash"></span>
     					   </button>
     					</p>
	    			</div>
	        		<ul class="items">
			            <li class="list">  류정현1</li>
			            <li class="list">정현1</li>
	      			</ul>
	      			<div class = 'listFoot'>
	      				<button class="btn-primary footText" type="button"> 일정 추가하기</button>
						<div class='footInput' style='display:none;'>	
							<textarea cols='31' rows='3' style="resize:none"></textarea>
							<input type="button" value="추가" class="cardInsert btn-primary" />
							<input type="button" value="취소" class="cardCancel btn-primary" />
						</div>
				</div>
	    		</div>
			</div>
	    </div>
    </div>
	  <div class="modal fade" id="cardDetail" role="dialog" >
    <div class="modal-dialog">
 		<div>
 	
 			  <jsp:include page="test.jsp" flush="false" /> 
 		</div>   

      
    </div>
  </div>   	    
</body>
		<!-- JS Global Compulsory -->
		
</html>