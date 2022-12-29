<%@page import="com.sample.dao.BookDao"%>
<%@page import="com.sample.vo.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. form.jsp에서 폼 이ㅂ력값을 요청메세지의 바디부에 포함시켜서 서버로 전달한다.
	// 2. 톰캣은 요청메세지를 분석해서 요청메세지의 바디부에 포함되어 있는 폼입력값을 HttpSeverletRequest에 요청파라미터로 저장한다.
	// 3. 톰캣은 폼입력값이 저장된 HttpServletRequet객체, HttpServletResponse객체를 register.jsp의 _jspService(request, response)를
	// 실행할 때 전달한다.
	// 4. register.jsp에서 작성한 모든 HTML태그와 자바코드는 register.jsp가 자바로 변환될 때 
	//    해당 자바클래스의 _jspService(HttpServletRequet request, HttpServletResponse response) 메소드에 포함된다.
	
	// 폼 입력값을 조회한다.
	String title = request.getParameter("title");
	String author = request.getParameter("author");
	String publisher = request.getParameter("publisher");
	int price = Integer.parseInt(request.getParameter("price"));
	int discountPrice = Integer.parseInt(request.getParameter("discountPrice"));
	int stock = Integer.parseInt(request.getParameter("stock"));
	
	// Book객체를 생성해서 책 정보를 담는다
	Book book = new Book();
	book.setTitle(title);
	book.setAuthor(author);
	book.setPublisher(publisher);
	book.setPrice(price);
	book.setDiscountPrice(discountPrice);
	book.setStock(stock);
	
	// BookDao 객체를 생성하고, insertBook 메소드를 실행시켜서 책정보를 저장한다.
	BookDao bookDao = new BookDao();
	bookDao.insertBook(book);
	
	// 추가/삭제/변경 작업 중 하나를 수행하였기 때문에 재 요청 URL을 응답으로 보낸다.
	response.sendRedirect("list.jsp");
	
	
%>