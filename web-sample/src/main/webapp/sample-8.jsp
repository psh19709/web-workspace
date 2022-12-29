<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키를 이용해서 정보를 서버로 전달하기</h1>
	<%
	
		// 클라이언트에서 서버로 보낸 쿠키 정보 조회하기
		String searchOption = null;
		String searchKeyword = null;
		
		// 요청객체에서 모든 쿠키 정보를 조회한다.
		Cookie[] cookies = request.getCookies();
		// 조회된 모든 쿠키를 하나씩 검사한다.
		for(Cookie cookie : cookies) {
			String name = cookie.getName();
			if(name.equals("search-opt")){					// 쿠키의 이름이 search-option인 경우
				String value = cookie.getValue();			// 쿠키의 값을 조회한다.
				searchOption = value;
			} else if (name.equals("search-keyword")){		// 쿠키의 이름이 search-keyword인 경우
				String value = cookie.getValue();			// 쿠키의 값을 조회한다.
				searchKeyword = value;
			}
		}
	%>
	
	<h3>최근 검색옵션과 검색어가 폼에 표시되도록 하기(검색 옵션과 검색어가 유지되게 하기)</h3>
	<form method="get" action="sample-9.jsp">
		<select name="opt">
			<option value="" selected="selected" disabled="disabled">선택하세요</option>
			<option value="title" <%="title".equals(searchOption) ? "selected" : "" %>>제목</option>
			<option value="author" <%="author".equals(searchOption) ? "selected" : "" %>>저자</option>
			<option value="publisher" <%="publisher".equals(searchOption) ? "selected" : "" %>>출판사</option>
			<option value="content" <%="content".equals(searchOption) ? "selected" : "" %>>내용</option>
		</select>
		<input type="text" name="keyword" value="<%=searchKeyword != null ? searchKeyword : "" %>">
		<button type="submit">검색</button>
	</form> 

</body>
</html>