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
<jsp:include page="../common/navbar.jsp">
	<jsp:param name="menu" value="user"/>
</jsp:include>
<div class="container my-3">
	<div class="row mb-3">
		<div class="col">
			<div class="border p-3 bg-light">
				<h1 class="mb-4">회원가입 완료</h1>
				<p class="">회원가입이 완료되었습니다.</p>
				<p class="">로그인 후 다양한 서비스를 사용해 보시기 바랍니다..</p>
				
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