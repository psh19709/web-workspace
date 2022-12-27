<%@page import="com.sample.vo.User"%>
<%@page import="com.sample.util.StringUtils"%>
<%@page import="com.sample.vo.Board"%>
<%@page import="com.sample.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 인증된 사용자 정보를 조회한다. 인증된 사용자정보가 존재하지 않으면 loginform.jsp를 재요청하는 응답을 보낸다.
	User user = (User) session.getAttribute("loginedUser");
	if(user == null) {
		response.sendRedirect("../user/loginform.jsp?error=deny");
		return;
	}

	// 게시글 정보를 삭제하세요. sample_boards의 board_delete를 'Y'으로 변경하세요
	
	int boardNo = StringUtils.stringToInt(request.getParameter("no"));
	
	BoardDao boardDao = new BoardDao();
	Board board = boardDao.getBoardByNo(boardNo);
	
	// 로그인한 사용자의 아이디와 게시글 작성자의 아이디가 서로 다르면 게시글을 삭제할 수 없다.
	// detail.jsp를 재요청하는 URL을 응답으로 보낸다.
	if(!user.getId().equals(board.getWriter())){
		response.sendRedirect("detail.jsp?no=" + boardNo + "&error=deny");
		return;
	}
	
	board.setDeleted("Y");
	boardDao.updateBoard(board);
	
	response.sendRedirect("list.jsp");
%>