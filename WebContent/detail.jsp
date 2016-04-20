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
	min-width:500px;
	min-height:800px;
	max-height:1800px;
	padding:20px;
}
#modalTitle{
	border : 1px solid;
	margin:20px;
	padding:20px;
	border-radius : 3px;
}
#modalMid{
	border : 1px solid;
	margin:20px;
	padding:20px;
	border-radius : 3px;
}

#modalBottom{
	border : 1px solid;
	margin:20px;
	padding:20px;
	border-radius : 3px;
}
#content{
	height : 50px;
	border: 2px;
	
}
.modal-content{
	position: relative;
	margin:0 auto;

	width:900px;
	
}
#glypTitle{
	font-size: 25px;
}
#glypMid{
	font-size: 25px;
}
#mytextarea{
	
}
#modalTextarea{

}
#insertContent{
	cursor:pointer;
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
#map{
max-height:100%;
max-width:100%;
}
#priorityDiv .btn span.glyphicon {    			
	opacity: 0;				
}
#priorityDiv .btn.active span.glyphicon {				
	opacity: 1;				
}
#labelDiv .btn span.glyphicon {    			
	opacity: 0;				
}
#labelDiv .btn.active span.glyphicon {				
	opacity: 1;				
}

input[type="checkbox"] { 
  height: 20px; 
  width: 20px; 
  margin-right: 10px;
}	

.checkready { font-size: 1.5em; }
.ui-progressbar-value { background: lightgreen; }
.progressbar-container {
  position: relative;
  width: 350px; 
}

.progressbar-bar { 
  height: 25px;
margin: 10px 0;
border-radius: 7px;
}

.progressbar-label {
  position: absolute;
  top: 2px;
  left: 45%;
  z-index: 2;
}

#commentText{
	width:70%;
	height:70px;
	margin:10px;
	margin-left:30px;
}
#commentAddOk{
	margin-left:40px;
}
#commentDelete{
float:right;
}
#commentArea{
	border : 1px solid;
	width:70%;
	margin:20px;
	padding:20px;
	border-radius : 3px;
}

