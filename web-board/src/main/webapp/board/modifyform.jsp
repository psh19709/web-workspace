<%@page import="com.sample.util.StringUtils"%>
<%@page import="com.sample.vo.Board"%>
<%@page import="com.sample.dao.BoardDao"%>
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
	textarea {
		resize: none;
	}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp">
	<jsp:param name="menu" value="board"/>
</jsp:include>
<div class="container my-3">
	<h1 class="mb-3 fs-4 border p-2 bg-light">게시글 수정폼</h1>
	<%
		int boardNo = StringUtils.stringToInt(request.getParameter("no"));
	
		BoardDao boardDao = new BoardDao();
		Board board = boardDao.getBoardByNo(boardNo);
	%>
	<p>제목, 작성자, 내용을 입력해서 게시글을 수정하세요</p>
	<form class="bg-light border p-3" method="post" action="update.jsp">
		<input type="hidden" name="no" value="<%=board.getNo()%>" />
		<div class="mb-3">
			<label class="form-label">제목</label>
			<input type="text" class="form-control" name="title" value="<%=board.getTitle() %>" />
		</div>
		<div class="mb-3">
			<label class="form-label">작성자</label>
			<input type="text" class="form-control" name="writer" value="<%=board.getWriter() %>"/>
		</div>
		<div class="mb-3">
			<label class="form-label">내용</label>
			<textarea class="form-control" rows="6" name="content"><%=board.getContent() %></textarea>
		</div>
		<div class="text-end">
			<a href="list.jsp" class="btn btn-secondary">취소</a>
			<button type="submit" class="btn btn-primary">수정</button>
		</div>
	</form>
</div>
</body>
</html>