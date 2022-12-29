<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.sample.util.StringUtils"%>
<%@page import="java.util.List"%>
<%@page import="com.sample.dao.BookDao"%>
<%@page import="com.sample.vo.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<title>도서 리스트</title>
</head>
<body>
	<div class="container py-5">
		<h1>도서 리스트</h1>
		
		<%
			// 페이징 처리하기
			
			// 1. 한 화면에 표시할 행의 갯수를 결정하기
			final int rows = 10;
			// 2. 현재 페이지 번호를 조회하기
			int currentPage= StringUtils.stringToInt(request.getParameter("page"), 1);
			// 3. 현재 페이지 번호에 맞는 조회범위 계산하기
			int begin = (currentPage - 1)*rows + 1;
			int end = currentPage*rows;
			// 4. Map객체를 생성해서 조회범위를 저장한다.
			Map<String, Object> param = new HashMap<>();
			param.put("begin", begin);
			param.put("end", end);
			
			// 현재 페이지번호에 맞는 책 목록을 조회하기 위해서 BookDao객체를 생성한다.
			BookDao bookDao = new BookDao();
			// BookDao getBooks(Map<String, Object> param) 메소드를 실행해서 현재 페이지 번호에 맞는 책 목록을 반환받는다.
			List<Book> books = bookDao.getBooks(param);
		%>
		
		<p>도서 리스트를 확인하세요 <a href="form.jsp" class="btn btn-primary btn-sm float-end">신규 도서 등록</a></p>
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>저자</th>
					<th>출판사</th>
					<th>가격</th>
					<th>재고수량</th>
				</tr>
			</thead>
			<tbody>
		<%
			if (books.isEmpty()) {
		%>
				<tr>
					<td colspan="6" class="text-center">도서 정보가 존재하지 않습니다.</td>
				</tr>
		<% 
			} else {
				for (Book book : books) {
		%>
				<tr>
					<td><%=book.getNo() %></td>
					<td><a href="detail.jsp?bookNo=<%=book.getNo() %>"><%=book.getTitle() %></a></td>
					<td><%=book.getAuthor() %></td>
					<td><%=book.getPublisher() %></td>
					<td><strong class="text-danger"><%=StringUtils.numberTotext(book.getPrice()) %> 원</strong></td>
					<td><%=book.getStock() %> 권</td>
				</tr>		
		<%		
				}
			}
		%>
			</tbody>
		</table>
	
		<%
			// 페이지 네비게이션 표시
			
			// 1. 한화면에 표시 할 페이지번호 갯수 결정하기
			int pages = 5;
			
			// 2. 전체 책 갯수를 조회한다.
			int totalRows = bookDao.getTotalRows();
		
			// 3. 전체 페이지 갯수를 계산한다.
			int totalPages = (int) Math.ceil((double) totalRows/rows);
			
			// 4. 총 블록 갯수를 계산하기
			int totalPageBlocks = (int) Math.ceil((double) totalPages/pages);
			
			// 5. 현재 페이지블록을 계산하기
			int currentPageBlock = (int) Math.ceil((double) currentPage/pages);
			
			// 6. 현재 페이지블록에 맞는 시작페이지번호와 끝페이지번호를 계산하기
			int beginPage = (currentPageBlock -1)*pages + 1;
			int endPage = currentPageBlock == totalPageBlocks ? totalPages : currentPageBlock*pages;
		%>
		
		
		<div aria-label="navigation">
			<ul class="pagination justify-content-center">
				<li class="page-item <%=currentPage <= 1 ? "disabled" : "" %>">
					<a class="page-link" href="list.jsp?page=<%=currentPage - 1 %>">이전</a>
				</li>
		<%
			for (int number = beginPage; number <= endPage; number++) {
		%>
				<li class="page-item <%=currentPage == number ? "active" : "" %>">
					<a class="page-link" href="list.jsp?page=<%=number %>"><%=number %></a>
				</li>
		<%
			}
		%>
				<li class="page-item <%=currentPage >= totalPages ? "disabled" : "" %>">
					<a class="page-link"href="list.jsp?page=<%=currentPage + 1 %>">다음</a></li>
			</ul>
		</div>
		
	</div>
</body>
</html>