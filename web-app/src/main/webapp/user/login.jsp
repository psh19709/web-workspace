<%@page import="com.sample.app.user.User"%>
<%@page import="com.sample.app.user.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = request.getParameter("id");
	String userPassword = request.getParameter("password");
	
	UserDao userDao = UserDao.getInstance();
	User user = userDao.getUserById(userId);
	if (user == null) {	// 사용자 정보가 존재하지 않음
		response.sendRedirect("loginform.jsp?error=fail");
		return;
	}
	if (!user.getPassword().equals(userPassword)) {	// 비밀번호가 일치하지 않음
		response.sendRedirect("loginform.jsp?error=fail");
		return;		
	}
	
	// HttpSession객체에 사용자정보를 저장한다.
	session.setAttribute("LOGIN_USER", user);
	
	// 재요청URL을 응답으로 보낸다.
	response.sendRedirect("../home.jsp");	
%>