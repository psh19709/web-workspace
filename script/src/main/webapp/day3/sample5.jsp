<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 입력요소의 값 조회/변경</title>
</head>
<body>
	<h1>폼 입력요소의 값 조회/변경</h1>

	<form>
		<div>
			<label>입력필드 : </label> 
			<input type="text" name="filed1" />
		</div>
		<div>
			<label>비밀번호 : </label> 
			<input type="password" name="filed2" />
		</div>
		<div>
			<label>날짜필드 : </label> 
			<input type="date" name="filed3" />
		</div>
		<div>
			<label>콤보박스 : </label> 
			<select name="filed4">
				<option value="s">서울</option>
				<option value="k">경기</option>
				<option value="i">인천</option>
				<option value="g" selected>강원</option>
			</select>
		</div>
		<div>
			<label>입력필드 : </label>
			<textarea name="filed5" rows="3" ></textarea>
		</div>
	</form>
	
	<div>
		<button onclick="handler1()">값 조회하기</button>
		<button onclick="handler2()">값 변경하기</button>
	</div>
	
	<script type="text/javascript">
		var el1 = document.querySelector("[name=filed1]");
		var el2 = document.querySelector("[name=filed2]");
		var el3 = document.querySelector("[name=filed3]");
		var el4 = document.querySelector("[name=filed4]");
		var el5 = document.querySelector("[name=filed5]");
		
		function handler1(){
			// 입력필드의 값을 문자열로 반환한다.
			var value1 = el1.value;
			var value2 = el2.value;
			var value3 = el3.value;
			var value4 = el4.value;
			var value5 = el5.value;
			
			console.log("첫번째 입력필드 -> ", value1);
			console.log("두번째 입력필드 -> ", value2);
			console.log("세번째 날짜필드 -> ", value3);
			console.log("네번째 콤보박스 -> ", value4);
			console.log("다섯번째 입력필드 -> ", value5);
			
		}
		function handler2(){
			el1.value ="김유신";				// <input type="text" name="field1">
			el2.value = "zxcv1234";			// <input type="password" name="field2">
			el3.value = "2022-12-23";		// <input type="date" name="field3">
			el4.value = "s";				// <select name="field4"></select>
			el5.value = "나는 나인걸 누구도 대신 하지마라";	// <textarea name="field5"></textarea>
		}
	
	</script>
</body>
</html>