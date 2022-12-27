<%@page import="java.util.List"%>
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
			<h3>탭</h3>
			<ul class="nav nav-tabs">
				<li class="nav-item">
					<a class="nav-link active"	 data-bs-toggle="tab" href="#menu-1">내 일정</a>
				</li>
				<li class="nav-item">
					<a class="nav-link"	 data-bs-toggle="tab" href="#menu-2">부서 일정</a>
				</li>
				<li class="nav-item">
					<a class="nav-link"	 data-bs-toggle="tab" href="#menu-3">타부서 일정</a>
				</li>
			</ul>	
			<div class="tab-content">
				<div class="tab-pane container active" id="menu-1">
					<p>본인 일정을 확인하세요</p>
					<table class="table">
						<thead>
							<tr>
								<th>순번</th>
								<th>제목</th>
								<th>우선순위</th>
								<th>처리기한</th>
								<th>처리상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>프로젝트 회의</td>
								<td>낮음</td>
								<td>2022년 12월 1일</td>
								<td>처리중</td>
							</tr>
							<tr>
								<td>1</td>
								<td>프로젝트 회의</td>
								<td>낮음</td>
								<td>2022년 12월 1일</td>
								<td>처리중</td>
							</tr>
							<tr>
								<td>1</td>
								<td>프로젝트 회의</td>
								<td>낮음</td>
								<td>2022년 12월 1일</td>
								<td>처리중</td>
							</tr>
							<tr>
								<td>1</td>
								<td>프로젝트 회의</td>
								<td>낮음</td>
								<td>2022년 12월 1일</td>
								<td>처리중</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="tab-pane container fade" id="menu-2">
					<p>소속부서 일정을 확인하세요</p>
				</div>
				<div class="tab-pane container fade" id="menu-3">
					<p>다른 부서의 일정을 확인하세요</p>
				</div>
			</div>		
		</div>
	</div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>