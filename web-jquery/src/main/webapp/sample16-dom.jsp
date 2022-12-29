<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>웹 애플리케이션</title>
<style>
	.btn-xs {
		--bs-btn-padding-y: .25rem; 
		--bs-btn-padding-x: .5rem; 
		--bs-btn-font-size: .75rem;
	}
</style>
</head>
<body>
<div class="container">
	<h1>jQuery DOM</h1>
   
   
   <div class="mb-3">
   		<table class="table">
   			<thead>
   				<tr>
					<th><input type="checkbox" id="checkbox-all" checked /></th>   
					<th>제목</th>				
					<th>수량</th>				
					<th>가격</th>				
					<th>구매가격</th>				
   				</tr>
   			</thead>
   			<tbody>
   				<tr>
   					<td><input type="checkbox" name="bookNo" value="10" checked /></td>
   					<td>이것이 자바다</td>
   					<td>1 권</td>
   					<td>35,000 원</td>
   					<td>35,000 원</td>
   				</tr>
   				<tr>
   					<td><input type="checkbox" name="bookNo" value="12" checked /></td>
   					<td>자바의 정석</td>
   					<td>1 권</td>
   					<td>30,000 원</td>
   					<td>30,000 원</td>
   				</tr>
   				<tr>
   					<td><input type="checkbox" name="bookNo" value="14" checked /></td>
   					<td>혼자서 공부하는 자바</td>
   					<td>1 권</td>
   					<td>32,000 원</td>
   					<td>32,000 원</td>
   				</tr>
   			</tbody>
   		</table>
   		<div class="mb-3 d-flex justify-content-between">
   			<span>
	   			<a href="" class="btn btn-secondary btn-xs" id="btn-delete-all">전체삭제</a>
	   			<a href="" class="btn btn-secondary btn-xs" id="btn-delete-selected">선택삭제</a>
   			</span>
   			<span>
	   			<a href="" class="btn btn-outline-primary btn-xs" id="btn-order-all">전체주문</a>
	   			<a href="" class="btn btn-outline-primary btn-xs" id="btn-order-selected">선택주문</a>
   			</span>
   		</div>
   </div>
   
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#checkbox-all").change(function(){
		// 전체선택 체크박스의 체크여부를 조회한다.
		var checkboxAllChecked = $(this).prop("checked");
		// 각 도서들 체크박스의 체크여부를 전체선택 체크박스의 체크여부와 같은 상태로 변경한다.
		$(":checkbox[name=bookNo]").prop('checked', checkboxAllChecked);
		
		toggleSelectedButton();
	});
	
	$(":checkbox[name=bookNo]").change(function(){
		// 전부 체크상태일 때 - 전체 선택 체크/삭제, 주문 활성화
		// 전부 체크해제상태일 떼 - 전체 선택 체크/삭제, 주문 비활성화
		// 하나 이상 체크상태일 때 - 전체 선택 체크/삭제, 주문 활성화
		toggleCheckBoxAll();
		toggleSelectedButton();
	});
	
	function toggleCheckBoxAll() {
		// 도서 체크박스 갯수 조회하기
		var checkboxLength = $(":checkbox[name=bookNo]").length;
		// 도서 체크박스 중에서 체크된 갯수 조회하기
		var checkedCheckboxLength =  $(":checkbox[name=bookNo]:checked").length;
		
		// 도서 체크박스의 갯수와 체크된 갯수가 일치하면 전체 선택 체크박스를 체크상태로 변경한다.
		$("#checkbox-all").prop("checked", checkboxLength == checkedCheckboxLength);
	}
	
	function toggleSelectedButton() {
		// 도서 체크박스 중에서 체크된 갯수 조회하기
		var checkCheckboxLength = $(":checkbox[name=bookNo]:checked").length;
		
		// 선택삭제버튼과 선택주문버튼을 포함하는 jQuery객체를 조회한다.
		var $btnDeleteSelected = $("#btn-delete-selected");
		var $btnOrderSelected = $("#btn-order-selected");
		
		// 체크된 체크박스가 0일때 선택삭제버튼과 선택 주문버튼에 disabled 클래스를 추가한다.
		// <a href="" class="btn btn-secondary btn-xs" /> => <a href="" class="btn btn-secondary btn-xs disabled" />
		if(checkCheckboxLength == 0) {
			$btnDeleteSelected.addClass("disabled");
			$btnOrderSelected.addClass("disabled");
			
		} else {
			$btnDeleteSelected.removeClass("disabled");
			$btnOrderSelected.removeClass("disabled");
		}
		
	}
})
</script>
</body>
</html>