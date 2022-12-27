<%@page import="com.sample.vo.Book"%>
<%@page import="com.sample.dao.BookDao"%>
<%@page import="com.sample.vo.User"%>
<%@page import="com.sample.vo.Review"%>
<%@page import="com.sample.dao.ReviewDao"%>
<%@page import="java.util.List"%>
<%@page import="com.sample.vo.Board"%>
<%@page import="com.sample.dao.BoardDao"%>
<%@page import="com.sample.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<title>익명 게시판</title>
<style>
	textarea {
		resize: none;
	}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp">
	<jsp:param name="menu" value="book"/>
</jsp:include>
<div class="container my-3">
	<h1 class="mb-3 fs-4 border p-2 bg-light">도서 상세정보</h1>
	<%
		int bookNo= StringUtils.stringToInt(request.getParameter("no"));
	
		BookDao bookDao = new BookDao();
		Book book = bookDao.getBookByNo(bookNo);
	%>
	<p>도서 상세정보를 확인하세요</p>
	<div class="row mb-3 p-2">
		<div class="col-4">
			<img src="../resources/images/<%=book.getImage() %>" class="img-thumbnail"/>
		</div>
		<div class="offset-1 col-7">
			<table class="table">
				<colgroup>
					<col width="15%">
					<col width="35%">
					<col width="15%">
					<col width="35%">
				</colgroup>
				<tbody>
					<tr>
						<th>도서번호</th>
						<td><%=book.getNo() %></td>
						<th>등록일</th>
						<td><%=StringUtils.dateToText(book.getCreatedDate()) %></td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="3"><%=book.getTitle() %></td>
					</tr>
					<tr>
						<th>저자</th>
						<td><%=book.getAuthor() %></td>
						<th>출판사</th>
						<td><%=book.getPublisher() %></td>
					</tr>
					<tr>
						<th>할인가격</th>
						<td><strong class="text-danger"><%=StringUtils.numberTotext(book.getDiscountPrice()) %></strong> 원</td>
						<th>가격</th>
						<td><strong><%=book.getPrice() %></strong> 원</td>
					</tr>
					<tr>
						<th>재고수량</th>
						<td><%=book.getStock() %></td>
						<th>판매여부</th>
						<td><%="Y".equals(book.getOnSell()) ? "판매중" : "재고없음" %></td>
					</tr>
					<tr>
						<th>소개</th>
						<td colspan="3"><%=book.getDescription() %></td></tr>
				</tbody>
			</table>
			
			<!-- 
			현재 URL : http://localhost/web-board/book/detail.jsp?no=(
			요청 URL : http://localhost/web-board/cart/addItem?bookNo=
			요청 URL : http://localhost/web-board/order/form.jsp?bookNo=
			요청 URL : http://localhost/web-board/homm
			
			기준 URL : http://localhost/web-board/book/
			
			상대 경로 : ../cart/addItem?bookNo=.jsp
			상대 경로 : ../order/form.jsp?bookNo=.jsp
			상대 경로 : ../home.jsp
		 -->
			<div class="d-grid gap-2">
				<a href="../cart/addItem.jsp?bookNo=<%=book.getNo() %>" class="btn btn-outline-dark fw-bold" type="button">장바구니</a>
				<a href="../order/orderform.jsp?bookNo=<%=book.getNo() %>" class="btn btn-outline-primary fw-bold" type="button">바로구매</a>
			</div>
		</div>
	</div>
	<hr />
	<div class="mb-3">
		<!-- 
			현재 URL : http://localhost/web-board/book/detail.jsp?no=(
			요청 URL : http://localhost/web-board/book/list.jsp
			
			기준 URL : http://localhost/web-board/book/
			상대 경로 : list.jsp
		 -->
		<a href="list.jsp" class="btn btn-outline-primary float-end">목록</a>
	</div>
</div>
</body>
</html>