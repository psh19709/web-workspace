<%@page import="com.sample.dao.ProductDao"%>
<%@page import="com.sample.vo.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// form.jsp의 입력폼에서 여기로 제출한 요청파라미터값 조회하기
	String name = request.getParameter("name");
	String maker = request.getParameter("maker");
	int price = Integer.parseInt(request.getParameter("price"));
	double discountRate = Double.parseDouble(request.getParameter("discountRate"));
	int stock = Integer.parseInt(request.getParameter("stock"));
	
	// Product 객체를 생성해서 전달받은 상품정보를 객체에 담는다.
	Product product = new Product();
	product.setName(name);
	product.setMaker(maker);
	product.setPrice(price);
	product.setDiscountRate(discountRate);
	product.setStock(stock);
	
	//ProductDao 객체를 생성하고, 상품정보를 테이블에 저장하는 메소드를 실행시킨다.
	ProductDao productDao = new ProductDao();
	productDao.insertProduct(product);
	
	// 브라우저에게 재요청할 URL을 응답으로 보낸다.
	response.sendRedirect("list.jsp");
%>