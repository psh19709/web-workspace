<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 마우스 이벤트</title>
</head>
<body>
	<h1>자바스크립트 마우스 이벤트</h1>
	
	<form action="">
		<textarea rows="6" style="width: 100%;" name="content" id="content-filed"></textarea>
	</form>
	
	<script type="text/javascript">
		// 아이디가 content-filed인 <textarea> 태그를 표현하는 엘리먼트객체를 조회한다.
		var el = document.querySelector("#content-filed");
		// 엘리먼트가 객체의 프로퍼티에 이벤트 핸드러 함수를 등록한다.
		el.onmouseenter = mouseenter;
		el.onmouseleave = mouseleave;
		el.onmousedown = mousedown;
		el.onmouseup = mouseup;
		el.onmousemove = mousemove;
		
		function mouseenter(event){
			console.log("마우스 포인트가 진입하였습니다.", event.target);
		}
		
		function mouseleave(){
			//console.log("마우스 포인트가 빠져나갔습니다.");
			
		}
		
		// 이벤트 핸들러 함수는 Event 객체를 전달 받을 수 있다.
		function mousedown(event){
			//console.log("마우스 포인트가 눌려졌습니다.", event);
			el.value = event.which + "버튼 down";
			
		}
		function mouseup(event){
			//console.log("마우스 포인트가 떨어졌습니다.", event);
			el.value = event.which + "버튼 up";
			
		}
		function mousemove(event){
			//console.log("마우스 포인트가 움직입니다.", event);
			
		}
	</script>

</body>
</html>