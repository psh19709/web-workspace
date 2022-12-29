<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>반복문을 사용해서 값 출력하기</h1>
	
	<%
		List<String> names = new ArrayList<>();
		names.add("김유신");
		names.add("강감찬");
		names.add("이순신");
		names.add("류관순");
		names.add("안중근");
		names.add("윤봉길");
		names.add("이봉창");
	%>
	
	<h3>교육 참석자 명단</h3>
	<ul>
	<%
		for(String name : names) {
	%>
		<li><%=name %></li>
	<%
		}
	%>
	</ul>

</body>
</html>