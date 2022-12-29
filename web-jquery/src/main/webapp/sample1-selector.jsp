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
	<p>jQuery의 기본 선택자를 연습해보세요</p>
	
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
$(function () {
	// 태그 선택자
	// $("h1").css("color","red");
	// $("h3").css("color","green");
	//$("p").css("color","blue");
	
	// 클래스 선태갖
	// $(".text-primary").addClass("bg-danger");
	
	// 아이디 선택자
	// $("#box-1").css("background-color", "lightpink");
	// $("#box-2").css("background-color", "lightgreen");
	
	// $("h1, h3").css("color", 'red');
	//$("h1, h3, .text-primary").css("background-color", "lightpink");
	
	// 자손 선택자
	//$("#box-1 p").css("background-color", "lightpink");
	
	// 자식 선택자
	//$("#box-2 > p").css("background-color", "lightpink");
	
	// 자식 선택자
	//$("#box-2 > div > p").css("background-color", "lightgray");
	
	// 형제 선택자(+ 바로 다음 동생 선택자)
	//$("h1 + div").css("background-color", "lightgray");
	
	// 형제 선택자(~ 동생들 선택자)
	$("h1 ~ div").css("background-color", "lightgray");
});
</script>
</body>
</html>