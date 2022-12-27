<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>웹 애플리케이션</title>
</head>
<body>
<div class="container">
   <div class="row">
      <div class="col-3">
         <h3>아코디언</h3>
         <div class="accordion" id="accordion-sample">
              <div class="accordion-item">
                <h2 class="accordion-header" id="heading-1">
                     <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-1" aria-expanded="false" aria-controls="collapse-1">
                       게시판
                     </button>
                </h2>
                <div id="collapse-1" class="accordion-collapse collapse" aria-labelledby="heading-1" data-bs-parent="#accordion-sample">
                     <div class="accordion-body">
                       <div class="list-group">
                          <a href="" class="list-group-item list-group-item-action">공지사항</a>
                          <a href="" class="list-group-item list-group-item-action">자유게시판</a>
                          <a href="" class="list-group-item list-group-item-action">자료게시판</a>
                       </div>
                     </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="heading-2">
                     <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-2" aria-expanded="false" aria-controls="collapse-2">
                       게시판
                     </button>
                </h2>
                <div id="collapse-2" class="accordion-collapse collapse" aria-labelledby="heading-2" data-bs-parent="#accordion-sample">
                     <div class="accordion-body">
                       <div class="list-group">
                          <a href="" class="list-group-item list-group-item-action">공지사항</a>
                          <a href="" class="list-group-item list-group-item-action">자유게시판</a>
                          <a href="" class="list-group-item list-group-item-action">자료게시판</a>
                       </div>
                     </div>
                </div>
              </div>
         </div>
      </div>
   </div>
	<div class="row">
      <div class="col-12">
         <h3>경고창</h3>
         <div class="alert alert-success alert-dismissible fade show" role="alert">
              <strong>성공!</strong> 사용가능한 이메일 입니다.
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
         </div>
         <div class="alert alert-warning alert-dismissible fade show" role="alert">
              <strong>주의!</strong> 입력값을 확인하세요.
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
         </div>
         <div class="alert alert-danger alert-dismissible fade show" role="alert">
              <strong>오류!</strong> 사용할 수 없는 계정입니다.
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
         </div>
      </div>
   </div>
 	<div class="row">
      <h3>뱃지 활용하기</h3>
      <div class="col-4">
         <div class="card">
            <div class="card-body">
               <h5 class="card-title">11월 월간 보고서 작성</h5>
               <p class="card-text">12월 1일까지 보고서 제출하기</p>
               <div>
	               	<span>홍길동</span>
	               	<span class="float-end">2022년 12월 1일</span>
               </div>
               <div>
                  <span class="badge text-bg-primary">처리완료</span>
               </div>
            </div>
         </div>
      </div>
      <div class="col-4">
         <div class="card">
            <div class="card-body">
               <h5 class="card-title">11월 월간 보고서 작성</h5>
               <p class="card-text">12월 1일까지 보고서 제출하기</p>
               <div class="d-flex justify-content-between">
	               	<span>홍길동</span>
	               	<span>2022년 12월 1일</span>
               </div>
               <div>
                  <span class="badge text-bg-secondary">삭제</span>
               </div>
            </div>
         </div>
      </div>
      <div class="col-4">
         <div class="card">
            <div class="card-body">
               <h5 class="card-title">11월 월간 보고서 작성</h5>
               <p class="card-text">12월 1일까지 보고서 제출하기</p>
               <div>
                  <span class="badge text-bg-danger">처리지연</span>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
   	<div class="col-12">
	   		<h3>버튼</h3>
	   		<button class="btn btn-primary">primary</button>
	   		<button class="btn btn-secondary">secondary</button>
	   		<button class="btn btn-success">success</button>
	   		<button class="btn btn-info">info</button>
	   		<button class="btn btn-warning">warning</button>
	   		<button class="btn btn-danger">danger</button>
	   		<button class="btn btn-light">light</button>
	   		<button class="btn btn-dark">dark</button>
	   		
	   		<h3>버튼</h3>
	   		<button class="btn btn-outline-primary">primary</button>
	   		<button class="btn btn-outline-secondary">secondary</button>
	   		<button class="btn btn-outline-success">success</button>
	   		<button class="btn btn-outline-info">info</button>
	   		<button class="btn btn-outline-warning">warning</button>
	   		<button class="btn btn-outline-danger">danger</button>
	   		<button class="btn btn-outline-light">light</button>
	   		<button class="btn btn-outline-dark">dark</button>
	   		
	   		<h3>링크를 버튼스타일로</h3>
	   		<a href="" class="btn btn-outline-primary">primary</a>
	   		<a href="" class="btn btn-outline-secondary">secondary</a>
	   		<a href="" class="btn btn-outline-success">success</a>
	   		<a href="" class="btn btn-outline-info">info</a>
	   		<a href="" class="btn btn-outline-warning">warning</a>
	   		<a href="" class="btn btn-outline-danger">danger</a>
	   		<a href="" class="btn btn-outline-light">light</a>
	   		<a href="" class="btn btn-outline-dark">dark</a>
	   		
	   		<h3>버튼 사이즈</h3>
	        <button class="btn btn-primary btn-lg">큰 버튼</button>
	        <button class="btn btn-primary">기본버튼</button>
	        <button class="btn btn-primary btn-sm">작은 버튼</button>
	        <button class="btn btn-primary" 
	        	style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">더 작은 버튼</button>
	   		
	   		<h3>버튼 활성화/비활성화</h3>
	        <button class="btn btn-primary">활성화된 버튼</button>
	        <button class="btn btn-primary disabled">비활성화된 버튼</button>
	        <a href="" class="btn btn-primary">활성화된 버튼</a>
	        <a href="" class="btn btn-primary disabled">비활성화된 버튼</a>
	        
	        <h3>버튼 그룹</h3>
         	<div class="btn-group" role="group" aria-label="Basic outlined example">
              <button type="button" class="btn btn-outline-primary">전체주문</button>
              <button type="button" class="btn btn-outline-primary">선택주문</button>
         	</div>
   		</div>
   </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>