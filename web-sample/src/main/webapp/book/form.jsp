<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<title>신규 도서 등록</title>
</head>
<body>
	<div class="container py-5">
		<h1>신규 도서 등록 폼</h1>
	
		<p>도서 정보를 입력하고, 등록하세요.</p>
		<!-- 
			method="post"
				폼의 입력값은 요청 메세지의 바디부에 포함되어서 서버로 전달된다.
			action="register.jsp"
				폼의 입력값은 register.jsp로 제출되고, register.jsp에서 도서등록 요청을 처리한다.
		 -->
		<form class="bg-light border p-3" method="post" action="register.jsp">
			<div class="mb-3">
				<label class="form-label">제목</label>
				<input type="text" class="form-control" name="title" />
			</div>
			<div class="mb-3">
				<label class="form-label">저자</label>
				<input type="text" class="form-control" name="author" />
			</div>
			<div class="mb-3">
				<label class="form-label">출판사</label>
				<select class="form-select" name="publisher">
					<option value="" selected="selected" disabled="disabled"> 출판사를 선택하세요</option>
					<option value="한빛미디어"> 한빛미디어</option>
					<option value="제이펍"> 제이펍</option>
					<option value="위키북스"> 위키북스</option>
					<option value="길벗"> 길벗</option>
					<option value="에이콘출판사"> 에이콘출판사</option>
					<option value="이지스퍼블리싱"> 이지스퍼블리싱</option>
					<option value="인사이트"> 인사이트</option>
					<option value="생능출판사"> 생능출판사</option>
				</select>
			</div>
			<div class="mb-3">
				<label class="form-label">가격</label>
				<input type="number" class="form-control" name="price" min="0" />
			</div>
			<div class="mb-3">
				<label class="form-label">할인가격</label>
				<input type="number" class="form-control" name="discountPrice" min="0" />
			</div>
			<div class="mb-3">
				<label class="form-label">등록 수량</label>
				<input type="number" class="form-control" name="stock" value="10" min="1" step="1" max=100 />
			</div>
			<div class="text-end">
				<a href="list.jsp" class="btn btn-secondary">취소</a>
				<button type="submit" class="btn btn-primary">등록</button>
			</div>
		</form>
	</div>
</body>
</html>