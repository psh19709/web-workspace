<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>샘플 애플리케이션</title>
</head>
<body>
<div class="container">
	<h1>jQuery DOM</h1>
	
	<div class="mb-3 border p-3">
		<h3>연습</h3>
		<p>첫번째</p>
		<p id="selected-p">두번째</p>
		<p>세번째</p>
		<p>네번째</p>
	</div>
	
	<div class="mb-3 p-3">
		<div class="row border mb-3 p-3">
			<div class="col border">1-1</div>
			<div class="col border">1-2</div>
			<div class="col border">1-3</div>
		</div>
		<div class="row border mb-3 p-3">
			<div class="col border">2-1</div>
			<div class="col border">2-2</div>
			<div class="col border">2-3</div>
		</div>
		<div class="row border mb-3 p-3">
			<div class="col border">3-1</div>
			<div class="col border">3-2</div>
			<div class="col border">3-3</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	
	// 선택된 엘리먼트의 바로 앞에 있는 엘리먼트가 포함된 jQuery객체를 반환한다.
	$("#selected-p").prev().addClass("fw-bold text-danger");
	// 선택된 엘리먼트의 앞에 위치하는 모든 엘리먼트가 포함된 jQuery객체를 반환한다.
	$("#selected-p").prevAll().addClass("border border-danger");
	// 선택된 엘리먼트의 바로 다음에 있는 엘리먼트가 포함된 jQuery객체를 반환한다.
	$("#selected-p").next().addClass("fw-bold text-primary");
	// 선택된 엘리먼트 다음에 위치하는 모든 엘리먼트가 포함된 jQuery객체를 반환한다.
	$("#selected-p").nextAll().addClass("border border-primary");
	// 선택된 엘리먼트의 모든 형제 엘리먼트가 포함된 jQuery객체를 반환한다.
	$("#selected-p").siblings().addClass("bg-light");
	
	// ".row"로 선택된 엘리먼트 중에서 ":first"에 해당하는 엘리먼트를 선택한다.
	// 따라서, <div class="row"></div> 중에서 첫번째 엘리먼트가 선택됨
	$(".row").filter(":first").addClass('bg-warning');
	
	// ".row"로 선택된 엘리먼트의 자손 엘리먼트 중에서 ":first"에 해당하는 엘리먼트를 선택한다.
	// 따라서, <div class="col">1-1</div>, <div class="col">2-1</div>, <div class="col">3-1</div> 중에서 첫번째 엘리먼트들이 각각 선택됨
	$(".row").find(":first").addClass('bg-danger');
})
</script>
</body>
</html>