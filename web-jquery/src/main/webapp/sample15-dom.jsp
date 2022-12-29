<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>샘플 애플리케이션</title>
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
	
	<form class="border bg-light p-3">
		<div class="mb-3">
			<label class="form-label">이름</label>
			<input type="text" class="form-control" name="name">
		</div>
		<div class="mb-3" id="box-career">
			<label class="form-label">
				경력사항 
				<button type="button" class="btn btn-outline-primary btn-sm" id="btn-add-career-field">추가</button>
			</label>
			<input type="text" class="form-control mb-2" name="career">
		</div>
		<div class="text-end">
			<button type="submit" class="btn btn-primary">등록</button>
		</div>
	</form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
$(function() {
	$("#btn-add-career-field").click(function() {
		
		var careerFieldLength = $("#box-career :input[name=career]").length;
		if (careerFieldLength >= 5) {
			alert("경력사항 입력필드는 최대 4개까지만 추가 가능합니다.");
			return;
		}
		
		var htmlContent = `
			<div class="row ">
				<div class="col-10">
					<input type="text" class="form-control mb-2" name="career">
				</div>
				<div class="col-2 text-end pt-1">
					<button type="button" class="btn btn-danger btn-xs">삭제</button>
				</div>
			</div>
		`;
		$("#box-career").append(htmlContent);
	});
	
	// <div id="box-career"> 내부에 미래에 추가된 삭제버튼을 클릭했을 때 실행될 이벤트 핸들러 함수등록하기
	$("#box-career").on("click", '.row .btn-danger', function(){
		// this는 클릭이벤트가 발생할 엘리먼트다.
		// $(this) 함수의 실행결과는 this를 포함한는 jQuery 객체다.
		
		// .closest('선택자')는 조상 엘리먼트 중에서 지정한 선택자에 해당하는 가장 가까운 조상엘리먼트가 포함된 jQuery객체를 반환한다.
		$(this).closest('.row').remove();
	});
})
</script>
</body>
</html>