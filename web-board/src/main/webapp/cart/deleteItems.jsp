<%@page import="com.sample.dao.CartItemDao"%>
<%@page import="com.sample.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/logincheck.jsp"%>
<%
	// 입력폼에서 체크란 체크박스의 값을 요청객체에서 조회하기
	String[] values = request.getParameterValues("itemNo");
	// 체크된 아이템이 없으면 values는 null이다. values가 null이면 장바구니 리스트를 재요청하는 URL을 응답으로 보낸다.
	if(values == null) {
		response.sendRedirect("list.jsp");
		return;
	}
	
	// CartItemDao 객체를 생성하고, 아이템번호에 해당하는 장바구니 아이템을 삭제하는 수행문을 반복실행한다.
	CartItemDao cartItemDao = new CartItemDao();
	for(String value : values) {
		int itemNo = StringUtils.stringToInt(value);
		cartItemDao.deleteCartItemByNo(itemNo);
	}
	
	// 재요청 URL을 응답으로 보낸다.
	response.sendRedirect("list.jsp");
	
%>