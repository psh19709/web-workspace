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
<title>도서정보 변경</title>
</head>
<body>
	<div class="container py-5">
		<h1>도서 정보 수정폼</h1>
		<!-- 
			// 1. detail.jsp에서는 modifyform.jsp?bookNo=책번호 이 URL을 서버로 보내서 도서 수정폼 화면을 요청한다.
			// 2. 톰캣이 이 요청메세지를 분석해서 URL의 쿼리스트링값을 HttpServletRequest객체의 요청파라미터값을 저장한다.
			// 3. 톰캣은 폼입력값이 저장된 HttpServletRequet객체, HttpServletResponse객체를 modifyform.jsp의 
			//		_jspService(request, response)를 실행할 때 전달한다.
			// 4. modifyform.jsp에서는 요청파라미터값을 조회한다.
		 -->
		<%
			// 요청파라미터 값을 조회한다.
			int bookNo = Integer.parseInt(request.getParameter("bookNo"));
		
			// 책번호에 해당하는 책정보를 조회한다.
			BookDao bookDao = new BookDao();
			Book book = bookDao.getBookByNo(bookNo);
			
		%>
	
		<p>도서 정보를 수정하고, 업데이트 하세요</p>
		<form class="bg-light border p-3" method="post" action="update.jsp">
		<!-- 
			hidden 필드
				- 화면에 표시되지 않는 폼 입력요소다.
				- 화면에 표시할 필요는 없지만 폼 입력값을 서버로 제출할 때 포함되어야 하는 값을 hidden 필드로 정의한다.
		 -->
			<input type="hidden" name="no" value="<%=book.getNo() %>" />
			<div class="mb-3">
				<label class="form-label">제목</label>
				<input type="text" class="form-control" name="title" value="<%=book.getTitle() %>" />
			</div>
			<div class="mb-3">
				<label class="form-label">저자</label>
				<input type="text" class="form-control" name="author" value="<%=book.getAuthor() %>" />
			</div>
			<div class="mb-3">
				<label class="form-label">출판사</label>
				<select class="form-select" name="publisher">
					<option value="" selected="selected" disabled="disabled"> 출판사를 선택하세요</option>
					<option value="한빛미디어" <%="한빛미디어".equals(book.getPublisher()) ? "selected" : "" %>> 한빛미디어</option>
					<option value="제이펍" <%="제이펍".equals(book.getPublisher()) ? "selected" : "" %>> 제이펍</option>
					<option value="위키북스" <%="위키북스".equals(book.getPublisher()) ? "selected" : "" %>> 위키북스</option>
					<option value="길벗" <%="길벗".equals(book.getPublisher()) ? "selected" : "" %>> 길벗</option>
					<option value="에이콘출판사" <%="에이콘출판사".equals(book.getPublisher()) ? "selected" : "" %>> 에이콘출판사</option>
					<option value="이지스퍼블리싱" <%="이지스퍼블리싱".equals(book.getPublisher()) ? "selected" : "" %>> 이지스퍼블리싱</option>
					<option value="인사이트" <%="인사이트".equals(book.getPublisher()) ? "selected" : "" %>> 인사이트</option>
					<option value="생능출판사" <%="생능출판사".equals(book.getPublisher()) ? "selected" : "" %>> 생능출판사</option>
				</select>
			</div>
			<div class="mb-3">
				<label class="form-label">가격</label>
				<input type="number" class="form-control" name="price" min="0"  value="<%=book.getPrice() %>"/>
			</div>
			<div class="mb-3">
				<label class="form-label">할인가격</label>
				<input type="number" class="form-control" name="discountPrice" min="0" value="<%= book.getDiscountPrice() %>"/>
			</div>
			<div class="mb-3">
				<label class="form-label">수량</label>
				<input type="number" class="form-control" name="stock" value="<%=book.getStock() %>" min="1" step="1" max=100 />
			</div>
			<div class="text-end">
				<a href="detail.jsp?bookNo=1000" class="btn btn-secondary">취소</a>
				<button type="submit" class="btn btn-primary">수정</button>
			</div>
		</form>
	</div>
</body>
</html>