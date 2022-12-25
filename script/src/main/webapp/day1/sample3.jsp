<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 데이터타입</title>
</head>
<body>

	<h1>자바스크립트의 데이터타입</h1>
	<dl>
		<!-- 
			dt는 변수에 대입하는 값의 종류다
		 -->
		<dt>undefined</dt><dd>변수를 초기화하지 않거나 변수에 undefined값을 대입하면 해당 변수의 데이터타입은 undefined 타입이 된다.</dd>
		<dt>null</dt><dd>참조변수가 객체를 참조하지 않게 하는 값이다. 해당변수의 데이터타입은 Object 타입이 된다.</dd>
		<dt>Boolean</dt><dd>변수에 true/false값을 대입하면, 해당 변수의 데이터타입은 Boolean 타입이 된다.</dd>
		<dt>String</dt><dd>변수에 문자열을 대입하면, 해당 변수의 데이터 타입은 String이 된다.</dd>
		<dt>Number</dt><dd>변수에 정수, 실수를 대입하면 해당 변수의 데이터타입은 Number 타입이 된다.</dd>
		<dt>Object</dt><dd>변수에 null, 배열, 객체 등을 대입하면, 해당 변수의 데이터타입은 Object 타입이 된다.</dd>
	</dl>
	<script type="text/javascript">
		// undefined 타입		
		var a;	// a의 데이터 타입은 undefined이다. a의 값은 undefined이다.

		// Boolean 타입
		var b = true;
		var c = false;
		
		// String 타입
		var d = '안녕하세요';
		var e = "안녕하세요";

		// Number 타입, java의 double 타입과 같은 타입이다.(내부적으로는)
		var f = -100;
		var g = 0;
		var h = 200;
		var i = 3.14;
		
		// undefined과 null의 차이
		// undefined
		// 		undefined는 변수가 가지는 기본값이다. 
		// 		변수를 선언하면 변수의 값은 undefined가 기본값이다.
		//		undefined는 변수에 값을 할당하지 않아도 자동으로 할당되는 값이다.
		// null
		//		변수에 null을 대입할 때만 변수의 값이 null이 된다.
		// * 변수의 값이 undefined다.	---> 변수를 선언하고 값을 할당하지 않았다.
		// * 변수의 값이 null이다.		---> 변수를 선언하고, 의도적으로 그 변수에 null 값을 할당했다.
		// 예시
		/*
			function abc(x, y) {
				console.log(x);	
				console.log(y);	
		}
		
		abc();			// x: undefined, y: undefined
		abc(null);		// x: null, y: null
		abc(1);			// x: 1, y: undefined
		abc(1, 2);		// x: 1, y: 2	
		abc(1, 2, 3);	// x: 1, y: 2
		
		*/
		
		
		conso
	</script>

</body>
</html>