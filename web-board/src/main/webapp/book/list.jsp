<%@page import="com.sample.util.Pagination"%>
<%@page import="com.sample.vo.Book"%>
<%@page import="java.util.List"%>
<%@page import="com.sample.dao.BookDao"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.sample.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<jsp:param name="menu" value="book"/>
</jsp:include>
<div class="container my-3">
	<h1 class="mb-3 fs-4 border p-2 bg-light">도서 리스트</h1>
	<%
		int currentPage = StringUtils.stringToInt(request.getParameter("page"), 1);
	
		//
		BookDao bookDao = new BookDao();
		int totalRows = bookDao.getTotalRows();
		
		// 페이징처리에 필요한 정보를 제공하는 Pagination객체를 생성한다.
		Pagination pagination = new Pagination(currentPage, totalRows, 5, 5);
		
		// 요청한 페이지번호의 
		List<Book> bookList = bookDao.getBooks(pagination);
	%>
	<p>도서 목록을 확인하세요.</p>
	<table class="table">
		<colgroup>
			<col width="10%">
			<col width="*">
			<col width="12%">
			<col width="15%">
			<col width="10%">
			<col width="10%">
		</colgroup>
		<thead>
			<tr>
				<th></th>
				<th>제목</th>
				<th>저자</th>
				<th>출판사</th>
				<th>가격</th>
				<th>재고수량</th>
			</tr>
		</thead>
		<tbody>
		<%
			if(bookList.isEmpty()) {
		%>
			<tr>
				<td colspan="6" class="text-center">책 정보가 존재하지 않습니다.</td>
			</tr>
		<%
			} else {
				for(Book book : bookList) {
		%>
			<tr class="align-middle">
				<td><img src="../resources/images/<%=book.getImage() %>" class="img-thumbnail"></td>
				<td><a href="detail.jsp?no=<%=book.getNo() %>" class="text-decoration-none"><%=book.getTitle() %></a></td>
				<td><%=book.getAuthor() %></td>
				<td><%=book.getPublisher() %></td>
				<td><%=book.getPrice() %></td>
				<td><%=book.getStock() %></td>
			</tr>	
		<%
				}
					}	
		%>
		</tbody>
	</table>
<%
      if (totalRows >= 0) { 
   %>
   <div aria-label="navigation">
      <ul class="pagination justify-content-center">
         <li class="page-item">
            <a class="page-link <%=pagination.isFirst() ? "disabled" : "" %>" href="list.jsp?page=<%=pagination.getPrevPage()%>">이전</a>
         </li>
   <%
      for (int number = pagination.getBeginPage(); number <= pagination.getEndPage(); number++) {
   %>
         <li class="page-item"><a class="page-link <%=currentPage == number ? "active" : "" %>" href="list.jsp?page=<%=number %>"><%=number %></a></li>
   <%
      }
   %>
         <li class="page-item">
            <a class="page-link <%=pagination.isLast() ? "disabled" : "" %>" href="list.jsp?page=<%=pagination.getNextPage() %>">다음</a>
         </li>
      </ul>
   </div>
   <%
      }
   %>
</div>
</body>
</html>