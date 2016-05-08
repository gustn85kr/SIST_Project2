<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	       <div class="modal-content2" >      
				<div class="modal-header2" style="padding: 30px 30px;">
					<button type="button" class="close" data-dismiss="modal"	style="margin-top: 7px;">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 style="width: auto; height: auto;">
						<span class="glyphicon glyphicon-user"></span> 일정 검색
					</h4>
				</div>          
                <div class="modal-body2">
                	<div class="search-group2">
	                    <label class="col-sm-2 half" style="margin-left: 50px;">이메일</label>
	                    <label class="col-sm-3 half">제목</label>
	                    <label class="col-sm-5 half">내용</label>
	                    <label class="col-sm-1 half">#해시</label>
	                </div>  
                
	                
	                <c:forEach var="vo" items="${list}">
	                <%-- <c:if test="${i%2==0}"> --%>
	                    <div class="search-group3 searchDiv">
	                    	<input type="hidden" value="${vo.cardno}"/ class="cno">
	                        <label class="col-sm-2" style="margin-left: 50px">${vo.nickname}</label>
	                        <label class="col-sm-3">${vo.title}</label>
	                        <label class="col-sm-5">${vo.content}</label>
	                        <label class="col-sm-1">${vo.cardcomm}</label>
	                    </div>
	                <%-- </c:if> --%>
                
	                <%-- <c:if test="${i%2==1}" >
	                    <div class="search-group4">
	                        <label class="col-sm-2" style="margin-left: 50px;">바보3</label>
	                        <label class="col-sm-3" >#{list }</label>
	                        <label class="col-sm-5" >바보3</label>
	                        <label class="col-sm-1" >바보3</label>
	                    </div>
	                </c:if> --%>
	                </c:forEach>
	        	</div>
            </div>
</body>
</html>