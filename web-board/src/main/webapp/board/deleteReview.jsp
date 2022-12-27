<%@page import="com.sample.vo.Board"%>
<%@page import="com.sample.dao.BoardDao"%>
<%@page import="com.sample.dao.ReviewDao"%>
<%@page import="com.sample.util.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 게시글번호와 리뷰번호를 조회한다.
	int boardNo = StringUtils.stringToInt(request.getParameter("boardNo"));
	int reviewNo = StringUtils.stringToInt(request.getParameter("reviewNo"));
	
	// ReviewDao객체를 생성해서, deleteReview(int reviewNo)를 실행해서 리뷰를 삭제한다.
	ReviewDao reviewDao = new ReviewDao();
	reviewDao.deleteReview(reviewNo);
	
	// BoardDao객체를 생성해서, getBoardByNo(int boardNo)를 실행해서 게시글정보를 조회한다.
	BoardDao boardDao = new BoardDao();
	Board board = boardDao.getBoardByNo(boardNo);
	// 게시글정보의 리뷰갯수를 1감소시킨다.
	board.setReviewCount(board.getReviewCount() - 1);
	
	// 변경된 게시글 정보를 updateBoard(Board board)를 실행해서 반영시킨다.
	boardDao.updateBoard(board);
	
	// 재요청 URL을 응답으로 보낸다.
	response.sendRedirect("detail.jsp?no=" + boardNo);
%>