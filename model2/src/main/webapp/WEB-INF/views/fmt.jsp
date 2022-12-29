<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>애플리케이션</title>
</head>
<body>
<!-- 
	
 -->
<c:set var="menu" value="fmt" />
<div class="container">
	<div class="row">
		<div class="col-12">
			<%@include file="common/header.jsp" %>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col-12">
			<h1>포맷팅 태그 라이브러리</h1>
		</div>
		
		<div class="col-12">
			<h3>숫자를 포멧칭해서 표현하기</h3>
			<p>금액 : ${money } 원</p>
			<p>금액 : <c:out value="${money }" /> 원</p>
			<p>금액 : <fmt:formatNumber value="${money }" /> 원</p>
		</div>
		
		<div class="col-12">
			<h3>날짜를 포멧칭해서 표현하기</h3>
			<p>날짜 : ${today }</p>
			<p>날짜 : <c:out value="${today }" /></p>
			<p>날짜 : <fmt:formatDate value="${today }" pattern="yyyy-MM-dd"/></p>
			<p>날짜 : <fmt:formatDate value="${today }" pattern="yyyy년 M월 d일 EEEE a h시 m분 s초"/></p>
			<p>날짜 : <fmt:formatDate value="${today }" pattern="HH:mm:ss"/></p>
		</div>
	</div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>