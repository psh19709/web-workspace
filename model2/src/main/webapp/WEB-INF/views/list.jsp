<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>애플리케이션</title>
</head>
<body>
<div class="container">
   <div class="row mb-3">
	   	<div class="col-12">
	   		<h1>목록 페이지</h1>
	   	</div>
   </div>
   
   <div class="row mb-3">
	   	<div class="col-12">
	   		<p>게시글 목록을 확인하세요. <span class="float-end">현재 페이지 : <strong>${param.page }</strong></span></p>
	   	</div>
   </div>
   
   <div class="row mb-3">
   		<div class="col-12">
   			<form class="row row-cols-sm-auto g-3 align-items-center float-end" method="get" action="list.hta">
   				<input type="hidden" name="page" value="${param.page }"/>
   				<div class="col-12">
   					<select class="form-select" name="opt">
   						<option value="title" ${param.opt == 'title' ? 'selected' : '' }>제목</option>
   						<option value="writer" ${param.opt eq 'writer' ? 'selected' : '' }>작성자</option>
   						<option value="content" ${param.opt eq 'content' ? 'selected' : '' }>내용</option>
   					</select>
   				</div>
   				<div class="col-12">
   					<input type="text" class="form-control" name="keyword" value="${param.keyword }"/>
   				</div>
   				<div class="col-12">
   					<button type="submit" class="btn btn-primary">검색</button>
   				</div>
   			</form>
   		</div>
   </div>
   
  <div class="row mb-3">
      <div class="col-12">
         <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
               <li class="page-item ${param.page <= 1 ? 'disabled' : '' }">
                  	<a class="page-link" href="list.hta?page=${param.page - 1 }">이전</a>
               </li>
	               <li class="page-item"><a class="page-link ${param.page eq 1 ? 'active' : '' }" href="list.hta?page=1">1</a></li>
	               <li class="page-item"><a class="page-link ${param.page eq 2 ? 'active' : '' }" href="list.hta?page=2">2</a></li>
	               <li class="page-item"><a class="page-link ${param.page eq 3 ? 'active' : '' }" href="list.hta?page=3">3</a></li>
	               <li class="page-item"><a class="page-link ${param.page eq 4 ? 'active' : '' }" href="list.hta?page=4">4</a></li>
	               <li class="page-item"><a class="page-link ${param.page eq 5 ? 'active' : '' }" href="list.hta?page=5">5</a></li>
	               <li class="page-item ${param.page >= 5 ? 'disabled' : '' }">
                 	 <a class="page-link" href="list.hta?page=${param.page + 1 }">다음</a>
               </li>
            </ul>
         </nav>
      </div>
   </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>