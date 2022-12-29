<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sample-7.jsp에서 쿼리 스트링으로 전달한 요청파라미터값 조회하기</h1>
	
	<h3>쿼리스트링으로 전달한 요청파라미터값 조회</h3>
	
	<%
		// localhost/web-sample/sample-7.jsp?no=내가 클릭한 no
		// 위의 요청에서 요청 파라미터값 조회하기
		String value = request.getParameter("no");
	%>
	<p>페이지 번호: <%=value %></p>
	
	<h3>GET 방식으로 전달한 요청파라미터 값 조회하기</h3>
	<%
		// localhost/web-sample/sample-7.jsp?min=내가적은값&max=내가적은값
		// 위의 요청에서 요청 파라미터 값 조회하기
		String min = request.getParameter("min");
		String max = request.getParameter("max");
	%>
	<p>최소값: <%=min %></p>
	<p>최대값: <%=max %></p>
</body>
</html>