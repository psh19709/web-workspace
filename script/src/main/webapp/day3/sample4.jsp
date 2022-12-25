<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title>엘리먼트의 클래스 추가/변경/삭제/토글</title>
</head>
<body>
	<h1>엘리먼트의 클래스 추가/변경/삭제/토글</h1>
	
	<div class="m-3">
		<button class="btn btn-primary" id="btn-1">버튼1</button>
		<button class="btn btn-primary" id="btn-2">버튼2</button>
		<button class="btn btn-primary disabled" id="btn-3">버튼3</button>
		<button class="btn btn-primary disabled" id="btn-4">버튼4</button>
	</div>
	
	<div class="m-3">
		<button onclick="handler1()">클래스 추가</button>
		<button onclick="handler2()">클래스 변경</button>
		<button onclick="handler3()">클래스 삭제</button>
		<button onclick="handler4()">클래스 토글</button>
	</div>
	
	<script type="text/javascript">
		var btn1 = document.querySelector("#btn-1");
		var btn2 = document.querySelector("#btn-2");
		var btn3 = document.querySelector("#btn-3");
		var btn4 = document.querySelector("#btn-4");
		
		function handler1() {
			btn1.classList.add('btn-sm');
		}
		function handler2() {
			btn2.classList.replace('btn-primary', 'btn-danger');
		}
		function handler3() {
			btn3.classList.remove('disabled');
		}
		function handler4() {
			btn4.classList.toggle('disabled');
		}
	</script>

</body>
</html>