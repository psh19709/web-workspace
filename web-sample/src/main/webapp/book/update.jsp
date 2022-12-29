<%@page import="com.sample.vo.Book"%>
<%@page import="com.sample.dao.BookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	// modifyform.jsp에서 제출한 폼입력값을 전부 조회한다.
	int no = Integer.parseInt(request.getParameter("no"));
	String title = request.getParameter("title");
	String author = request.getParameter("author");
	String publisher = request.getParameter("publisher");
	int price = Integer.parseInt(request.getParameter("price"));
	int discountPrice = Integer.parseInt(request.getParameter("discountPrice"));
	int stock = Integer.parseInt(request.getParameter("stock"));
	
	
	// 책번호로 책정보를 조회한다.
	BookDao bookDao = new BookDao();
	Book book = bookDao.getBookByNo(no);
	
	// 데이터베이스에 조회한 책정보를 수정폼에서 제출한 값으로 변경한다.
	book.setTitle(title);
	book.setAuthor(author);
	book.setPublisher(publisher);
	book.setPrice(price);
	book.setDiscountPrice(discountPrice);
	book.setStock(stock);
	
	// BookDao 객체의 updateBook(Book book) 메소드를 실행해서 변경된 책정보를 반영시킨다.
	bookDao.updateBook(book);
	
	// 이 JSP는 추가/변경/삭제 작업 중 하나를 수행하는 JSP임으로 재요청 URL을 응답으로 보낸다.
	response.sendRedirect("list.jsp");
%>