<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>엘리먼트 컨텐츠 조회/변경</title>
</head>
<body>
	<h1>엘리먼트 컨텐츠 조회/변경</h1>
	
	<p>메뉴를 확인하세요</p>
	
	<h3>음료 메뉴목록</h3>
	<ul id="drink-menu">
		<li>아이스 아메이카노</li>
		<li>카페라떼</li>
		<li>쥬스</li>
	</ul>
	
	<h3>케이크 메뉴목록</h3>
	<ul id="cake-menu">
		<li>치즈 케이크</li>
		<li>당근 케이크</li>
		<li>초코 케이크</li>
	</ul>
	
	<div>
		<button onclick="handler1();">텍스트컨텐츠 조회</button>
		<button onclick="handler2();">텍스트컨텐츠 변경</button>
		<button onclick="handler3();">HTML컨텐츠 조회</button>
		<button onclick="handler4();">HTML컨텐츠 삭제</button>
		<button onclick="handler5();">HTML컨텐츠 추가</button>
		<button onclick="handler6();">HTML컨텐츠 변경</button>
	</div>
	
	<script type="text/javascript">
		var el1 = document.querySelector("p");
		var el2 = document.querySelector("#drink-menu");
		
		function handler1() {
			var content = el1.textContent;
			alert(content);
		}
		function handler2() {
			el1.textContent = "메뉴를 꼼꼼히 확인하세요";
		}
		function handler3() {
			var htmlContent = el2.innerHTML;
			alert(htmlContent);
		}
		function handler4() {
			el2.innerHTML = "";		// <ul>태그 내부 HTML 컨텐츠를 삭제한다.
			el2.remove();			// <ul>태그를 삭제한다.
		}
		function handler5() {
			// li 태그의 캣수를 확인해서 
			var collection = document.querySelectorAll("#drink-menu li");
			if(collection.length == 6){
				return;
			}
			
			el2.innerHTML += '<li>코카콜라</li>';
			el2.innerHTML += '<li>펩시콜라</li>';
			el2.innerHTML += '<li>사이다</li>';
		}
		function handler6() {
			var htmlContent = "";
			
			htmlContent += '<li>유기농 당근 쥬스</li>';
			htmlContent += '<li>유기농 딸기 쥬스</li>';
			htmlContent += '<li>유기농 자몽 쥬스</li>';
			htmlContent += '<li>유기농 오렌지 쥬스</li>';

			el2.innerHTML = htmlContent;
		}
	</script>
</body>
</html>