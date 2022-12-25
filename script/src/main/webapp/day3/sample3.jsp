<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>엘리먼트 속성 추가/변경/조회</title>
</head>
<body>
	<h1>엘리먼트의 속성 추가/변경/조회</h1>
	
	<img src="../resources/images/sample.png" width="190" height="200">
	
	<div>
	<%--
	<%
		for(String filename : filenames) {
	%>
	
		<img src="../resources/images/sample.png" width="40" height="50" onclick="changeImage('<%=filename %>')" />
	<%
		}
	%>
	--%>
		<img src="../resources/images/sample.png" width="40" height="50" onclick="changeImage('sample.png')" />
		<img src="../resources/images/sample2.png" width="40" height="50" onclick="changeImage('sample2.png')" />
	</div>
	
	<div>
		<button onclick="handler1();">속성 변경</button>
		<button onclick="handler2();">속성 추가</button>
		<button onclick="handler3();">속성 조회</button>
	</div>
	
	<script type="text/javascript">
		var el = document.querySelector("img");
		
		function changeImage(filename){
			el.setAttribute("src", "../resources/images/" + filename);
		}
	
		 function handler1() {
			 el.setAttribute("src", "../resources/images/sample2.png")
		 }
		 function handler2() {
			 el.setAttribute("alt", "루피 사진");
			 
		 }
		 function handler3() {
			 var value = el.getAttribute("src");
			 alert(value);
			 
		 }
	</script>
</body>
</html>