<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>sample-5.jsp에 요청파라미터값 전달하기</h2>
	
	<h2>쿼리스트링으로 요청파라미터 값 전달하기</h2>
	<h3>도서 목록</h3>
	<ul>
		<li><a href="sample-5.jsp?no=1001">이것이 자바다</a></li>
		<li><a href="sample-5.jsp?no=1002">자바의 정석</a></li>
		<li><a href="sample-5.jsp?no=1003">혼자서 공부하는 자바</a></li>
		<li><a href="sample-5.jsp?no=1004">혼자서 공부하는 파이썬</a></li>
		<li><a href="sample-5.jsp?no=1005">스프링 인 액션</a></li>
		<li><a href="sample-5.jsp?no=1006">스프링 클라우드로 개발하는 마이크로서비스</a></li>
	</ul>
	
	<h2>GET 방식 - 입력폼을 이용해서 요청파라미터값 전달하기</h2>
	<form method="get" action="sample-5.jsp">
		<select name="opt">
			<option value="title">제목</option>
			<option value="author">저자</option>
			<option value="publisher">출판사</option>
			<option value="content">내용</option>
		</select>
		<input type="text" name="keyword" />
		<button type="submit">검색</button>
	</form>
	
	<h2>POST방식 - 입력폼을 이용해서 요청파라미터값 전달하기</h2>
	<form method="post" action="sample-5.jsp">
		<div>
			<label>이메일</label>
			<input type="email" name="email" />
		</div>
		<div>
			<label>비밀번호</label>
			<input type="password" name="password" />
		</div>
		<div>
			<label>비밀번호 확인</label>
			<input type="password" name="passwordConfirm" />
		</div>
		<div>
			<label>이름</label>
			<input type="text" name="name" />
		</div>
		<div>
			<label>전화번호</label>
			<input type="text" name="phono" />
		</div>
		<button type="submit">회원가입</button>
	</form>
</body>
</html>