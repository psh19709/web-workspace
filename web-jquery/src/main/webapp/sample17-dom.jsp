<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>웹 애플리케이션</title>
</head>
<body>
<div class="container">
	<h1>jQuery DOM</h1>
	
	<div class="mb-3">
		<button class="btn btn-primary">버튼</button>
	</div>
	
	<div class="mb-3" id="btn-target">
		<button class="btn btn-outline-primary" id="btn-add">클래스 추가</button>
		<button class="btn btn-outline-primary" id="btn-remove">클래스 삭제</button>
		<button class="btn btn-outline-primary" id="btn-toggle">클래스 토글</button>
		<button class="btn btn-outline-primary" id="btn-has">클래스 포함여부 확인</button>
	</div>
	<div class="mb-3">
		<a href="" class="text-dacoration-none text-dark" id="btn-toggle-display">[보기]</a>
	</div>
	
	<div class="mb-3 d-none" id="target-collapse">
		<h3>메뉴</h3>
		<ul>
			<li>커피</li>
			<li>커피</li>
			<li>커피</li>
			<li>커피</li>
			<li>커피</li>
			<li>커피</li>
			<li>커피</li>
			<li>커피</li>
			<li>커피</li>
			<li>커피</li>
		</ul>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	var $targetButton = $("#btn-target");
	var $targetCollapse = $("#target-collapse");
	
	$("#btn-toggle-display").click(function(event){
		event.preventDefault();
		$targetCollapse.toggleClass("d-none");
		
		if($targetCollapse.hasClass("d-none")) {
			$(this).text("[보기]");
		} else {
			$(this).text("[감추기]");
		}
	});
	
	$("#btn-add").click(function(){
		$targetButton.addClass("btn-lg");
	});
	
	$("#btn-remove").click(function() {
		$targetButton.removeClass("btn-lg");
	});
	
	$("#btn-toggle").click(function(){
		$targetButton.toggleClass("disabled");
	});
	
	$("#btn-has").click(function(){
		
		var isDisabled = $targetButton.hasClass('disabled');
		alert(isDisabled);
	})
})

</script>
</body>
</html>