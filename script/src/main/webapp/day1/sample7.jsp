<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트의 반복문</title>
</head>
<body>
	<h1>자바스크립드의 for문</h1>
	
	<!-- 
		자바스크립트의 반복문
			for(초기식; 조건식; 증감식) {
			수행문;
			}
			
			while(조건식) {
				수행문;
			}
	 -->
	
	<div id="box-buttons"></div>
	
	<script type="text/javascript">
		// 1 ~ 10까지 출력하기
		for(var num = 1; num <= 10; num++) {
			console.log("num -> ", num); 
		}
		
		// id속성값이 box-buttons인 엘리먼트를 조회하고, 그 엘리먼트에 버튼을 5개 추가하기
		// 1. button태그를 담는 변수를 선언하고, 초기화한다.
		var buttons = "";
		// 2. for문을 사용해서 <button>버튼</button> 태그를 buttons에 계속 추가한다.
		for(var num = 1; num <= 5; num++){
			buttons += "<button>버튼</button>";			
		}
		// buttons = <button>버튼</button> <button>버튼</button> <button>버튼</button> <button>버튼</button> <button>버튼</button>
		// 3. 아이디 속성값이 box-buttons인 엘리먼트를 찾아서 divElement에 대입한다.
		var divElement = document.querySelector("#box-buttons");
		// 4. divElement의 innerHTML 프로퍼티에 buttons 변수에 저장된 버튼태그를 추가한다.
		// innerHTML 태그안에 다른 태그를 넣고 싶을 때 사용한다..
		divElement.innerHTML = buttons;
		
		
	</script>	

</body>
</html>