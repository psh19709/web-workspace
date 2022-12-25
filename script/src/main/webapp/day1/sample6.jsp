<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 if문 연습</title>
</head>
<body>
	<h1>자바스크립트 if문 연습</h1>
	
	<!-- 
		name 속성을 가지는 엘리먼트	- form 태그와 모든 폼 입력요소는 name 속성을 가진다.
			<form name="loginForm">
			<input type="text" name"email" />
			<select name="skill">
			<textarea name="content">
			
		value 속성을 가지는 엘리먼트 - 모든 input 태그, option 태그는 value 속성을 가진다
								(단, <input type="file">은 value 속성으로 값을 설정할 수 없다.
			<input type="text" name="age" value="40" />
			<input type="radio" name="gender" value="female" />
			<option value="seoul">서울</option>
			
		checked 속성을 가지는 엘리먼트 - radio버튼, checkbox만 checked="checked"속성을 가진다.
			<input type="redio" name="gender" value"female" checked="checked">여성
			<input type="checkbox" name="skill" value"java" checked="checked">자바
			
		selected 속성을 가지는 엘리먼트 - option 태그만 selected="selected" 속성을 가진다.
			<option value="seoul" selected="selected">서울</selected>
			
				
	 -->
	
	<form id="form-login" method="post" action="login.jps">
		<div>
			<label>아이디</label> : <input type="text" name="id" />
		</div>
		<div>
			<label>비밀번호</label> : <input type="text" name="pwd" />
		</div>
		<button type="button" onclick="checkInputField();">로그인</button>
	</form>
	
	<script type="text/javascript">
		/*
			1.로그인 버튼을 클릭했을 때 checkInputField() 함수가 실행되어야 한다.
			--onclick
		*/
		function checkInputField(){
			// 2. name속성이 id인 엘리먼트의 입력값을 조회해서 변수 userId에 대입한다.
			// 3. name속성이 pwd인 엘리먼트의 입력값을 조회해서 변수 userPassword에 대입한다.
			var userId = document.querySelector("[name=id]").value;
			var userPassword = document.querySelector("[name=pwd]").value;
			
			// 4. 변수 userId에 대입된 값이 ''와 일치하면 "아이디는 필수입력값입니다." 경고창을 표시한다.
			// * 경고창은 alert("메세지") 스크립트 내장함수를 사용한다.
			if(userId == ''){
				alert("아이디는 필수입력값입니다.")	;
				return;
			} 
			
			// 5. 변수 userPassword에 대입된 값이 ''와 일치하면 "비밀번호는 필수입력값입니다." 경고창을 표시한다.
			// * 경고창은 alert("메세지") 스크립트 내장함수를 사용한다.
			if(userPassword == '') {
				alert("비밀번호는 필수입력값입니다.");
				return;
			}
			// 6. 아이디, 비밀번호를 모두 입력했으면 form 입력값으로 서버레 제출한다.
			// id속성값이 form-login인 엘리먼트를 조회해서 formElement 변수에 대입한다.
			var formElement = document.querySelector("#form-login");
			// formElement에 대입된 Element객체는 form태그를 표현하는 엘리먼트객체다.
			// for
			formElement.submit();
			
		}
	</script>

</body>
</html>