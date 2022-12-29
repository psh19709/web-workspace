<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<title>책 등록</title>
</head>
<body>
   <div class="container py-5">
      <h1>상품 등록 폼</h1>
   
      <p>상품 정보를 입력하고, 등록하세요.</p>
      <form class="bg-light border p-3" method="post" action="register.jsp">
         <div class="mb-3">
            <label class="form-label">상품명</label>
            <input type="text" class="form-control" name="name" />
         </div>
         <div class="mb-3">
            <label class="form-label">제조회사</label>
            <select class="form-select" name="maker">
               <option value="" selected="selected" disabled="disabled"> 제조회사를 선택하세요</option>
               <option value="애플"> 애플</option>
               <option value="삼성전자"> 삼성전자</option>
               <option value="LG전자"> LG전자</option>
               <option value="샤오미"> 샤오미</option>
               <option value="레노버"> 레노버</option>
               <option value="델"> 델</option>
            </select>
         </div>
         <div class="mb-3">
            <label class="form-label">상품 가격</label>
            <input type="number" class="form-control" name="price" min="0" step="10000" />
         </div>
         <div class="mb-3">
            <label class="form-label">할인율</label>
            <div class="form-check">
               <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="discountRate" value="0.0">
                    <label class="form-check-label">0 %</label>
               </div>
               <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="discountRate" value="0.05">
                    <label class="form-check-label">5 %</label>
               </div>
               <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="discountRate" value="0.1">
                    <label class="form-check-label">10 %</label>
               </div>
               <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="discountRate" value="0.15" checked="checked">
                    <label class="form-check-label">15 %</label>
               </div>
               <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="discountRate" value="0.2">
                    <label class="form-check-label">20 %</label>
               </div>
               <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="discountRate" value="0.25">
                    <label class="form-check-label">25 %</label>
               </div>
               <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="discountRate" value="0.3">
                    <label class="form-check-label">30 %</label>
               </div>
            </div>
         </div>
         <div class="mb-3">
            <label class="form-label">등록 수량</label>
            <input type="number" class="form-control" name="stock" value="10" min="1" step="1" max=100 />
         </div>
         <div class="text-end">
            <a href="list.jsp" class="btn btn-secondary">취소</a>
            <button type="submit" class="btn btn-primary">등록</button>
         </div>
      </form>
   </div>
</body>
</html>