<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 함수</title>
</head>
<body>
	<h1>자바스크립트함수</h1>
	
	<script type="text/javascript">
		/*
			함수 선언식과 표현식
			
			함수 성언식
				function 함수명(매개함수, 매개변수){
					수행문;
				}
				* 이름있는 함수를 선언한다.
			함수 표현식
				var 변수명 = function(매개변수, 매개변수) {
				
				}
				* 이름이 없는 함수를 정의하고, 그 함수를 변숭 대입시킨다.
		*/
		fn1(20, 40);
		// fn2(30, 60);		// 오류발생, 함수표현식으로 정의된 함수는 해당 표현식 이후 수행문에서만 사용가능하다.
		
		// 함수 선언식으로 함수 정의
		function fn1(x, y){
					console.log("fn1이 실행됨");
					console.log("fn1의 매개변수값", x, y);
				};
		// 함수 표현식으로 함수 정의
		var fn2 = function(x, y){
					console.log("이름이 없는 함수가 실행됨");
					console.log("이름없는 함수의 매개변수 값", x, y);
		}
		
		// 함수 실행
		fn1(10, 20);		// 함수이름이 fn1인 함수를 실행한다.
		fn2(100, 200);		// fn2변수에 대입되어 있는 함수를 실행한다.
		
		
	</script>
</body>
</html>