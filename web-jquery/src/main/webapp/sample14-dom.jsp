<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>샘플 애플리케이션</title>
</head>
<body>
<div class="container">
	<h1>jQuery DOM</h1>
	
	<div id="box" class="border p-3 mb-3">
		<p>내용</p>
		<p>내용</p>
		<p>내용</p>
		<p>내용</p>
	</div>
	
	<div class="border p-3 mb-3">
		<button class="btn btn-outline-primary" id="btn-append">append</button>
		<button class="btn btn-outline-primary" id="btn-prepend">prepend</button>
		<button class="btn btn-outline-primary" id="btn-after">after</button>
		<button class="btn btn-outline-primary" id="btn-before">before</button>
		<button class="btn btn-outline-primary" id="btn-empty">empty</button>
		<button class="btn btn-outline-primary" id="btn-remove">remove</button>
	</div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn-append").click(function(){
			$("#box").append("<p class='text-danger'>append</p>")
		});
		
		$("#btn-prepend").click(function(){
			$("#box").prepend("<p class='text-warning'>prepend</p>")
			
		});
		
		$("#btn-after").click(function(){
			$("#box").after("<p class='text-primary'>after</p>")
			
		});
		
		$("#btn-before").click(function(){
			$("#box").before("<p class='text-success'>before</p>")
			
		});
		
		$("#btn-empty").click(function(){
			$("#box").empty();
			
		});
		
		$("#btn-remove").click(function(){
			$("#box").remove();
			
		});
	})
</script>
</body>
</html>