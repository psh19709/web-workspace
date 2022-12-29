<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>웹 애플리케이션</title>
</head>
<body>
<div class="container">
	<h1>jQuery DOM 조작</h1>
	
	<table class="table">
		<thead>
			<tr>
				<th><input type="checkbox" id="checkbox-all" checked></th>
				<th>제목</th>
				<th>가격</th>
				<th>수량</th>
				<th>구매가격</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="checkbox" name="bookNo" value="100" checked/></td>
				<td>이것이 자바다</td>
				<td><strong class="text-danger" id="book-price">35,000</strong>원</td>
				<td><input type="number" class="form-control w-50" id="book-amount" name="amount" value="1"/></td>
				<td><strong class="text-danger" id="book-order-price">35,000</strong>원</td>
			</tr>
		</tbody>
	</table>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#book-amount").on('change keyup',function(){
		// 가격, 현재수량
		var price = $("#book-price").text().replace(",", "");	// <strong>35,000</strong> 태그사이의 컨텐츠 조회
		var amount = $("#book-amount").val();					// <input type="number" value="1">입력요소의 값 조회
		// 구매가격 계산
		var orderPrice = price*amount;
		
		// new Number(숫자).toLocaleString() : 숫자를 3자리마다 ","가 포함된 텍스트로 반환한다.
		var currentOrderPrice = new Number(orderPrice).toLocaleString();
		
		// 구매가격을 태그의 컨텐츠로 변경
		$("#book-order-price").text(currentOrderPrice);				// <strong>35,000</strong> 태그 사이의 컨텐츠 변경
	});	
});
</script>
</body>
</html>