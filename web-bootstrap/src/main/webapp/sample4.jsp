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
	<div class="row">
		<div class="col-12">헤더부</div>
	</div>
	<div class="row">
		<div class="col-12">
			<h1 class="fs-3">테이블 연습</h1>
			<table class="table table-striped">
				<colgroup>
					<col width="15%">
					<col width="*">
					<col width="15%">
					<col width="15%">
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>저자</th>
						<th>가격</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>100</td>
						<td>이것이 자바다</td>
						<td>홍길동</td>
						<td>35,00</td>
					</tr>
					<tr>
						<td>100</td>
						<td>이것이 자바다</td>
						<td>홍길동</td>
						<td>35,00</td>
					</tr>
					<tr>
						<td>100</td>
						<td>이것이 자바다</td>
						<td>홍길동</td>
						<td>35,00</td>
					</tr>
					
				</tbody>
			</table>
		</div>
	</div>
	<div class="row">
		<div class="col-12">
			<h3 class="fs-3">리스트 그룹</h3>
			<ul class="list-group">
				<li class="list-group-item">관리부</li>
				<li class="list-group-item active">경리부</li>
				<li class="list-group-item">총무부</li>
				<li class="list-group-item">인사부</li>
				<li class="list-group-item">연구소</li>
			</ul>
		</div>
		<div class="col-12">
			<h3 class="fs-3">리스트 그룹</h3>
			<ul class="list-group">
				<li class="list-group-item d-flex justify-content-between align-items-center">
              	 받은 편지함
               <span class="badge bg-primary rounded-pill">12</span>
	            </li>
	            <li class="list-group-item d-flex justify-content-between align-items-center">
	               중요 편지함
	               <span class="badge bg-primary rounded-pill">10</span>
	            </li>
	            <li class="list-group-item d-flex justify-content-between align-items-center">
	               스팸
	               <span class="badge bg-primary rounded-pill">20</span>
	            </li>
	            <li class="list-group-item d-flex justify-content-between align-items-center">
	               휴지통
	               <span class="badge bg-primary rounded-pill">1,154</span>
	            </li>
			</ul>
		</div>
		<div class="col-12">
			<h3>부서 목록</h3>
			<div class="list-group">
				<a href="" class="list-group-item list-group-item-active">인사부</a>
				<a href="" class="list-group-item list-group-item-active action">경리부</a>
				<a href="" class="list-group-item list-group-item-active">총무부</a>
				<a href="" class="list-group-item list-group-item-active">관리부</a>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-12">푸터부</div>
	</div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>