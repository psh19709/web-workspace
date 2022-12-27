<%@page import="com.sample.dao.CartItemDao"%>
<%@page import="com.sample.vo.CartItem"%>
<%@page import="com.sample.util.StringUtils"%>
<%@page import="com.sample.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/logincheck.jsp" %>
<%

	
	// 요청파라미터에서 책번호 조회
	int bookNo = StringUtils.stringToInt(request.getParameter("bookNo"));
	//사용자 아이디 조회(loginUser는 logincheck.jsp에서 정의한 변수다.)
	String userId = loginUser.getId();
	
	// CartItem 객체를 생성하고, 팩번호와 사용자아이디를 저장한다.
	CartItem cartItem = new CartItem(bookNo, userId);
	
	// CartItemDao객체를 생성하고, addCartItem(CartItem cartItem) 메소드를 실행해서 장바구니 아이템을 저장시킨다.
	CartItemDao cartItemDao = new CartItemDao();
	cartItemDao.insertCartItem(cartItem);
	
	// 재요청 URL 응답으로 보낸다.
	/*
		현재 URL : http://localhost/web-board/cart/addItem.jsp?bookNo=(값)
		요청 URL : http://localhost/web-board/cart/list
			
		기준 URL : http://localhost/web-board/cart/
		상대 경로 : list.jsp
	*/
	
	response.sendRedirect("list.jsp");
%>