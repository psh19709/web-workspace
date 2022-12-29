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
	<h1>텍스트 컨텐츠/html 컨텐츠/폼입력값/속성/프포퍼티 조회/변경하기</h1>
   
   <div class="mb-3">
   		<p id="el-1">연습</p>
   		<p id="el-2">연습</p>
   		
   		<p id="el-3"><strong>35,000 원</strong></p>
   		<p id="el-4"><strong>55,000 원</strong></p>
   		
   		<input type="text" name="username" class="form-control" id="el-5"/>
   		<input type="text" name="useremail" class="form-control" id="el-6"/>
   		
   		<img alt="" src="resources/images/sample.png" width="60" height="75" id="el-7"> 
   		<img alt="" src="resources/images/sample2.png" width="60" height="75" id="el-8"> 
   		
   		<input type="text" class="form-control" id="el-9" />
   		
   		<div class="form-check">
   			<input class="form-check-input" type="checkbox" value="자바" id="el-10" >
   			<label class="form-check-label" for="el-11">자바</label>
   		</div>
   </div>
   
   <div class="mb-3">
   		<button class="btn btn-outline-dark btn-sm">텍스트 컨텐츠 조회</button>
   		<button class="btn btn-outline-dark btn-sm">텍스트 컨텐츠 변경</button>
   		<button class="btn btn-outline-dark btn-sm">HTML 컨텐츠 변경</button>
   		<button class="btn btn-outline-dark btn-sm">HTML 컨텐츠 변경</button>
   		<button class="btn btn-outline-dark btn-sm">폼 입력값 조회</button>
   		<button class="btn btn-outline-dark btn-sm">폼 입력값 변경</button>
   		<button class="btn btn-outline-dark btn-sm">속성값 조회</button>
   		<button class="btn btn-outline-dark btn-sm">속성값 변경</button>
   		<button class="btn btn-outline-dark btn-sm">비활성화 하기</button>
   		<button class="btn btn-outline-dark btn-sm">활성화 하기</button>
   		<button class="btn btn-outline-dark btn-sm">체크하기</button>
   		<button class="btn btn-outline-dark btn-sm">체크해제하기</button>
   </div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	$("button:eq(0)").click(function(){
		// .text() : 엘리먼트의 텍스트 컨텐츠를 조회한다. 태그 사이의 텍스트를 읽어오는 것이다.
		var textContent = $("#el-1").text();
		alert(textContent);
	});
	
	$("button:eq(1)").click(function(){
		// .text(textContent) : 엘리먼트의 컨텐츠를 지정된 텍스트 컨텐츠로 변경한다. 태그 사이의 텍스트를 변경하는 것이다.
		$("#el-2").text("텍스트 컨텐츠 변경함.");
	});
	
	$("button:eq(2)").click(function(){
		// .html() : 엘리먼트의 html 컨텐츠를 조회한다. 태그 사이의 html 컨텐츠를 읽어오는 것이다.
		var htmlContent = $("#el-3").html();
		alert(htmlContent);
	});
	
	$("button:eq(3)").click(function(){
		// .html(htmlContent) : 엘리먼트의 컨텐츠를 지정된 HTML 컨텐츠로 변경한다. 태그 사이의 html 컨텐츠를 변경하는 것이다.
		$("#el-4").html('<strong class="text-danger">32,000원</strong>');

	});

	$("button:eq(4)").click(function(){
		// .val() : 폼 입력요소의 값을 조회한다.
		var value = $("#el-5").val();
		alert(value);
	});
	
	$("button:eq(5)").click(function(){
		// .val(value) : 폼 입력요소의 값을 지정된 값으로 변경한다.
		$("#el-6").val("hong@gmail.com");
	});
	
	$("button:eq(6)").click(function(){
		// .attr(name) : 엘리먼트에서 지정된 이름의 속성명으로 설정된 값을 조회한다.
		var value = $("#el-7").attr("src");
		alert(value);
	});
	
	$("button:eq(7)").click(function(){
		// .attr(name, value) : 엘리먼트에 지정된 속성명과 속성값을 추가한다. 해당 속성이 이미 존재하면 그 값을 변경한다.
		$("#el-8").attr("src", "resources/images/sample.png");
	});
	
	$("button:eq(8)").click(function(){
		// .prop("disabled", true) : 폼 입력요소 버튼을 비활성화시킨다.
		$("#el-9").prop("disabled", true);
	});
	
	$("button:eq(9)").click(function(){
		// .prop("disabled", false) : 폼 입력요소 버튼을 활성화시킨다.
		$("#el-9").prop("disabled", false);
	});
	
	$("button:eq(10)").click(function(){
		// .prop("checked", true) : 체크박스, 라디오버튼을 체크상태로 변경한다.
		$("#el-10").prop("checked", true);
	});
	
	$("button:eq(11)").click(function(){
		// .prop("checked", false) : 체크박스, 라디오버튼을 체크상태해제로 변경한다.
		$("#el-10").prop("checked", false);
	});
	
</script>

</body>
</html>