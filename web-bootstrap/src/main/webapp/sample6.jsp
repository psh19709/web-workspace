<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>웹 애플리케이션</title>
</head>
<body>
<div class="container">
	<div class="row mb-3">
		<div class="col-12">
		<h3>입력폼</h3>
		<form class="row g-3 pb-3 border bg-light">
			<div class="col-6">
				<label class="form-label">주소</label>
				<input type="text" class="form-control" name="addr">
			</div>
			<div class="col-6">
				<label class="form-label">주소</label>
				<input type="text" class="form-control" name="addr">
			</div>
		</form>
		</div>
	</div>

	<div class="row mb-3">
		<div class="col-12">
			<h3>입력폼</h3>
			<form class="border p-3 bg-light">
				<div class="row mb-3">
					<label class="col-1 col-form-label">주소</label>
					<div class="col-5">
						<input type="text" class="form-control" name="addr1" />
					</div>
					<label class="col-1 col-form-label">주소</label>
					<div class="col-5">
						<input type="text" class="form-control" name="addr1" />
					</div>
					<label class="col-1 col-form-label">주소</label>
					<div class="col-11">
						<input type="text" class="form-control" name="addr1" />
					</div>
				</div>
			</form>
		</div>
	</div>

	<div class="row mb-3">
		<div class="col-12">
			<h3>입력폼</h3>
			<form class="border p-3 bg-light" method="post" action="register.jsp">
				<div class="mb-3">
					<label class="form-label">아이디</label>
					<input type="text" class="form-control" name="id" />
				</div>
				<div class="mb-3">
					<label class="form-label">비밀번호</label>
					<input type="text" class="form-control" name="password" />
				</div>
				<div class="mb-3">
					<label class="form-label">이름</label>
					<input type="text" class="form-control" name="name" />
				</div>
				<div class="mb-3">
					<label class="form-label">이메일</label>
					<input type="text" class="form-control" name="email" />
				</div>
				<div class="text-end">
					<a href="home.jsp" class="btn btn-secondary">취소</a>
					<button type="submit" class="btn btn-primary">등록</button>
				</div>
			</form>
		</div>
	</div>
	
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>