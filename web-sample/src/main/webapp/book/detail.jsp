<%@page import="com.sample.util.StringUtils"%>
<%@page import="com.sample.vo.Book"%>
<%@page import="com.sample.dao.BookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<title>도서 상세정보</title>
</head>
<body>
	<div class="container my-5">
		<h1>도서 상세정보</h1>
		<%
			// 요청파라미터에서 책번호를 조회한다.
			int No = Integer.parseInt(request.getParameter("bookNo"));
			// BookDao객체를 생성하고, BookDao객체의 getBookByNo(int bookNo) 메소드를 실행해서 도서 상세정보를 반환하다.
			BookDao bookDao = new BookDao();
			Book book = bookDao.getBookByNo(No);
		%>
		<p><strong class="text-danger"><%=No %></strong>번 도서의 상세정보를 확인하세요.</p>
		<!-- 
			// 1. list.jsp에서는 detail.jsp?bookNo=책번호 이 URL을 서버로 보내서 도서 상세정보를 요청한다.
			// 2. 톰캣이 이 요청메세지를 분석해서 URL의 쿼리스트링값을 HttpServletRequest객체의 요청파라미터값을 저장한다.
			// 3. 톰캣은 폼입력값이 저장된 HttpServletRequet객체, HttpServletResponse객체를 detail.jsp의 
			//		_jspService(request, response)를 실행할 때 전달한다.
			// 4. detail.jsp에서는 요청파라미터값을 조회한다.
		 -->
		
		<table class="table table-bordered">
			<colgroup>
				<col style="width: 15%;">
				<col style="width: 35%;">
				<col style="width: 15%;">
				<col style="width: 35%;">
			</colgroup>
			<tbody>
				<tr>
					<th>책 번호</th>
					<td><%=book.getNo() %></td>
					<th>등록일자</th>
					<td><%=StringUtils.detaToText(book.getCreatedDate()) %></td>
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
					<th>가격</th>
					<td><%=StringUtils.numberTotext(book.getPrice()) %> 원</td>
					<th>할인가격</th>
					<td><strong class="text-danger"><%=StringUtils.numberTotext(book.getDiscountPrice()) %></strong></td>
				</tr>
				<tr>
					<th>재고수량</th>
					<td><%=book.getStock() %></td>
					<th>판매여부</th>
					<td>
               <%
               		if(book.isOnSell()) {
               %>
               		<span class="badge text-bg-primary">판매중</span>
               <%
               		} else {
               %>
               		<span class="badge text-bg-secondary">재고없음</span>
               <%
               		}
               %>
              		</td>
				</tr>
			</tbody>
		</table>
		<div>
         <a href="delete.jsp?bookNo=<%=book.getNo() %>" class="btn btn-danger <%=book.isOnSell() ? "disabled" : "" %>">삭제</a>
         <a href="modifyform.jsp?bookNo=<%=book.getNo() %>" class="btn btn-warning">수정</a>
         <a href="list.jsp" class="btn btn-outline-primary float-end">목록</a>
      	</div>
    </div>
</body>
</html>