<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>검색 결과를 출력한다.</h1>
	
	<%
		String opt = request.getParameter("opt");
		String keyword = request.getParameter("keyword");
		
		// 최근 검색옵션과 최근 검색어를 쿠키를 생성해서 저장한다.
		Cookie cookie1 = new Cookie("search-opt", opt);
		Cookie cookie2 = new Cookie("search-keyword", keyword);
		
		// 쿠키를 응답객체에 추가해서 응답메세지에 쿠키정보를 포함시킨다.
		// 브라우저는 응답메세지로 전달받은 쿠키정보(최근 검색옵션과 검색어)를 쿠키파일로 저장한다.
		// 브라우저는 쿠키만료되기 전까지 요청을 보낼때 마다 요청메세지에 쿠키정보를 포함해서 서버로 보낸다.
		// 서버에서 실행중이 모든 JSP에서는 필요한 쿠키정보를 조회해서 요청처리에 사용할 수 있다.
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		
	%>
	<h3>검색 결과</h3>
	<p>검색 옵션 : <%=opt %></p>
	<p>검색 키워드 : <%=keyword %></p>
</body>
</html>