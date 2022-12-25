<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
<title>application</title>
</head>
<body>
<jsp:include page="common/navbar.jsp">
	<jsp:param name="menu" value="home"/>
</jsp:include>
<div class="container my-3">
	<div class="row mb-3">
		<div class="col">
			<div class="border p-3 bg-light">
				<h1 class="mb-4">샘플 애플리케이션 입니다.</h1>
				<p class="">회원가입, 로그인, 로그아웃 기능이 지원되는 웹 애플리케이션입니다.</p>
				<p class="">도서 목록, 도서 상세정보, 페이징처리, 검색 기능이 지원되는 웹 애플리케이션입니다.</p>
				<p class="">장바구니, 주문, 주문내역조회, 리뷰 작성 기능이 지원되는 웹 애플리케이션입니다.</p>
				
				<div>
					<a href="user/loginform.jsp" class="btn btn-primary">로그인</a>
					<a href="user/registerform.jsp" class="btn btn-primary">회원가입</a>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>