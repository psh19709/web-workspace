<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 요소의 활성화/ 비활성화, 읽기전용여부 조회.변경하기</title>
</head>
<body>
	<h1>폼 요소의 활성화/ 비활성화, 읽기전용여부 조회.변경하기</h1>
	
	<form action="">
		<div>
			<label>입력필드 : </label>
			<input type="text" name="username" />
		</div>
		<div>
			<label>입력필드 : </label>
			<input type="checkbox" name="skill" value="java">자바
			<input type="checkbox" name="skill" value="python">파이썬
		</div>
		<div>
			<label>입력필드 : </label>
			<select name="city">
			<option value="">선택하세요</option>
			<option value="서울">서울</option>
			<option value="부산">부산</option>
			<option value="대구">대구</option>
			<option value="인천">인천</option>
			<option value="광주">광주</option>
			</select>
		</div>
		<div>
			<button id="btn-register">등록</button>
		</div>
	</form>
	<div>
		<button id="btn-1" onclick="disabledField();">입력필드 비활성화 하기</button>
		<button id="btn-2" onclick="enabledField();">입력필드 활성화 하기</button>
		<button id="btn-3" onclick="readonlyField();">입력필드 읽기전용으로 변경하기</button>
		<button id="btn-4" onclick="editableField();">입력필드 편집가능 변경하기</button>
	</div>
	
	<script type="text/javascript">
		var el1 = document.querySelector("[name=username]");
		var el2 = document.querySelectorAll("[name=skill]")[0];
		var el3 = document.querySelectorAll("[name=skill]")[1];
		var el4 = document.querySelector("[name=city]");
		var el5 = document.querySelector("#btn-register");
		
		function disabledField() {
			el1.disabled = true;
			el2.disabled = true;
			el3.disabled = true;
			el4.disabled = true;
			el5.disabled = true;
		}
		function enabledField() {
			el1.disabled = false;
			el2.disabled = false;
			el3.disabled = false;
			el4.disabled = false;
			el5.disabled = false;
			
		}
		function readonlyField() {
			el1.readOnly = true;	// 읽기전용은 type="text", type="password"과 같은 사용자가 직접 값을 입력하는 요소에서만 적용된다.
			el2.readOnly = true;	// 체크박스, 읽기전용 지정이 의미가 없다.
			el3.readOnly = true;	// 체크박스, 읽기전용 지정이 의미가 없다.
			el4.readOnly = true;	// 셀렉트박스(콤보박스), 읽기전용 지정이 의미가 없다.
			el5.readOnly = true;	// 버튼, 읽기전용 지정이 의미가 없다.
			
		}
		function editableField() {
			el1.readOnly = false;	// 읽기전용은 type="text", type="password"과 같은 사용자가 직접 값을 입력하는 요소에서만 적용된다.
			
		}
	
	</script>

</body>
</html>