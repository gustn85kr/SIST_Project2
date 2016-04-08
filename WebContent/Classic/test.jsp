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
					<div id="modalTextarea">
						<div id="contentText" style="font: bold;">세부 내용 <span id="insertContent"> 수정 </span></div>
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
				<div class="dropdown">
				<button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-time" ></span>  기간 설정
		        </button>
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
		        
		        <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-map-marker"></span> 위치설정
		        </button>
		        
		        <br><br>                          <%-- 뛰어 --%>
		        
		       <button type="button" class="btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-star"></span> 우선순위 설정
		        </button>
		       
		       <br><br> 
		       <div class="dropdown">
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