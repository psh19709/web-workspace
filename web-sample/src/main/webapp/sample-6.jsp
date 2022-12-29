<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>sample-7.jsp에 요청파라미터값 전달하기</h2>
	
	<h3>페이지번호</h3>
<%
	// 향상된 for문을 이용해서 페이지 번호를 만들고 sample-7.jsp에 보내기
	for(int index = 1; index <= 5; index++){
%>
	<a href="sample-7.jsp?no=<%=index %>"><%=index %></a>	
<%
	}
%>
	<h2>GET방식-입력폼</h2>
	<form method="get" action="sample-7.jsp">
	<div>
			<label>최소가격</label>
			<input type="number" name="min" />
		</div>
		<div>
			<label>최대가격</label>
			<input type="number" name="max" />
		</div>
		<button type="submit">검색버튼</button>
	</form>
</body>
</html>