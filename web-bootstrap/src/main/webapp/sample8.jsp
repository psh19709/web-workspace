<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>웹 애플리케이션</title>
<style type="text/css">
   .btn-xs {
      --bs-btn-padding-y: .25rem; 
      --bs-btn-padding-x: .5rem; 
      --bs-btn-font-size: .75rem;"
   }
</style>
</head>
<body>
<div class="container">
   <div class="row my-3">
   	<div class="col-12">
   		<table class="table">
   			<thead>
   				<tr>
   					<th>번호</th>
   					<th>부서명</th>
   					<th>직급</th>
   					<th>이름</th>
   					<th></th>
   				</tr>
   			</thead>
   			<tbody>
   				<tr>
   					<td>100</td>
   					<td>영업1팀</td>
   					<td>과장</td>
   					<td>홍길동</td>
   					<td><button class="btn btn-outline-primary btn-xs" onclick="openEmployeeDetailModal(100)">상세보기</button></td>
   				</tr>
   				<tr>
   					<td>200</td>
   					<td>영업2팀</td>
   					<td>대리</td>
   					<td>김유신</td>
   					<td><button class="btn btn-outline-primary btn-xs" onclick="openEmployeeDetailModal(200)">상세보기</button></td>
   				</tr>
   				<tr>
   					<td>300</td>
   					<td>영업2팀</td>
   					<td>사원</td>
   					<td>강감찬</td>
   					<td><button class="btn btn-outline-primary btn-xs" onclick="openEmployeeDetailModal(300)">상세보기</button></td>
   				</tr>
   			</tbody>
   		</table>
   	</div>
	</div>
   <!-- 모달창 시작-->         
   <div class="modal fade" id="modal-detail-employee" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
       <div class="modal-dialog">
          <!-- 모달 컨텐츠 시작 -->
         <div class="modal-content">
             <!-- 모달 헤더부 시작 -->
            <div class="modal-header">
               <h1 class="modal-title fs-5" id="exampleModalLabel">직원 상세 정보</h1>
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
             <!-- 모달 헤더부 끝 -->
             <!-- 모달 바디부 시작 -->
            <div class="modal-body">
             	<table class="table">
             		<tbody>
             			<tr>
             				<th>사원번호</th><td><span id="emp-no"></span></td>
             			</tr>
             		</tbody>
             	</table>
            </div>
             <!-- 모달 바디부 끝 -->
             <!-- 모달 푸터부 시작 -->
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">확인</button>
            </div>
             <!-- 모달 푸터부 끝 -->
         </div>
          <!-- 모달 컨텐츠 끝 -->
      </div>
   </div>
   <!-- 모달창 끝-->
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	// 모달 객체를 생성한다.
	var employeeDetailModal = new bootstrap.Modal("#modal-detail-employee");
	
	function openEmployeeDetailModal(employeeNo){
		var span = document.querySelector("#emp-no");
		span.textContent = employeeNo;
		
		// 모달 창을 화면에 출력한다.
		employeeDetailModal.show();
	}
</script>
</body>
</html>