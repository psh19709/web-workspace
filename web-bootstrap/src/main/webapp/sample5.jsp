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
		<div class="col-4">
			<div class="card">
				<div class="card-header">카드 헤더</div>			
				<div class="card-body">
					<h4 class="card-title">카드 제목</h4>
					<p class="card-text">카드 내용입니다.</p>
				</div>			
			</div>
		</div>
		<div class="col-4">
			<div class="card">
				<div class="card-header">카드 헤더</div>			
				<div class="card-body">
					<h4 class="card-title">카드 제목</h4>
					<p class="card-text">카드 내용입니다.</p>
				</div>			
			</div>
		</div>
		<div class="col-4">
			<div class="card">
				<div class="card-header">카드 헤더</div>			
				<div class="card-body">
					<h4 class="card-title">카드 제목</h4>
					<p class="card-text">카드 내용입니다.</p>
				</div>			
			</div>
		</div>
	</div>
	<div class="row mb-3">
		<div class="row mb-3">
			<div class="col-6">
				<div class="card">
					<div class="card-header">부서목록</div>
					<div class="card-body">
						<ul class="list-group">
							<li class="list-group-item">인사부</li>
							<li class="list-group-item active">인사부</li>
							<li class="list-group-item">인사부</li>
							<li class="list-group-item">인사부</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="col-6">
			<div class="card">
				<div class="card-header">오늘 매출 현황</div>
				<table class="table">
					<thead>
						<tr>
							<th>순위</th>
							<th>종류</th>
							<th>매출액</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>담배류</td>
							<td>2,000,000원 </td>
						</tr>
						<tr>
							<td>2</td>
							<td>음료류</td>
							<td>1,600,000원 </td>
						</tr>
						<tr>
							<td>3</td>
							<td>도시락류</td>
							<td>900,000원 </td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>