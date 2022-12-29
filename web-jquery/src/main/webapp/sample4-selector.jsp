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
	
	<div id="box-1" class="border p-3 mb-3">
		<h3>기타 선택자</h3>
		<div class="border p-3 mb-3">
			<p>아래의 메뉴를 확인하고 주문해주세요</p>
		</div>
		<div class="border p-3 mb-3">
			<h4>커피</h4>
			<p>커피종류가 다양하게 준비되어 있습니다.</p>
			<ul>
				<li>아메리카노</li>
				<li>바닐라 라떼</li>
				<li>카페 모카</li>
				<li>콜드브루</li>
			</ul>
		</div>
		<div class="border p-3 mb-3">
			<h4>케이크</h4>
			<p>맛있는 케이크가 준비되어 있습니다.</p>
			<dl>
				<dt>케이크</dt><dd>치즈케이크</dd><dd>딸기케이크</dd><dd>생크림 케이크</dd>
				<dd>당근케이크</dd><dd>초코케이크</dd><dd>티라미수</dd>
			</dl>
		</div>
	</div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	// 지정된 텍스트를 포함하고 있는 엘리먼트 선택하기
	$("li:contains('라떼')").css("background-color", "lightpink");
	// 지정된 선택자에 해당하는 자손을 포함하고 있는 엘리먼트 선택하기
	$("#box-1 div:has('dl')").css("background-color", "lightgray");
	// 지정된 선택자에 해당하지 않는 엘리먼트 선택하기
	//$("#box-1 div:not(:last-child)").css("background-color", "lightblue");
	$("#box-1 div:not(:has('dl'))").css("background-color", "lightblue");
</script>
</body>
</html>