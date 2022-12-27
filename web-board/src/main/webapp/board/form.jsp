<%@page import="com.sample.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// HttpSession 객체에 저장된 인증된 사용자정보를 조회한다
	User user = (User) session.getAttribute("loginedUser");
	// 인증된 사용자 정보가 존재하지 않으면, 로그인 폼을 재요청하게 한다.
	if(user == null) {
		response.sendRedirect("../user/loginform.jsp?error=deny");
		return;
	}
%>
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
	<h1 class="mb-3 fs-4 border p-2 bg-light">게시글 등록폼</h1>
	
	<p>제목, 작성자, 내용을 입력해서 새 게시글을 등록하세요</p>
	<form class="bg-light border p-3" method="post" action="register.jsp" enctype="multipart/form-data">
		<div class="mb-3">
			<label class="form-label">제목</label>
			<input type="text" class="form-control" name="title" />
		</div>
		<div class="mb-3">
			<label class="form-label">첨부파일</label>
			<input type="file" class="form-control" name="attachedFile" />
		</div>
		<div class="mb-3">
			<label class="form-label">내용</label>
			<textarea class="form-control" rows="6" name="content"></textarea>
		</div>
		<div class="text-end">
			<a href="list.jsp" class="btn btn-secondary">취소</a>
			<button type="submit" class="btn btn-primary">등록</button>
		</div>
	</form>
</div>
</body>
</html>