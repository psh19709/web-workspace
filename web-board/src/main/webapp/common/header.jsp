<%@page import="com.sample.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		각 JSP에서 header.jsp를 include할 때 요청파라미터를 아래와 같은 방법으로 전달한다.
		
		<jsp:include page="common/header.jsp">
			<jsp:param name="menu" value="home"/>
		</jsp:include>
	*/
	String menu = request.getParameter("menu");
	
	/*
		HttpSession 객체에 저장된 인증된 사용자 정보를 조회한다.
		login.jsp에서 인증이 완료된 사용자정보를 아래와 같이 HttpSession 객체에 저장했다.
		
		User savedUser = userDao.getUserById(id);
		session.setAttribute("loginedUser", savedUser);
	*/
	User user = (User) session.getAttribute("loginedUser");
%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<div class="container">
		<ul class="navbar-nav me-auto">
			<li class="nav-item"><a class="nav-link <%="home".equals(menu) ? "active bg-danger" : "" %>" href="/web-board/home.jsp">홈</a></li>
			<li class="nav-item"><a class="nav-link <%="board".equals(menu) ? "active bg-danger" : "" %>" href="/web-board/board/list.jsp">게시판</a></li>
			<li class="nav-item"><a class="nav-link <%="book".equals(menu) ? "active bg-danger" : "" %>" href="/web-board/book/list.jsp">국내도서</a></li>
		</ul>
<%
	if (user == null) {
%>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link <%="login".equals(menu) ? "active bg-danger" : "" %>" href="/web-board/user/loginform.jsp">로그인</a></li>
			<li class="nav-item"><a class="nav-link <%="register".equals(menu) ? "active bg-danger" : "" %>" href="/web-board/user/form.jsp">회원가입</a></li>
		</ul>
<%		
	} else {
%>
		<span class="navbar-text"><strong class="text-white"><%=user.getName() %></strong>님 환영합니다.</span>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link <%="cart".equals(menu) ? "active bg-danger" : "" %>" href="/web-board/cart/list.jsp">장바구니</a></li>
			<li class="nav-item"><a class="nav-link" href="/web-board/user/logout.jsp">로그아웃</a></li>
		</ul>
<%	
	}
%>
	</div>
</nav>