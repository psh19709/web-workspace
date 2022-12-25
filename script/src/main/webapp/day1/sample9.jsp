<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트의 배열</title>
</head>
<body>
	<h1>자바스크립트의 배열</h1>

	<script type="text/javascript">
		/*
			자바스크립트의 배열 객체
				- 가변길이 배열이다.
				- 다양한 메소드를 지원한다.
				
			배열객체의 생성
			1. 빈 배열객체 생성
				var x = [];		// 길이가 0인 배열
			2. 값이 포함되어 있는 배열객체 생성
				var x = [값, 값, 값, 값]
				
			배열객체에 값 추가하기
			1. 빈 배열객체를 생성하고, 배열객체에 값 추가하기
				var x = [];
				x[0] = 10;
				x[1] = 20;
				x[2] = 30;
				x[3] = 40;
				x[4] = 100;
				// x = [10, 20, 30, 40, 100]
			2. 빈 배열객체를 생성하고, 배열객체에 값 추가하기
				var x = [];
				x[0] = 10;
				x[4] = 100;
				// x = [10, undefined, undefined, undefined, 100]
			3. 빈 배열객체를 생성하고, 배열객체에 값 추가하기
				var x = [100, 200, 300];
				x.push(10);		// 배열의 맨 끝에 추가한다, ArrayList add(E e) 메소드와 동일하다.
				x.push(20);
				x.push(30);
				// x = [100, 200, 300, 10, 20, 30]
			4. 빈 배열객체를 생성하고, 배열객체에 값 추가하기
				var x = [100, 200, 300];
				x.unshift(10);		// 배열의 맨 앞에 추가한다.
				x.unshift(20);		
				x.unshift(30);		
				// x = [10, 20, 30, 100, 200, 300]
		*/
		// 빈 배열객체를 생성해서 items1에 대입한다. items1은 빈 배열객체를 참조하는 참조변수다.
		var items1 = [];
		items1[0] = 100;
		items1[1] = 200;
		items1[2] = 300;
		console.log("첫번째 배열", items1);
		
		var items2 = [];
		items2.push(100);
		items2.push(200);
		items2.push(300);
		console.log("두번째 배열", items2);
		
		var items3 = [];
		items3.unshift(100);
		items3.unshift(200);
		items3.unshift(300);
		console.log("세번째 배열", items3);
		
		var items4 = [];
		items4[0] = 100;
		items4[9] = 200;
		console.log("네번째 배열", items4);
		
		
		
	</script>
</body>
</html>