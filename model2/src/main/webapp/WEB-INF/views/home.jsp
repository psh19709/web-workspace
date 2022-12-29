<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>웹 애플리케이션</title>
</head>
<body>
<!-- 
	PageContext 객체에 속성을 추가한다. 
	속성명 : "menu"
	속성값 : "home"
-->
<c:set var="menu" value="home" />
<div class="container">
	<div class="row">
		<div class="col-12">
			<%@include file="common/header.jsp" %>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col-12">
			<h1>홈</h1>
		</div>
	</div>
	
	<div class="row mb-3">
		<div class="col-12">
			<a href="list.hta?page=1">1</a>
			<a href="list.hta?page=2">2</a>
			<a href="list.hta?page=3">3</a>
			<a href="list.hta?page=4">4</a>
			<a href="list.hta?page=5">5</a>
		</div>
	</div>
	
	<div class="row mb-3">
		<div class="col-12">
			<p>${message }</p>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col-12">
			<p>
				<span class="badge bg-secondary">${keywords[0] }</span>
				<span class="badge bg-secondary">${keywords[1] }</span>
				<span class="badge bg-secondary">${keywords[2] }</span>
				<span class="badge bg-secondary">${keywords[3] }</span>
			</p>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col-12">
			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>국어점수</th>
						<th>영어점수</th>
						<th>수학점수</th>
						<th>총점</th>
						<th>평균점수</th>
						<th>합격여부</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${student.name }</td>
						<td>${student.kor }</td>
						<td>${student.eng }</td>
						<td>${student.math }</td>
						<td>${student.kor + student.eng + student.math }</td>
						<td>${(student.kor + student.eng + student.math)/3 }</td>
						<td>${(student.kor + student.eng + student.math)/3 >= 60 ? "합격" : "불합격" }</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col-12">
			<table class="table">
				<colgroup>
					<col width="15%">
					<col width="35%">
					<col width="15%">
					<col width="35%">
				</colgroup>
				<tbody>
					<tr>
						<th>상품번호</th><td>${bestGoods.no }</td>
						<th>재고수량</th><td>${bestGoods.stock } 개</td>
					</tr>				
					<tr>
						<th>상품명</th><td>${bestGoods.name }</td>
						<th>제조회사</th><td>${bestGoods.maker }</td>
					</tr>				
					<tr>
						<th>가격</th><td>${bestGoods.price } 원</td>
						<th>할인가격</th><td>${bestGoods.discountPrice } 원</td>
					</tr>				
				</tbody>
			</table>
			<div>
				<a href="cart.hta?no=${bestGoods.no }" class="btn btn-primary btx-sm">장바구니 추가</a>
				<a href="order.hta?no=${bestGoods.no }" class="btn btn-success btx-sm">바로구매</a>
			</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>