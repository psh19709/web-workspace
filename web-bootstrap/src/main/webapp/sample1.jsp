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
		<div class="col-12 bg-dark text-white fw-bold">헤더부</div>
	</div>
	<div class="row mb-3">
		<div class="col-3 bg-danger text-white fw-bold">
			<h3>일정관리 메뉴</h3>
			<div class="list-group">
				<a href="" class="list-group-item list-group-item-action">대기 일정</a>
				<a href="" class="list-group-item list-group-item-action">진행 일정</a>
				<a href="" class="list-group-item list-group-item-action">등록 현황 </a>
			</div>
		</div>
		<div class="col-9 bg-success text-white fw-bold">
			<h1>일정 현황</h1>
			<p>오늘 일정을 확인하세요.</p>
			<table class="table">
				<thead>
					<tr>
						<th>순번</th>
						<th>제목</th>
						<th>우선순위</th>
						<th>예정일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>100</th>
						<th>프로젝트 주제 선정</th>
						<th>매우높음</th>
						<th>2022년 11월 28일</th>
					</tr>
					<tr>
						<th>100</th>
						<th>프로젝트 주제 선정</th>
						<th>매우높음</th>
						<th>2022년 11월 28일</th>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="row">
		<div class="col-12 bg-secondary text-white fw-bold">푸터부</div>
	</div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>