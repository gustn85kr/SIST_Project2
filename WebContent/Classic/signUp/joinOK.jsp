<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.dao.*"%>

<%
	request.setCharacterEncoding("EUC-KR");
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	UserDTO d = new UserDTO();
	d.setEmail(email);
	d.setPwd(pwd);
	// DB연동 
	UserDAO dao = UserDAO.newInstance();
	dao.insertUser(d);
	// list.jsp로 이동 (리다이렉트)
	response.sendRedirect("../index.jsp");
	//회원가입 끝내기
%>