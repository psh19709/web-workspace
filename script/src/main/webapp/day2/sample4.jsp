<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 이벤트</title>
</head>
<body>
	<h1>자바스크립트 이벤트</h1>
		
	<div>
		<!-- 이벤트 소스인 button 태그에서 이벤트핸들러 함수 바인딩하기 -->
		<button id="btn-1" onclick="fn1();">버튼1</button>
		<button id="btn-2">버튼2</button>
		<button id="btn-3">버튼3</button>
	</div>
		
	<script type="text/javascript">
		// 이벤트 핸들러(이벤트 리스너) 함수다
		function fn1(){
			alert("fn1이 실행됨")
		}
		// 이벤트 핸들러(이벤트 리스너) 함수다
		function fn2(){
			alert("fn2이 실행됨")
			
		}
		// 이벤트 핸들러(이벤트 리스너) 함수다
		function fn3(){
			alert("fn3이 실행됨")
			
		}
		
		var btn2 = document.querySelector("#btn-2");
		btn2.onclick = fn2;
		
		var btn3 = document.getElementById("btn-3");
		btn3.addEventListener('click', fn3);
	
		/*
			이벤트(Event)
				- 사용자가 웹 페이지 내에서 어떤 동작을 할 때마다 그 모든 동작은 이벤트(Event)가 된다.
				- 사용자와 상호작용하는 웹 페이지를 제작하기 위해서는 사용자가 동작할 때 마다 발생되는 이벤트를 활용한다.
			이벤트의 종류
				- 키보드 이벤트
					onkeydown		: 키보드의 키를 눌렀을 때
					onkeypress		: 키보드의 키가 완전히 눌려졌을 때
				  * onkeyup			: 키보드의 키가 위로 올라올 때
					
				- 마우스 이벤트
				  * onclick			: 클릭했을 때
					ondbclick		: 더블클릭했을 때
				  * onmouseenter	: 마우스 포인트가 엘리먼트 경계선 안으로 진입했을 때
				  * onmouseleave	: 마우스 포인트가 엘리먼트 경계선 밖으로 나갔을 때
					onmouseover		: 마우스 포인트가 엘리먼트 위에 올라왔을 때
					onmouseout		: 마우스 포인트가 엘리먼트를 벗어났을 때
					onmousedown		: 마우스의 버튼을 눌렀을 때
					onmouseup		: 마우스의 버튼에서 손을 뗐을 때
					onmousemove		: 마우스 포인트가 움직일 때
				
				- 폼 이벤트
				  * onchage			: 폼 요소의 값이 변경될 때(체크박스와 라디오버튼을 선택/해제할 때, select의 옵션을 변경할 때)
					onreset			: 폼 입력값이 리셋될 때
				  * onsubmit		: 폼 입력값이 서버로 제출될 때
					onfocus			: 폼 입력요소에 포커스가 위치할 때
					onblur			: 폼 입력요소에서 포커스가 다른 곳으로 이동할 때
					
				- 윈도우 이벤트
					onresize		: 윈도우 창의 크기가 조절될 때
				  * onsroll			: 스크롤바를 움직일 때(스크롤바를 아래로 이동할 때 마다 새로운 컨텐츠가 추가되게 할 때 주로 사용)
				  * onload			: 화면의 로딩이 완료됐을 때(웹페이지의 로딩이 완료되면 특정 작업을 수행하고 싶을 때)
					onerror			: 웹페이지에서 에러가 발생했을 때
					
				이벤트소스와 이벤트핸들러 바인딩하기
				1.HTML 이벤트 핸들러 바인딩
					<button onclick="eventHandler();">버튼</button>
					
					fuction eventHandler() {
						수행문;
					}
				* 이벤트소스 : <button>
				* 기대한 이벤트 : onclick
				* 이벤트 핸들러 : fuction eventHandler() {...}
				
				2. DOM 이벤트 핸들러 바인딩
					<button id="btn-delete">삭제</button>
					
					var btn = document.querySelector("#btn-delete");
					btn.onclick = eventHandler;		// 절대로 btn.onclick = eventHandler(); 이라고 적으면 안된다.	
				
					fuction eventHandler() {
						수행문;
					}
					
				3. 이벤트 리스너 바인딩
					<button id="btn-delete">삭제</button>
					
					var btn = document.querySelector("#btn-delete");
					btn.addEventListener('click', eventHandler);	// 이벤트 이름에서 on을 생략한다.
					
					fuction eventHandler() {
						수행문;
					}
				
		
		*/
	
	
	</script>
</body>
</html>