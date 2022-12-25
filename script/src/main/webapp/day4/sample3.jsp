<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>링크의 클릭이벤트</title>
</head>
<body>
	<h1>링크의 클릭이벤트</h1>
	
	<div>
		<img src="../resources/images/sample.png" width="350" height="400" id="image-gallary">
	</div>
	<div>
		<a href="../resources/images/sample.png"  onclick="return changeImage(event);"><img src="../resources/images/sample.png" width="60" height="75"/></a>
		<a href="../resources/images/sample2.png" onclick="return changeImage(event);"><img src="../resources/images/sample2.png" width="60" height="75"/></a>
	
	</div>
	
	<script type="text/javascript">
		function changeImage(event){
			// 엘리먼트에서 특정 이벤트가 발생했을 때 기본 동작이 실행되는 것을 막는다.
			event.preventDefault();
			
			// event.target은 지금 이벤트가 발생한 그 엘리먼트를 제공한다.
			// 1. 위의 소스에는 img를 클릭했을 때 onclick 이벤트가 발생한다.	(이벤트 소스는 img다.)
			// 2. img 태그에서 발생한 onclick 이벤트가 a태그로 전파된다.
			// 3. a 태그에 onclick 이벤트가 발생시 실행할 changeImage(event) 함수가 등록되어 있으므로 changeImage(event) 함수를 실행한다.
			// 4. changeImage(event) 함수 실행시 event객체가 전달된다.(event, target으로 조회되는 엘리먼트는 img다.)
			var el = event.target;	// el에는 img 엘리먼트 객체가 대입된다.
			var image = el.getAttribute("src");
			
			var gallary = document.getElementById("image-gallary");
			gallary.setAttribute("src", image);
			
		}
		
	</script>
</body>
</html>