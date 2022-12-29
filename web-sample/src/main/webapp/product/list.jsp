<%@page import="com.sample.util.StringUtils"%>
<%@page import="com.sample.vo.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.sample.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<title>상품 리스트</title>
</head>
<body>
   <div class="container py-5">
      <h1>상품 리스트</h1>
      
      <p>상품 리스트를 확인하세요 <a href="form.jsp" class="btn btn-primary btn-sm float-end">상품 등록</a></p>
      <%
      // 데이ㅓ베이스 엑세스 기능이 구현된 ProductDao객체를 생성한다
      	ProductDao productDao = new ProductDao();
      // 모든 상품정보를 제공하는 메소드를 실행해서 상품 목록을 획득한다.
      	List<Product> productList = productDao.getAllproducts();
      %>
      <table class="table">
         <thead>
            <tr>
               <th>번호</th>
               <th>제품명</th>
               <th>제조사</th>
               <th>가격</th>
               <th>할인가격 (할인율)</th>
               <th>판매여부</th>
            </tr>
         </thead>
         <tbody>
         
     <%   
         // 조회된 상품정보로 HTML 태그를 생성한다.
        for (Product product : productList) {
      %>
            <tr>
               <td><%=product.getNo() %></td>
               <td><a href="detail.jsp?proNo=<%=product.getNo() %>"><%=product.getName() %></a></td>
               <td><%=product.getMaker() %></td>
               <td><%=StringUtils.numberToText(product.getPrice()) %> 원</td>
               <td><strong class="text-danger"><%=StringUtils.numberToText(product.getDiscountPrice()) %> 원</strong> 
               		<small class="text-danger">(<%=product.getDiscountPerCent() %>%)</small></td>
               <td>
               <%
               		if("Y".equals(product.getOnSell())) {
               %>
               		<span class="badge text-bg-primary">판매중</span>
               <%
               		} else {
               %>
               		<span class="badge text-bg-secondary">재고없음</span>
               <%
               		}
               %>
               </td>
            </tr>
      <%
         }
      %>

         </tbody>
      </table>
   </div>
</body>
</html>