<%@page import="com.sample.dao.CartItemDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/logincheck.jsp" %>

<%
	// 로그인한 사용자의 아이디 조회
	String userId = loginUser.getId();
	
	CartItemDao cartItemDao = new CartItemDao();
	// 로그인한 사용자의 모든 장바구니 아이템을 삭제한다.
	cartItemDao.deleteCartItemsByUserId(userId);
	
	// 재요청 URL를 응답으로 보낸다.
	response.sendRedirect("list.jsp");
%>