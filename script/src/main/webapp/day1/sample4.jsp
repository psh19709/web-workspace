<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 연산자</title>
</head>
<body>
	<h1>자바스크립트 연산자</h1>
	<script type="text/javascript">
		// 산술연산자
		//		+ - * / %
		console.log(3 + 4);	// 7
		console.log(3 - 4);	// -1
		console.log(3*4);	// 12
		console.log(3/4);	// 0.75 정수/정수가 실수값이 나올 수 있다
		console.log(3%4);	// 3 나머지
		
		// 대입연산자
		//		= += -= *= /= %=
		
		// 증감연산자
		//		++ --
		
		// 비교연산자
		//		> >= < <= == === != !==
		//		=== 연산자 : 값과 타입이 모두 일치하면 true다.
		//		!== 연산자 : 값이 다르거나 타입이 다르면 true이고, 그 외는 전부 false다.
		console.log("=== 연산자");		
		console.log(5 == '5');		// true
		console.log(5 == 5);		// true
		console.log(5 === '5');		// false
		console.log(5 === 5);		// true

		console.log("!== 연산자");
		console.log(5 != '5');		// false, 같다
		console.log(5 != 5);		// false, 같다
		console.log(5 !== '5');		// true, 같지 않다
		console.log(5 !== 5);		// false, 같다
		
		// 논리연산자
		//		! && ||
		// 표현식1 && 표현식2 : 표현식1 false로 판정되면 표현식2를 확인하지 않는다.
		// 표현식1 || 표현식2 : 표현식1 true로 판정되면 표현식2를 확인하지 않는다.
		//	* 자바스크립트에서 false로 판정되는 것
		//		false, undefined, unll, NaN, 0, ''
		//	* 자바스크립트에서 true로 판정되는 것
		//		true, 위에서 나열한 값을 제외한 모든 값을 true로 판정된다('안녕', 100, 100은 true로 판정되는 값이다.)
		//	* &&와 || 연산자의 죄항과 우항의 표현식 모두 true/false 결과 일 때만 최종 연산결과가 true/false다.
		
		console.log("논리 연산자");
		var a = 10 > 100 && 10 > 5;	// 좌항과 우항의 표현식 모두 true/false 결과다.
		console.log("a", a);
		
		//	* &&와 || 연산자의 좌항과 우항의 표현식 중에서 하나라도 true/false 결과가 아닌 항이 있으면 최종 연산결과는 true/false가 아닐 수 있다.
		 var b = null && 10 > 5;
		 console.log("b", b);	// null, 좌항이 null이다 -> null은 false로 판정되는 값이다. -> b의 최종값은 null이다.(null이 false로 판정되는 값이므로)
		 
		 var c = '1000' && 10 > 5;
		 console.log("c", c);	// true
		
		 var d = '1000' || '1';
		 console.log("d", d);	// '1000', 좌항이 '1000'이다 -> '1000'은 true로 판정되는 값이다. -> c의 최종값은 '1000'이다.
		 /*
		 	이름 : <input type="text" name="userId">
		 
		 	var x = document.querySelector("[name=userId]").value;	// 입력필드의 입력값을 조회한다.
		 	if(x == "") {
		 		alert("아이디를 입력하세요");
		 		return
		 	}
		 	if(!x) {
		 		alert("아이디를 입력하세요");
		 		return
		 	}
		 */
		

	</script>
</body>
</html>