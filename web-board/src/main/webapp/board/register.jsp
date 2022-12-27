<%@page import="com.sample.util.MultipartRequest"%>
<%@page import="com.sample.vo.User"%>
<%@page import="com.sample.dao.BoardDao"%>
<%@page import="com.sample.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그인 여부 체크
	User user = (User) session.getAttribute("loginedUser");
	if(user == null) {
		response.sendRedirect("../user/loginform.jsp?error=deny");
		return;
	}
	
	// 멀티파트 요청처리를 지원하는 MultipartRequest 객체를 생성한다.
	// MultipartRequest는 multipart/form-data 요청처리를 지원하는 클래스다.
	
	// MultipartRequest 객체는 아래의 생성자를 실행해서 객체 생성하고, 초기화한다.
	// MultipartRequest mr = new MultipartRequest (요청객체, 첨부파일저장디렉토리);
	MultipartRequest mr = new MultipartRequest(request, "C:\\app\\web-workspace\\temp");
	
	// 요청객체에 저장되 ㄴ요청파라미터값을 가져온다.
	String title = mr.getParameter("title");
	String content = mr.getParameter("content");
	String fileName = mr.getFilename("attachedFile");
	
	Board board = new Board();
	board.setTitle(title);
	board.setWriter(user.getId());		// 작성자에 로그인한 사용자의 아이디를 저장한다.
	board.setContent(content);
	board.setFileName(fileName);
	
	BoardDao boardDao = new BoardDao();
	boardDao.insertBoard(board);
	
	response.sendRedirect("list.jsp");
%>