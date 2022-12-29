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
	<h1>jQuery 선택자</h1>
	
	<div id="box-1">
		<p>첫번째 p엘리먼트</p>
		<p>두번째 p엘리먼트</p>
		<p>세번째 p엘리먼트</p>
		<p>네번째 p엘리먼트</p>
		<p>다섯번째 p엘리먼트</p>
	</div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	//$("#box-1 p:eq(0)").css("background-color", "lightpink");
	//$("#box-1 p:eq(1)").css("background-color", "lightgray");
	//$("#box-1 p:eq(2)").css("background-color", "lightgreen");
	//$("#box-1 p:eq(3)").css("background-color", "lightblue");
	//$("#box-1 p:eq(4)").css("background-color", "red");
	
	// 지저된 인덱스번째 이전 엘리먼트 선택하기
	$("#box-1 p:lt(2)").css("background-color", "lightpink");
	// 지저된 인덱스번째 이후 엘리먼트 선택하기
	$("#box-1 p:gt(2)").css("background-color", "lightgray");
</script>
</body>
</html>