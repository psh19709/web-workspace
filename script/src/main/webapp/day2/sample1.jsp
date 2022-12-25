<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 객체</title>
</head>
<body>
	<h1>자바스크립트 객체</h1>
	
	<script type="text/javascript">
		/*
			자바스크립트 객체
				- 클래스(설계도)가 필요없다.
				- 객체의 구성요소는 name:value의 쌍으로 이루어져 있다.
				- 객체 생성 후에도 객체의 구성요소를 추가/변경/삭제 가능하다.
			자바스크립트 객체의 생성
				- 빈 객체의 생성
					var obj = {};
				- 구성요소를 가지고 있는 객체 생성
					var obj = {no:100, title:"이것이 자바다", authoe:신용권, price:35000, discoutRate:0.15, onSell:true};
				- 생성된 객체에 구성요소 추가하기
					var obj = {};
					obj.no = 100;							// obj -> {no:100}이 되었다
					obj["title"] = "이것이 자바다";				// obj -> {no:100, title:"이것이자바다"}이 되었다.
					obj.price = 35000;						// obj -> {no:100, title:"이것이 자바다", price:35000}이 되었다.
					obj.price = 32000;						// obj -> {no:100, title:"이것이 자바다", price:32000}이 되었다.
		*/
		
		// 빈객체 생성하기
		var obj1 = {};
		console.log("첫번째 객체", obj1);
		
		// 구성요소를 포함하고 있는 객체 생성하기
		var obj2 = {no:100, title:"이것이 자바다.", price:35000, discountPrice:32000, onSell:true, stock:30};
		console.log("두번째 객체", obj2);
		
		// 객체를 생성하고, 구성요소 추가/삭제하기
		var obj3 = {};
		console.log("세번째 객체 -1", obj3);
		obj3.userId = 'hong';
		obj3.name = "홍길동";
		obj3.deleted = false;
		obj3.point = 14000;
		console.log("세번째 객체 -2", obj3);
		delete obj3.userId;
		console.log("세번째 객체 -3", obj3);
		
		// 다양한 값을 포함하는 객체
		var obj4 = {
				name:"블랙펜서, 와칸다 포에버", 			// 값 : 문자열
				genre: ['액션', '어드벤쳐', 'SF'], 		// 값 : 배열
				score: 6.1,							// 값 : 숫자(실수)
				runningTime: 161,					// 값 : 숫자(정수)
				act: [								// 값 : 배열
					{name:"레티티아 라이트", role:"슈리 역", engName:"Letitia Wright"},
					{name:"류피타 뇽오", role:"나키아 역", engName:"Lupita Myong'o"},
					{name:"다나이 구리라", role:"오코예 역", engName:"Danai Gurira"}
				]
		};
		// 객체의 프로퍼티 값 출력
		console.log("영화제목", obj4.name);
		console.log("영화장르", obj4.genre[0], obj4.genre[1],  obj4.genre[2]);
		console.log("영화평점", obj4.score);
		console.log("상영시간", obj4.runningTime);
		console.log("배우1", obj4.act[0].name);
		console.log("배우2", obj4.act[1].name);
		console.log("배우3", obj4.act[2].name);
		
		
		
		
	</script>
</body>
</html>