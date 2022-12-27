<%@page import="com.sample.util.StringUtils"%>
<%@page import="com.sample.vo.Board"%>
<%@page import="com.sample.dao.BoardDao"%>
<%@page import="com.sample.dao.ReviewDao"%>
<%@page import="com.sample.vo.Review"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 게시글번호, 작성자, 내용을 조회한다.
	int boardNo = StringUtils.stringToInt(request.getParameter("boardNo"));
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	// Review객체를 생성해서 리뷰정보를 저장한다.
	Review review = new Review();
	review.setWriter(writer);
	review.setContent(content);
	review.setBoardNo(boardNo);
	
	// ReviewDao객체를 생성하고, insertReview(Review review)를 실행해서 리뷰정보를 등록시킨다.
	ReviewDao reviewDao = new ReviewDao();
	reviewDao.insertReview(review);
	
	// BoardDao객체를 생성하고, getBoardByNo(int boardNo)를 실행해서 게시글정보를 조회한다.
	BoardDao boardDao = new BoardDao();
	Board board = boardDao.getBoardByNo(boardNo);
	// 조회된 게시글정보의 리뷰갯수를 1증가시킨다.
	board.setReviewCount(board.getReviewCount() + 1);
	
	// 변경된 게시글정보를 updateBoard(Board board)를 실행해서 반영시킨다.
	boardDao.updateBoard(board);
	
	// 추가/변경/삭제 작업 중 추가작업을 수행하였음으로 재요청 URL을 응답으로 보낸다.
	response.sendRedirect("detail.jsp?no=" + boardNo);
%>