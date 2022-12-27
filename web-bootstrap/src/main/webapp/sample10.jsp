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
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
   <div class="container">
      <!-- 
         .me-auto가 적용된 메뉴는 내비바의 왼쪽에 위치한다.
         .me-auto가 적용되지 않은 메뉴의 내비바의 오른쪽에 위치한다.
       -->
      <ul class="navbar-nav me-auto">
         <li class="nav-item"><a class="nav-link" href="">홈</a></li>
         <li class="nav-item"><a class="nav-link active" href="">게시판</a></li>
         <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
               게시판 관리
            </a>
            <ul class="dropdown-menu">
               <li><a class="dropdown-item" href="#">게시판 등록</a></li>
               <li><a class="dropdown-item" href="#">게시판 수정</a></li>
               <li><a class="dropdown-item" href="#">게시판 삭제</a></li>
               <li><hr class="dropdown-divider"></li>
               <li><a class="dropdown-item" href="#">게시판 정렬</a></li>
            </ul>
         </li>
      </ul>
      
      <span class="navbar-text"><strong class="text-white">홍길동님</strong>님 환영합니다.</span>
      <ul class="navbar-nav">
         <li class="nav-item"><a class="nav-link" href="">로그인</a></li>
         <li class="nav-item"><a class="nav-link" href="">회원가입</a></li>
         <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
               내정보
            </a>
            <ul class="dropdown-menu">
               <li><a class="dropdown-item" href="#">내정보 보기</a></li>
               <li><hr class="dropdown-divider"></li>
               <li><a class="dropdown-item" href="#">주문내역 보기</a></li>
               <li><a class="dropdown-item" href="#">취소내역 보기</a></li>
               <li><a class="dropdown-item" href="#">장바구니 보기</a></li>
            </ul>
         </li>
         <li class="nav-item"><a class="nav-link" href="">로그아웃</a></li>
      </ul>
   </div>
</nav>
<div class="container">
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>