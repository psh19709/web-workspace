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
	<h1>jQuery 선택자 연습</h1>
	<div id="box-1" class="border mb-3 p-3">
		<h3>첫번째 박스</h3>
		<p>첫번째 박스의 p입니다.</p>
		<div class="border p-3">
			<p class="text-primary">div 배부에 있는 p입니다.</p>
			<p>div 배부에 있는 p입니다.</p>
			<p>div 배부에 있는 p입니다.</p>
			<p>div 배부에 있는 p입니다.</p>
		</div>
	</div>
	
	<div id="box-2" class="border mb-3 p-3">
		<h3>두번째 박스</h3>
		<p>두번째 박스의 p입니다.</p>
		<div class="border p-3">
			<p class="text-primary">div 배부에 있는 p입니다.</p>
			<p class="text-primary">div 배부에 있는 p입니다.</p>
			<p>div 배부에 있는 p입니다.</p>
			<p>div 배부에 있는 p입니다.</p>
		</div>
	</div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	// 첫번째 엘리먼트 선택
	// $("p:first").css("background-color", "lightpink");
	// 첫번째 엘리먼트 선택
	// $("#box-1 div p:first").css("background-color", "lightgray");
	// 마지막번째 엘리먼트 선택
	// $("p:last").css("background-color", "lightpink");
	// 마지막 엘리먼트 선택
	// $("#box-1 div p:last").css("background-color", "lightgray");
	
	// 짝수번째 엘리먼트 선택
	// $("#box-1 div p:even").css("background-color", "lightpink");
	// 홀수번째 엘리먼트 선택
	// $("#box-1 div p:odd").css("background-color", "lightgray");
	
	// 부모엘리먼트를 기준으로 첫번째 자식 엘리먼트 선택하기
	// $("p:first-child").css("border", "2px solid red");
	// 부모엘리먼트를 기준으로 마지막번째 자식 엘리먼트 선택하기
	// $("p:last-child").css("border", "2px solid red");
	// 부모엘리먼트를 기준으로  n번재 자식 엘리먼트 선택하기
	$("p:nth-child(2)").css("background-color", "lightpink");
	$(".container > div > p:nth-child(2)").css("border", "5px solid blue");
	$(".container > div > div > p:nth-child(2)").css("border", "5px solid red");
</script>
</body>
</html>