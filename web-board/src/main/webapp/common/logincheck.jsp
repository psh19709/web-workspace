<%@page import="com.sample.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User loginUser = (User) session.getAttribute("loginedUser");
	if(loginUser == null) {
		response.sendRedirect("/web-board/user/loginform.jsp?error=deny");
		return;
	}
%>