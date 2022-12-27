<%@page import="com.sample.util.StringUtils"%>
<%@page import="com.sample.dto.CartItemDto"%>
<%@page import="java.util.List"%>
<%@page import="com.sample.dao.CartItemDao"%>
<%@page import="com.sample.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/logincheck.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<title>익명 게시판</title>
<style type="text/css">
	img.img-thumbnail {width: 53px; height: 68px;}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp">
	<jsp:param name="menu" value="cart"/>
</jsp:include>
<div class="container my-3">
	<h1 class="mb-3 fs-4 border p-2 bg-light">장바구니 리스트</h1>
<%
	// CartItemDao 객체를 생성하고, getCartItemsByUserId(String userId) 메소드를 실행해서 장바구니 아이템 목록을 조회한다.
	CartItemDao cartItemDao = new CartItemDao();
	//loginUser는 logincheck.jsp에서 정의한 변수다.
	List<CartItemDto> dtoList = cartItemDao.getCartItemsByUserId(loginUser.getId());
%>
	<p>장바구니 목록을 확인하세요.</p>
	<form method="get" action="deleteItems.jsp">
	<table class="table">
		<colgroup>
			<col width="5%">
			<col width="10%">
			<col width="*">
			<col width="10%">
			<col width="15%">
			<col width="15%">
			<col width="10%">
		</colgroup>
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th></th>
				<th>제목</th>
				<th>수량</th>
				<th>가격</th>
				<th>구매가격</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
	<%
		if(dtoList.isEmpty()) {
	%>	
		<tr>
			<td colspan="7" class="text-center">장바구니에 저장된 책이 없습니다.</td>
		</tr>
	<%	} else {
			for(CartItemDto dto : dtoList) {
	%>
			<tr class="align-middle">
				<td><input type="checkbox" name="itemNo" value="<%=dto.getItemNo() %>" /></td>
				<td><img src="../resources/images/<%=dto.getImage() %>" class="img-thumbnail"></td>
				<td><a href="../book/detail.jsp?no=<%=dto.getBookNo() %>" class="text-decoration-none"><%=dto.getTitle() %></a></td>
				<td><%=dto.getAmount() %> 권</td>
				<td><strong class="text-danger"><%=StringUtils.numberTotext(dto.getDiscountPrice()) %> 원</strong>
					 <small>(<%=StringUtils.numberTotext(dto.getPrice()) %> 원)</small></td>
				<td><strong class="text-danger"><%=StringUtils.numberTotext(dto.getAmount()*dto.getPrice()) %> 원</strong></td>
				<td>
					<a href="deleteItems.jsp?itemNo=<%=dto.getItemNo() %>" class="btn btn-secondary btn-sm">삭제</a>
					<a href="" class="btn btn-primary btn-sm">구매</a>
				</td>
			</tr>
	
	<%			
			}
		}
	%>
		</tbody>
	</table>
	<div class="">
      <a href="clear.jsp" class="btn btn-secondary btn-sm" >전체 삭제</a>
      <button type="submit" class="btn btn-secondary btn-sm" >선택 삭제</button>
      
      <a href="../book/list.jsp" class="btn btn-outline-primary btn-sm float-end">쇼핑계속</a>
  	 </div>
  	 </form>
</div>
</body>
</html>