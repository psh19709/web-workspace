<%@page import="com.sample.dao.CartItemDao"%>
<%@page import="com.sample.util.StringUtils"%>
<%@page import="com.sample.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/logincheck.jsp" %>
<%
	// 요청객체에서 요청파라미터 정보 조회
	int itemNo = StringUtils.stringToInt(request.getParameter("itemNo"));

	// itemNo에 해당하는 장바구니 아이템 정보를 삭제한다.
	CartItemDao cartItemDao = new CartItemDao();
	cartItemDao.deleteCartItemByNo(itemNo);
	
	// 재요청 URL을 응답을 보낸다.
	response.sendRedirect("list.jsp");
%>