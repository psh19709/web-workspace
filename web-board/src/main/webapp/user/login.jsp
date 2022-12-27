<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="com.sample.vo.User"%>
<%@page import="com.sample.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그인폼 화면에서 login.jsp를 실행요청할 때 제출한 폼 입력값을 요청객체에서 조회한다.
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	// 사용자 정보를 조회를 위해서 UserDao객체를 생성한다,
	UserDao userDao = new UserDao();
	
	// 아이디로 사용자 정보를 조회해서 사용자정보가 null이면 가입된 아이디가 아니므로 로그인 화면을 재요청하는 URL을 응답으로 보낸다.
	User savedUser = userDao.getUserById(id);
	if(savedUser == null) {
		response.sendRedirect("loginform.jsp?error=fail");
		return;
	}
	
	String salt = savedUser.getId() + savedUser.getEmail();
	String secretPassword = DigestUtils.sha256Hex(salt + password);
	
	// 조횐된 사용자정보의 비밀번호와 입력한 비밀번호가 일치하지 않으면 로그인 화면을 재요청하는 URL을 응답으로 보낸다.
	if(!savedUser.getPassword().equals(secretPassword)) {
		response.sendRedirect("loginform.jsp?error=fail");
		return;
	}
	
	// 사용자 인증이 완료된 경우, 세션객체에 사용자정보를 저장한다.
	// HttpSession의 setAttribute(String name, Object value) 메소드를 사용해서 세션객체에 사용자 정보를 저장한다.
	session.setAttribute("loginedUser", savedUser);
	
	// 재요청 URL을 응답으로 보낸다.
	response.sendRedirect("../home.jsp");
%>