</style>
</head>
<body>
	
	<div class="modal-dialog" id="modalBody">
		<div class="row">
			<div id="content" >
				
			</div>
			<div class="col-sm-9">
				<div id="modalTitle">
					<span class="glyphicon glyphicon-list-alt" id="glypTitle"> 제목</span><span id="listName">list name</span>
					<div id="modalDate">
					</div>
					<div id="modalPriority">
					</div>
					<div id="modalLabel">
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
				
				<div id="modalMid"> 
					<span class="glyphicon glyphicon-th-list" id="glypMid"> 추가기능</span><br>
					<div id="modalMap" style="display:none">			
						<span class="glyphicon glyphicon-map-marker" >위치정보</span>
						<div id="map" style="width:400px;height:300px;"></div>
					</div>
					<div id="checklistadd" style="display:none">
						<span class="glyphicon glyphicon-ok" > 체크리스트</span>
						<p id="checklisttitle"></p>
						<div class="progressbar-container" id="progressbar-container">
				  			<div class="progressbar-bar" id="progressbar-bar"></div>
				  			<div class="progressbar-label" id="progressbar-label"></div>	  
	  		 			</div>
	  		
	  		  			<div class="checkready" id= "checkready" >
	  		  	   
			  			</div>
			   			<div id="addcheck">
						  <button type="button" class="addlistcheck" id="addchecklist">추가</button>
						  <button type="button" class="checkcomplete" id="complecheck" style="display:none">완료</button>
			   			</div>
					</div>
					<div id="modalFile" style="display:none">
						<form class="fileUpload" action="download.jsp" method="post" enctype="multipart/form-data">
							<div id="fileUpField" >
								<span class="glyphicon glyphicon-paperclip" id="glypfile"></span> 파일첨부
								<span id="listName"></span> 파일 이름
								<br><br>
								<img id="blah" scr="#">
								<button type="submit" class="btn btn-default btn-sm" id="glydown">
									<span class="glyphicon glyphicon-download-alt" ></span> 다운로드</button>
								<button type="button" class="btn btn-default btn-sm" id="glyremove">
									<span class="glyphicon glyphicon-remove-sign"></span> 삭제하기</button>
							</div>
						</form>
					</div>
				</div>
				<div id="modalBottom">
					<span class="glyphicon glyphicon-comment" id="glypBottom">댓글</span><br>
					<div id="commentDialog"> 
					  
						<div id="commentAddArea">
							<textarea id="commentText" onkeyup=resize(this)></textarea><br>
							<button id="commentAddOk">추가</button>
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
        				<input type="button" id="dateInsert" class="btn-sm" value="저장"/>
        				<input type="button" id="dateDelete" class="btn-sm" value="삭제"/>
        			</div>
        		</div>
		        
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
        		
        		<br><br>                          <%-- 뛰어 --%>        
		        <form class="fileUpload" action="insert.jsp" method="post" enctype="multipart/form-data">
					<button type="button" class="btn btn-default btn-sm" id="fileUpButton">
						<span class="glyphicon glyphicon-paperclip"> 파일첨부</span>
					</button>
					<div id="fileUpDiv" style="display:none">
						<input type="file" class="btn-default btn-sm" name="upload" id="upload" style="margin-bottom:10px">
						<button type="submit" class="btn btn-default btn-sm" id="fileInsert"><span class="glyphicon glyphicon-ok"></span>확인</button>
						<button type="reset" class="btn btn-default btn-sm" id="fileDelete"><span class="glyphicon glyphicon-remove"></span>취소</button>
						<!-- fuc = File Upload Cancel -->
					</div>
				</form>
		        <br>                       <%-- 뛰어 --%>
		        
		         <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-envelope"></span>  메일
		        </button>          
		         
		         <br><br>                       <%-- 뛰어 --%>
		         
		         <button type="button" class="btn btn-default btn-sm" id="checkBtn">
		          <span class="glyphicon glyphicon-ok"></span> 체크리스트
		        </button>
		        <div id="checkDiv" style="display:none">
		        	<div>
		        	제목 : <input type="text" id="checkTitle"/>
		        	</div>
		        	<div>
		        		<input type="button" id="checkInsert" value="생성"/>
						<input type="button" id="checkCancel" value="취소"/>
		        	</div>
		        
		        </div>
		        
		         <br><br>                        <%-- 뛰어 --%>
		        
		        <button type="button" class="btn btn-default btn-sm" id="btnMap">
		          <span class="glyphicon glyphicon-map-marker"></span> 위치설정
		          </button>	          
		        <!--  <div id="map" style="width:100%;height:350px; display:none;"></div>   -->
		         <div id="mapApp" style="display:none"><br>
        			 <label>주소검색 </label>
      				  <input id = "txtAddress" type="text" style="width : 100px">
      				  <br>
        			 <button type="button" onclick="Search();" id="mapSearch">찾기</button>
        			 	<button type="button"  id="mapCancel">삭제</button>
        		</div>



		        
		        <br><br>
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
				<br><br>
		 		<button class="btn btn-default btn-sm" type="button" id="labelBtn" >                 
               		 <span class="glyphicon glyphicon-tags"></span> 라벨
             	</button>
             	<div class="container" id ="labelDiv" style="display:none">
                  <div class="btn-group" data-toggle="buttons" >         
                     <label class="btn" style="background-color: red" >
                        <input type="radio" name="option10" id="option10" autocomplete="off" checked  value="red">
                        <span class="glyphicon glyphicon-ok" ></span>
                     </label>
                     <label class="btn" style="background-color: yellow">
                        <input type="radio" name="option10" id="option10" autocomplete="off" value="yellow">
                        <span class="glyphicon glyphicon-ok"></span>
                     </label>
            
                     <label class="btn btn-warning" style="background-color: green">
                        <input type="radio" name="option10" id="option10" autocomplete="off" value="green">
                        <span class="glyphicon glyphicon-ok"></span>
                     </label>
                     <label class="btn btn-warning" style="background-color: pink">
                        <input type="radio" name="option10" id="option10" autocomplete="off" value="pink">
                        <span class="glyphicon glyphicon-ok"></span>
                     </label>
                     <label class="btn btn-warning" style="background-color: blue">
                        <input type="radio" name="option10" id="option10" autocomplete="off" value="blue">
                        <span class="glyphicon glyphicon-ok"></span>
                     </label>
                  </div> 
                  <div>
                     <input type="button" id="labelInsert" value="확인"/>
                     <input type="button" id="labelDelete" value="삭제"/>
                  </div>
  
		    
			</div>
		</div>
		</div>
	</div>
	
</body>
</html>