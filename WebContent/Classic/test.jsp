<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
label{
	color : black;
}
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
			<div id="content" >
				
			</div>
			<div class="col-sm-9">
				<div id="modalTitle">
					<span class="glyphicon glyphicon-list-alt" id="glypTitle">제목</span><span id="listName">list name</span>
					<div id="modalDate">
					</div>
					<div id="modalPriority">
					</div>
					<div id="modalTextarea">
						<div id="contentText" style="font: bold;"><span class="glyphicon glyphicon-subscript">일정내용</span> <span id="insertContent" data-toggle="tooltip" title="일정 내용 수정"> 수정 </span></div>
						<div id="newTA" style="display:none">
						 	<textarea id="mytextarea" >
	  					  	</textarea>
		  					<button type="button" class="btn btn-default btn-sm" id="contentInsert">입력</button>
		  					<button type="button" class="btn btn-default btn-sm" id="contentCancel" >취소</button>
  					  </div>
  					  <div id="showContent" style="display:none">
  					  
  					  </div>
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
		         
		         <button type="button" class="btn btn-default btn-sm" id="checkBtn">
		          <span class="glyphicon glyphicon-ok"></span> 체크리스트
		        </button>
		        <div id="checkDiv" style="display:none">
		        	<div>
		        	제목 : <input type="text" />
		        	</div>
		        	<div>
		        		<input type="button" id="checkInsert" value="생성"/>
						<input type="button" id="checkCancel" value="취소"/>
		        	</div>
		        
		        </div>
		        
		         <br><br>                        <%-- 뛰어 --%>
		        
		        <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-map-marker"></span> 위치설정
		        </button>
		        
		        <br><br>                          <%-- 뛰어 --%>
		        
		        
		        
		        <button class="btn btn-default btn-sm" type="button" id="priorityBtn" >		        	
		          <span class="glyphicon glyphicon-star"></span> 우선순위 설정
		        </button>
		        <div class="container" id ="priorityDiv" style="display:none">
		       		<p>중요도</p>
						<div class="btn-group" data-toggle="buttons" >			
							<label class="btn" style="background-color: #FDC6C6" >
								<input type="radio" name="option1" class="option1" autocomplete="off" value="#FDC6C6">
								<span class="glyphicon glyphicon-ok" ></span>
							</label>
				
							<label class="btn" style="background-color: #FFACAC">
								<input type="radio" name="option1" class="option1" autocomplete="off" value="#FFACAC">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-warning" style="background-color: #FC7474">
								<input type="radio" name="option1" id="option1" autocomplete="off" value="#FC7474">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-warning" style="background-color: #FC4B4B">
								<input type="radio" name="option1" id="option1" autocomplete="off" value="#FC4B4B">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-warning" style="background-color: #FC0000">
								<input type="radio" name="option1" id="option1" autocomplete="off" value="#FC0000">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
						</div> 
							<p>선호도</p>
						<div class="btn-group" data-toggle="buttons">			
							<label class="btn" style="background-color:#DFDFFD">
								<input type="radio" name="option2" id="option2" autocomplete="off" value="#DFDFFD">
								<span class="glyphicon glyphicon-ok" ></span>
							</label>
				
							<label class="btn" style="background-color:#C0C0FF">
								<input type="radio" name="option2" id="option1" autocomplete="off" value="#C0C0FF">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-warning" style="background-color:#8F8FFF ">
								<input type="radio" name="option2" id="option2" autocomplete="off" value="#8F8FFF ">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-warning" style="background-color:#4E4EFD">
								<input type="radio" name="option2" id="option2" autocomplete="off" value="#4E4EFD">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
				
							<label class="btn btn-warning" style="background-color:#1414FC">
								<input type="radio" name="option2" id="option2" autocomplete="off" value="#1414FC">
								<span class="glyphicon glyphicon-ok"></span>
							</label>
						</div> 
						<div>
							<input type="button" id="priorityInsert" value="확인"/>
							<input type="button" id="priorityCancel" value="삭제"/>
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