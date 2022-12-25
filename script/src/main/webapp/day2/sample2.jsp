<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 함수</title>
</head>
<body>
	<h1>자바스크립트 함수</h1>
	
	<script type="text/javascript">
		/*
			함수
				- 특정 기능을 처리하는 자바스크립트 코드의 묶음
			함수의 구성요소
				- 함수의 선언부
					function 함수명(매개변수명, 매개변수명, 매개변수명, ...)
					* function은 함수를 나타내는 키워드다.
					* 함수명은 다른 함수와 구별되는 식별자다.
					* 매개변수는 변수의 타입은 필요없고, 변수명만 지정하면 된다.
					* 반환타입을 정의하지 않는다. 
						모든 함수는 값을 반환한다.
						return문을 사용해서 값을 반환한다.
						return문이 없는 함수는 undefined를 반환한다.
					
				- 함수의 바디부
					* {}으로 표시된다.
					* {}내에 필요한 수행문을 작성한다.
			* 함수명 작성규칙
				- 영어대소문자, $, _, 숫자 사용가능하다.(숫자로 시작할 수 없다.)
					*함수명이 _(언더바)로 시작하며 보통은 private 함수다. 외부에서 호출하지 않는다.
					예시)
						function $() {...}
						function _get() {...}
		*/
		
		// 매개변수가 없는 함수
		
			function fn1() {
				console.log("fn이 실행됨");	
		}	
		// 매개변수가 있는 함수
			function fn2(a, b, c) {
				console.log("fn2가 실행됨");
				console.log("fn2의 매개변수에 전달된 값", a, b, c);
		}
		
			function fn3(x, y){
				console.log("fn3가 실행됨");
				console.log("fn3의 매개변수에 전달된 값", x, y);
				console.log("fn3의 arguments", arguments);
				
			}
		
		//함수의 호출
		fn1();
		fn1(10, 20, 30);
		
		fn2();
		fn2(10);
		fn2(10, 20);
		fn2(10, 20, 30);
		fn2(10, 20, 30, 40);
		
		fn3('hong', 'kim');
		fn3('hong', 'kim', 'kang', "lee", "ahn");
		
	</script>

</body>
</html>