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
	<h1>jQuery 이벤트</h1>
	
	<div class="mb-3">
		<button class="btn btn-primary" id="btn-add">버튼 추가하기</button>
	</div>
	<div id="button-box">
		<button class="btn btn-primary btn-sm">버튼</button>
	</div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	$("#btn-add").click(function(){
		var htmlContent = ' <button class="btn btn-outline-primary btn-sm">버튼</button>';
		
		// .append(html컨텐츠)는 선택된 엘리먼트안에 html 컨텐츠를 추가한다.
		$("#button-box").append(htmlContent);
	});

	
	/*
		<div id="button-box"></div> 엘리먼트에 현재 존재하거나, 미래에 추가될 버튼에서 클릭이벤트가 발생했을 때 실행할 이벤트 핸들러 등록하기
		
		// <div id="button-box"></div> 엘리먼트안에 현재 존재하는 버튼에만 이벤트 핸들러 함수가 등록된다.
		$('#button-box button').click(function(){
			alert("버튼이 클릭되었습니다.");
		});
		
		// #button-box 엘리먼트 안에 현재 존재하거나 미래에 추가되는 button엘리먼트에서 click 이벤트가 발생했을 때 실행할 이벤트 핸들러 등록하기
		$("#button-box").on("click", "button", function(){
			
		})
	*/
	
	// <div id="button-box"></div> 엘리먼트에 현재 존재하거나, 미래에 추가될 버튼에서 클릭이벤트가 발생했을 때 실행할 이벤트 핸들러 등록하기
	$("#button-box").on('click', 'button', function(){
		alert("버튼이 클릭되었습니다.");
	});
</script>
</body>
</html>