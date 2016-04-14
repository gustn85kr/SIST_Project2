<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body{
		font-family:'Malgun Gothic';
		font-size: 15px;
		padding : 20px;
}
#modalBody{
	background-color: white;
	padding:20px;
}
#modalTitle{
	border : 1px solid;
	margin:20px;
	padding:20px;
	border-radius : 3px;
}
#content{
	height : 50px;
	border: 2px;
	
}
#glypTitle{
	font-size: 25px;
}

#mytextarea{
	
}
#modalTextarea{

}
#insertContent{
	text-decoration: underline;
}
#insertContext:HOVER {
	color : gray;
	font-size: 150%;
}
#listName{
	padding-left:20px;
}
#contentText{
	font-size : 15px;
}
#sideBar{
	
	padding : 10px;

}

#priorityDiv .btn span.glyphicon {    			
	opacity: 0;				
}
#priorityDiv .btn.active span.glyphicon {				
	opacity: 1;				
}

</style>
</head>
<body>
	
	<div class="modal-content" id="modalBody">
		<div class="row">
			 <p1></p1>     <%-- 라벨 색 들어가는곳 --%>
		     <p2></p2>
		     <p3></p3>
		     <p4></p4>
		     <p5></p5>
		     <p6></p6>   
			<div id="content" >
				
			</div>
			<div class="col-sm-9">
				<div id="modalTitle">
					<span class="glyphicon glyphicon-list-alt" id="glypTitle">제목</span><span id="listName">list name</span>
					<div id="modalDate">
					</div>
					<div id="modalTextarea">
						<div id="contentText" style="font: bold;">세부 내용 <span id="insertContent" data-toggle="tooltip" title="일정 내용 수정"> 수정 </span></div>
						<div id="newTA" style="display:none">
						 	<textarea id="mytextarea" >
	  					  	</textarea>
		  					<button type="button" class="btn btn-default btn-sm" id="contentInsert">입력</button>
		  					<button type="button" class="btn btn-default btn-sm" id="contentCancel" >취소</button>
  					  </div>
  					  <div id="showContent" style="display:none">
  					  
  					  </div>
				</div>
				
					<div id="modalMid">
						<div id="map" style="width:400px;height:300px;display:none"></div>
					</div>
				
				</div>
				
			</div>
			<div class="col-sm-3" id="sideBar">
				<button type="button" class="btn btn-default btn-sm"  id="dateBtn">
         			 <span class="glyphicon glyphicon-calendar"></span> 일정
        		</button>
        		<div id="dateDiv" style="display:none">
        			<div>
        			시작일<input type='text' id='sdate'>
        			</div>
        			<div>
        			종료일<input type='text' id='edate'>
        			</div>
        			<div>
        				<input type="button" id="dateInsert" class=btn-sm" value="저장"/>
        				<input type="button" id="dateDelete" class=btn-sm" value="삭제"/>
        			</div>
        		</div>
				<div class="dropdown">
		        <br/><br/>
		        <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-user" ></span>  인원 추가
		        </button>
		        <br/><br/>
           			<button type="button" class="btn btn-default btn-sm" data-toggle="dropdown">
              			<span class="glyphicon glyphicon-send"></span> SNS공유
              			<span class="caret"></span>
            			<ul class="dropdown-menu">
					          <li><a href="#">FaceBook</a></li>
					          <li><a href="#">Twitter</a></li>
          				</ul>
      				</button>
        		</div>
        		<br>                          <%-- 뛰어 --%>        
		        <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-paperclip" ></span>  파일첨부
		        </button>
		        <br><br>                       <%-- 뛰어 --%>
		        
		         <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-envelope"></span>  메일
		        </button>          
		         
		         <br><br>                       <%-- 뛰어 --%>
		         
		         <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-ok"></span> 체크리스트
		        </button>
		        
		         <br><br>                        <%-- 뛰어 --%>
		        
		        <button type="button" class="btn btn-default btn-sm" id="btnMap">
		          <span class="glyphicon glyphicon-map-marker"></span> 위치설정
		        </button>
		  		 <div id="mapApp" style="display:none"><br>
        			 <label>주소검색 </label>
        			 <input id = "txtAddress" type="text" style="width : 100px">
        			 <button type="button" onclick="Search();" id="mapSearch">찾기</button>
     			 </div>
		        
		        
		        <br><br>                          <%-- 뛰어 --%>
		        
		        
		        <button class="btn btn-default btn-sm" type="button" id="priorityBtn" >		        	
		          <span class="glyphicon glyphicon-star"></span> 우선순위 설정
		        </button>
		        <div class="container">
		       		<p>중요도</p>
						<div class="btn-group" data-toggle="buttons"  id ="priorityDiv" style="display:none">			
							<label class="btn" style="background-color: red">
								<input type="radio" name="option1" id="option2" autocomplete="off" checked>
								<span class="glyphicon glyphicon-ok" ></span>
							</label>
				
							<label class="btn btn-primary">
								<input type="radio" name="option1" id="option1" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-info">
								<input type="radio" name="option1" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-default">
								<input type="radio" name="option1" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-warning">
								<input type="radio" name="option1" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
						</div> 
						<br/><br/>
							<p>중요도</p>
						<div class="btn-group" data-toggle="buttons"  id ="priorityDiv" style="display:none">			
							<label class="btn" style="background-color: red">
								<input type="radio" name="option1" id="option2" autocomplete="off" checked>
								<span class="glyphicon glyphicon-ok" ></span>
							</label>
				
							<label class="btn btn-primary">
								<input type="radio" name="option1" id="option1" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-info">
								<input type="radio" name="option1" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-default">
								<input type="radio" name="option1" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-warning">
								<input type="radio" name="option1" id="option2" autocomplete="off">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
						</div> 
				</div>

				
		        
		       <div class="dropdown">
		       <br><br>		
       			    <button type="button" class="btn btn-default btn-sm" data-toggle="dropdown">
             			 <span class="glyphicon glyphicon-tags"></span> 라벨
       				     <span class="caret"></span></button>
          			<ul class="dropdown-menu">
				          <li><button class="w3-btn w3-red" id="btn1">빨강</button></li>              <%-- 라벨 색 --%>
				          <li><button class="w3-btn w3-yellow" id="btn3">노랑</button></li>
				          <li><button class="w3-btn w3-green" id="btn5">초록</button></li>
				          <li><button class="w3-btn w3-pink" id="btn7">분홍</button></li>
				          <li><button class="w3-btn w3-black" id="btn9">검정</button></li>
        		  </ul>
     		   </div>     
		    
			</div>
		</div>
	
	</div>
</body>
</html>