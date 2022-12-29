<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>HttpServletRequest 객체</h1>
	<p><%=request %>
	
	<%
		// HttpServletRequest 주요메소드
		// String getMethod()는 요청방식을 반환한다.
		String method = request.getMethod();
		
		// String getContextPath()는 웹 애플리케이션의 context path를 반환한다.
		String contexPath = request.getContextPath();
		
		// String getRequestURI()는 요청 URI를 반환한다.
		String requestURI = request.getRequestURI();
		
		// String getRemoteAddr()은 서버로 요청을 보낸 클라이언트의 ip주소를 반환한다.
		String ipAddress = request.getRemoteAddr();
		
		// Locale getLocale()은 서버로 요청을 보낸 클라이언트의 로케일 정보(브라우저의 기본언어, 국가정보)를 반환한다.
		Locale locale = request.getLocale();
		
		// String getHeader(String name)은 요청메세지의 요청 헤더정보(클라이언트에 관한 부가정보)를 반환한다.
		String agent = request.getHeader("user-agent");
		String accept = request.getHeader("accept");
		String acceptEncoding = request.getHeader("accept-encoding");
		String acceptLanguage = request.getHeader("accept-language");
		
	%>
	<h3>요청객체가 가지고 있는 주요 정보</h3>
	<dl>
		<dt>요청방식</dt><dd><%=method %></dd>
		<dt>컨텍스트패스</dt><dd><%=contexPath %></dd>
		<dt>요청 URI</dt><dd><%=requestURI %></dd>
		<dt>클라이언트의 ip 주소</dt><dd><%=ipAddress %></dd>
		<dt>클라이언트의 로케일정보</dt><dd><%=locale %></dd>
	</dl>
	
	<h3>요청메세지의 헤더정보</h3>
	<dl>
		<dt>클라이언트의 브라우저 정보</dt><dd><%=agent %></dd>
		<dt>클라이언트의 브라우저가 지원하는 컨텐츠 타입</dt><dd><%=accept %></dd>
		<dt>클라이언트의 브라우저가 지원하는 컨텐츠 압축 방식</dt><dd><%=acceptEncoding %></dd>
		<dt>클라이언트의 브라우저가 지원하는 언어</dt><dd><%=acceptLanguage %></dd>
	</dl>

</body>
</html>