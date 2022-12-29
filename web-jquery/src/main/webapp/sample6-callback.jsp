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
   <h1>콜백 함수의 사용</h1>
   
   <div>
   		<button class="btn btn-primary btn-sm" id="btn-1">버튼1</button>
   		<button class="btn btn-primary btn-sm" id="btn-2">버튼2</button>
   		<button class="btn btn-primary btn-sm" id="btn-3">버튼3</button>
   </div>
   
   <div>
   		<button class="btn btn-primary btn-sm" id="btn-4">버튼4</button>
   		<button class="btn btn-primary btn-sm" id="btn-5">버튼5</button>
   		<button class="btn btn-primary btn-sm" id="btn-6">버튼6</button>
   </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	// 콜백 함수
	// - 콜백함수는 운영체제, 가상머신, 브라우저기(실행할 조건이 갖춰졌을 때) 자동으로 실행하는 메소드다.
	// - 콜백함수는 이벤트핸들러와 같이 특정 이벤트에 바인딩 시켜서 해당 이벤트가 발생했을 때 브라우저가 실행시키는 함수가 대표적인 콜백함수다.
	
	/* 이벤트처리에서 콜백함수의 사용
			엘리먼트.addEventListener("이벤트이름", 콜백함수)
			* 해당 엘리먼트에서 지정된 이벤트가 발생하면 실행될 콜백함수를 등록하는 것
	
		var element = document.querySelector("#btn-delete");
		element.addEventListener('click', function() {
			수행문;
			수행문;
		})
	*/
	
	// .addEventListener() 메소드로 이벤트 핸들러 등록하기
	var el1 = document.getElementById("btn-1");
	var el2 = document.getElementById("btn-2");
	var el3 = document.getElementById("btn-3");
	
	// 이벤트 발생시 수행할 작업을 익명함수로 구현해서 엘리먼트에 바인딩 시킨다.
	el1.addEventListener('click', function(){
		alert("버튼1 클림됨");		
	});
	el2.addEventListener('click', function(){
		alert("버튼2 클림됨");		
	});
	el3.addEventListener('click', function(){
		alert("버튼3 클림됨");		
	});
	
	//jQuery의 .on() 메소드로 이벤트 핸들러 등록하기
	//var jQueryObject = $("#btn-4");
	//jQueryObject.on("click", function(){})
	
	$("#btn-4").on('click', function(){
		alert("버튼4 클림됨");		
	});
	$("#btn-5").on('click', function(){
		alert("버튼5 클림됨");		
	});
	$("#btn-6").on('click', function(){
		alert("버튼6 클림됨");		
	});
	
	
	
</script>
</body>
</html>