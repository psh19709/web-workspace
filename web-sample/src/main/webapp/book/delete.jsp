<%@page import="com.sample.dao.BookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. detail.jsp에서는 delete.jsp?bookNo=책번호 이 URL을 서버로 보내서 도서정보 삭제를 요청한다.
	// 2. 톰캣이 이 요청메세지를 분석해서 URL의 쿼리스트링값을 HttpServletRequest객체의 요청파라미터값을 저장한다.
	// 3. 톰캣은 폼입력값이 저장된 HttpServletRequet객체, HttpServletResponse객체를 delete.jsp의 
	//		_jspService(request, response)를 실행할 때 전달한다.
	// 4. delete.jsp에서는 요청파라미터값을 조회한다.
	
	// 요청파라미터에서 책번호를 조회한다.
	int bookNo = Integer.parseInt(request.getParameter("bookNo"));

	// BookDao객체를 생성해서 deleteBookByNo(int bookNo) 메소드를 실행시킨다.
	BookDao bookDao = new BookDao();
	bookDao.deleteBookByNo(bookNo);
	
	// 재요청 URL을 응답으로 보낸다.
	response.sendRedirect("list.jsp");
%>