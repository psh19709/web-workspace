<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sample-5.jsp에서 쿼리 스트링으로 전달한 요청파라미터값 조회하기</h1>
	
	<h3>쿼리스트링으로 전달한 요청파라미터값 조회</h3>
	<%
		String value = request.getParameter("no");
	%>
	<p>sample-4.jsp에서 sample-5.jsp로 전달한 값 : <%=value %></p>
	
	<h3>GET 입력폼으로 전달한 요청파라미터값 조회</h3>
	<%
		String searchOption = request.getParameter("opt");
		String searchKeyword = request.getParameter("keyword");
	%>
	<p>입력폼의 검색 옵션값: <%=searchOption %></p>
	<p>입력폼의 검색 키워드: <%=searchKeyword %></p>
	
	<h3>POST 입력폼으로 전달한 요청파라미터값 조회</h3>
	<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String passwordConfirm = request.getParameter("passwordConfirm");
		String name = request.getParameter("name");
		String phono = request.getParameter("phono");
	%>
	<p>이메일: <%=email %></p>
	<p>비밀번호: <%=password %></p>
	<p>비밀번호 확인: <%=passwordConfirm %></p>
	<p>이름: <%=name %></p>
	<p>전화번호: <%=phono %></p>
</body>
</html>