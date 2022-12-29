<%@page import="com.sample.util.StringUtils"%>
<%@page import="com.sample.vo.Product"%>
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
<title>상품 상세정보</title>
</head>
<body>
   <div class="container my-5">
      <h1>상품 상세정보</h1>
      
   <%
      // locahost/web-sample/product/detail.jsp?proNo=상품번호 
      // 위의 요청으로 요청객체에 전달된 요청파라미터값 조회하기
      int productNo = Integer.parseInt(request.getParameter("proNo"));
   
	  // ProductDao 객체를 생성하고, 상품번호를 전달받아서 상품상세정보를 반환하는 메소드를 실행한다.
	  ProductDao productDao = new ProductDao();
	  Product product = productDao.getProductByNo(productNo);
   %>
      <p><strong class="text-danger"><%=productNo %></strong>번 상품의 상세정보를 확인하세요.</p>
      
      <table class="table table-bordered">
         <colgroup>
            <col style="width: 15%;">
            <col style="width: 35%;">
            <col style="width: 15%;">
            <col style="width: 35%;">
         </colgroup>
         <tbody>
            <tr>
               <th>상품 번호</th>
               <td><%=product.getNo() %></td>
               <th>등록일자</th>
               <td><%=product.getCreatedDate() %></td>
            </tr>
            <tr>
               <th>상품명</th>
               <td><%=product.getName() %></td>
               <th>제조회사</th>
               <td><%=product.getMaker() %></td>
            </tr>
            <tr>
               <th>가격</th>
               <td><%=product.getPrice() %></td>
               <th>할인가격</th>
                <td><strong class="text-danger"><%=StringUtils.numberToText(product.getDiscountPrice()) %> 원</strong> 
               		<small class="text-danger">(<%=product.getDiscountPerCent() %>%)</small></td>
            </tr>
            <tr>
               <th>재고수량</th>
               <td><%=product.getStock() %></td>
               <th>판매여부</th>
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
         </tbody>
      </table>
      <div class="text-end">
         <a href="list.jsp" class="btn btn-outline-primary">목록</a>
      </div>
   </div>
</body>
</html>