<%--
	language="java"	: 이 JSP 페이지의 기본 스크립트 언어는 자바다.
	contentType="text/html; charset=UTF-8" : 이 JSP페이지의 최종응답 컨턴츠타입은 html이다.
											 컨텐츠는 UTF-8방식으로 인코딩된다.
	pageEncoding="UTF-8" : 이 JSP페이지를 저장할 때 UTF-8방식으로 인코딩된다. 
	 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>샘플 JSP입니다.</h1>
	<%--
		<%	%>는 스크립틀릿이다. 자바코딩 영역을 지정한다.
	 --%>
	 <%
		 String title = "이것이 자바다.";
		 String author = "신용권";
		 String publisher="한빛미디어";
		 int price = 35000;
		 int discountPrice = 31500;
		 boolean onSell = true;
		 
		 // 초기화파라미터 사용
		 String companyName = application.getInitParameter("company-name");
	 %>
	 
	 <h3>책 정보</h3>
	 <dl>
	 	<dt>제목</dt><dd><%=title %></dd>
	 	<dt>저자</dt><dd><%=author %></dd>
	 	<dt>출판사</dt><dd><%=publisher %></dd>
	 	<dt>가격</dt><dd><%=price %></dd>
	 	<dt>할인가격</dt><dd><%=discountPrice %></dd>
	 	<dt>판매여부</dt><dd><%=onSell %></dd>
	 </dl>
	 
	 <p>회사명 : <%=companyName %></p>
	 
	 <%--
	 	<%!		%>는 선언식이다. 멤버변수/멤버메소드, 정적변수/정적메소드를 정의할 때 사용한다.
	  --%>
	  <%!
	  	double depositRate = 0.002;
	  	
	  
	  	public double getDepositPoint(int price) {
	  		return depositRate*price;
	  	}
	  %>
</body>
</html>