<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트의 변수</title>
</head>
<body>
	<h1>자바스크립트의 변수</h1>
	<script type="text/javascript">
		// 변수를 선언
		// 		var 변수명;
		//		var 변수명 = 값;
		//		var 변수명1, 변수명2, 변수명3;
		//		var 변수명1 = 값1, 변수명2 = 값2, 변수명3 = 값3;
		
		// 1. 변수만 선언함
		var num0;
		// 2. 변수를 선언하고, 초기화 하였음
		var num1 = 20;
		// 3. 한번에 여러 개의 변수를 선언함
		var num2, num3, num4;
		// 4. 한번에 여러 개의 변수를 선언하고, 각각 다른 갑승로 초기화 하였음
		var str1 = "김유신", str2 = "강감찬", num5 = 100;
		// 5. 한번에 여러 개의 변수를 선언하고, 같은 값으로 초기화하기
		var num6 = num7= num8 = 200;
		
		console.log("num0", num0);		// undefined	<--- 초기화되지 않은 변수에는 undefined가 저장된다.
		console.log("num1", num1);		// 20
		console.log("num2", num2);		// undefined	<--- 초기화되지 않은 변수에는 undefined가 저장된다.
		console.log("num3", num3);		// undefined	<--- 초기화되지 않은 변수에는 undefined가 저장된다.
		console.log("num4", num4);		// undefined	<--- 초기화되지 않은 변수에는 undefined가 저장된다.
		console.log("str1", str1);		// 김유신
		console.log("str2", str2);		// 강감찬
		console.log("num5", num5);		// 100
		console.log("num6", num6);		// 200
		console.log("num7", num7);		// 200
		console.log("num8", num8);		// 200
		
	</script>

</body>
</html>