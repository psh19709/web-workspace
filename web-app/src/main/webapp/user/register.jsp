<%@page import="com.sample.app.user.UserDao"%>
<%@page import="com.sample.app.user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	// 폼 입력값 가져오기
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	
	// 조회된 값을 User객체에 저장하기
	User user = new User();
	user.setName(name);
	user.setId(id);
	user.setPassword(password);
	user.setEmail(email);
	user.setTel(tel);
	
	// 조회된 사용자 정보를 테이블에 저장시키기
	UserDao userDao = new UserDao();
	userDao.insertUser(user);
	
	response.sendRedirect("register-success.jsp");
%>