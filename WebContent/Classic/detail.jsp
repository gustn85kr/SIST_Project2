<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<head>


    <title>CSS Tutorial | Layout</title>
    <style>
      .carousel-inner > .item > img,
       .carousel-inner > .item > a > img{
      width: 20%;

     }
      #jb-container {
        width: 910px;
        height: 790px;
        margin: 0px auto;
        padding: 20px;
        border: 1px solid #bcbcbc;
        background-color: white;
        
      }
      #jb-header {
        height:35px;
        padding: 5px;
        margin-bottom: 20px;
        border: 1px solid #bcbcbc;
        
      }
        
      #jb-content {
        width: 580px;
        height: 690px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
        color:black;
        border: 1px solid #bcbcbc;
            <%-- background-color:#65BD13;   --%>        
        
        
      }
      #jb-sidebar {
        width: 280px;
        height: 690px;
        padding: 20px;
        margin-bottom: 20px;
        float: right;
        border: 1px solid #bcbcbc;
        background-color:teal;
        
      }
      #jb-sidebar2 {
        width: 230px;
        height: 645px;
        padding: 20px;
        margin-bottom: 20px;
        float: right;
        border: 1px solid #bcbcbc;
        
      }
      
      #jb-footer {
        
        height:35px;
        clear: both;
        padding:20px;
        border: 1px solid #bcbcbc;
      }
      
    .glyphicon {
    font-size: 10px;
    width: 20px;
    color: #65BD13;
    

}
</style>

  </head>
  
  <body>
    <div id="jb-container">
    <div class="rows">
        <%-- 헤더 --%>
        
        
     <div class="form-group">
       <textarea class="form-control" rows="2" id="comment" placeholder="impossible is nothing.."></textarea>  <%-- 댓글 --%>
     </div>
      

      <div id="jb-content" class="col-md-8">
      
     <div class="form-group">             <%-- 제목 --%>
      
      <a href="#">
          <span class="glyphicon glyphicon-comment"></span>
      </a>
      
    <label for="usr">제목:</label>
      <input type="text" class="form-control" id="usr" placeholder="title..">
    </div>

                                            <%-- 내용 --%>   
    <div class="form-group">
    
  <a href="#">
    <span class="glyphicon glyphicon-comment"></span>
  </a>                    
     
      <label for="usr">내용:</label>          
     <textarea class="form-control" rows="25" id="comment" placeholder="write.."></textarea>
    </div>
     <div class="form-group">
       <textarea class="form-control" rows="3" id="comment" placeholder="add.."></textarea>  <%-- 댓글 --%>
     </div>
     <button class="w3-btn w3-teal" >Button</button>
     <button class="w3-btn w3-teal w3-disabled">Button</button>

     </div>
      <div id="jb-sidebar" class="col-md-4">     
                  <%-- <div id="jb-sidebar2" class="col-sm-4"> 사이드바 2 --%>                           
                     <%-- 옆  --%> 
        
          <div class="dropdown">
           <button type="button" class="btn btn-default btn-sm" data-toggle="dropdown">
              <span class="glyphicon glyphicon-send"></span> 공유
              <span class="caret"></span>
            <ul class="dropdown-menu">
          <li><a href="#">FaceBook</a></li>
          <li><a href="#">Twitter</a></li>
          </ul>
          </button>
        </div>
        <br>                          <%-- 뛰어 --%>
        
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-paperclip" ></span>  첨부
        </button>
        <br><br>                       <%-- 뛰어 --%>
        
         <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-envelope"></span>  메일
        </button>          
         
         <br><br>                       <%-- 뛰어 --%>
         
         <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-ok"></span> 체크
        </button>
        
         <br><br>                        <%-- 뛰어 --%>
        
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-map-marker"></span> 위치
        </button>
        
        <br><br>                          <%-- 뛰어 --%>
        
       <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-star"></span> 중요
        </button>
       
       <br><br> 
       
       <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-tags"></span> 라벨
        </button>
       
       </div>
    </div>
      </div>
  </body>
</html>