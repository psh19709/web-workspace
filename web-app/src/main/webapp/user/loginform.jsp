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
		<div class="col-12">
			<h1 class="border bg-light p-2 fs-5">로그인</h1>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col-12">
			<form id="form-login" class="border bg-light p-3" method="post" action="login.jsp">
				<div class="mb-3">
					<label class="form-label">아이디</label>
					<input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요."/>
				</div>
				<div class="mb-3">
					<label class="form-label">비밀번호</label>
					<input type="password" class="form-control" name="password" placeholder="비밀번호를 입력하세요." />
				</div>
				<div class="text-end">
					<button type="submit" class="btn btn-primary">로그인</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#form-login").submit(function() {
		let userId = $(":input[name=id]").val();
		let userPassword = $(":input[name=password]").val()
		if (userId === "") {
			alert("아이디는 필수입력값입니다.");
			return false;
		}
		if (userPassword === "") {
			alert("비밀번호는 필수입력값입니다.");
			return false;
		}
		
		return true;
	});
})
</script>
</body>
</html>