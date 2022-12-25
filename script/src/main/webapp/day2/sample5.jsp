<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 키보드 이벤트</title>
</head>
<body>
	<h1>자바스크립트 키보드 이벤트</h1>
	
	<form action="">
		입력필드 : <input type="text" name="filed1" onkeydown="keydown();" onkeyup="keyup();" onkeypress="keypress();" /><br />
		입력필드 : <input type="password" name="filed2" onkeyup="checkInputField();" placeholder="6글자 이상 12글자 이하로 입력하세요." />
	</form>
	<p id="feedback-message">
	
	<script type="text/javascript">
		/*
			키보드 이벤트
				onkeydown
					키를 눌렀을 떄 발생하는 이벤트
				onkeypress
					눌려졌던 키가 올라올 때 발생하는 이벤트
					숫자, 영문을 입력했을 때만 발생한다.
					방향키, 특수키(백스테이스, 엔터키 등), 한글을 입력할 때는 발생하지 않는다.
				onkeyup
					눌려졌던 키가 위로 올라올 때 발생하는 이벤트
					이 이벤트가 발생했을 때 사용자가 입력한 값이 화면에 표시된다.
					키보드 이벤트 중에서 가장 많이 활용되는 이벤트다.
					
		*/
		// 이벤트 핸들러 함수 - 입력필드에 입력된 값을 체크하는 이벤트 핸들러 함수다.
		function checkInputField(){
			// id가 feedback-message인 <p /> 태그를 표현하는 Element 객체를 조회한다.
			//<p /> 태그를 표현하는 Element 객체는 textContent 프로퍼티를 가지고 있다.
			// textContent 프로퍼티는 태그의 텍스트 컨텐츠를 표현하는 프로퍼티다.
			var p = document.querySelector("#feedback-message");
			
			// name 속성값이 field2인 <input />태그를 표현하는 Element객체를 조회한다.
			var input = document.querySelector("[name=filed2]");
			// <input /> 태그를 표현하는 Element객체는 value 프로퍼티를 가지고 있다.
			// value 프로퍼티는 입력필드에 입력된 값을 표현하는 프로퍼티다.
			var inputValue = input.value
			
			// 입력필드에 입력된 글자수에 따라서 메세지가 p태그의
			if(inputValue.length < 6) {
				p.textContent = "글자수가 모자랍니다.";
				p.style.color = 'red';
			} else if(inputValue.length > 12) {
				p.textContent = "글자수가 너무 깁니다.";
				p.style.color = 'red';
			} else {
				p.textContent = "글자수가 적당합니다.";
				p.style.color = 'green';
			}
		}
		
		function keydown(){
			console.log("keydown - 이벤트 핸들러 실행...");
		}
		function keyup(){
			console.log("keyup - 이벤트 핸들러 실행...");
			
		}
		function keypress(){
			console.log("keypress - 이벤트 핸들러 실행...");
			
		}
	</script>
</body>
</html>