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
	<h1>jQuery 이벤트</h1>
	
	<div class="mb-3">
		<a href="http://www.daum.net" id="link-1">링크1</a>
		<a href="http://www.naver.com" id="link-2">링크2</a>
	</div>
	
	<div class="mb-5">
		<h3>링크정보</h3>
		<p id="message-box"></p>
	</div>
	
	<div class="mb-3">
		<form id="form-login" method="post" action="login.jsp">
			<div class="mb-2">
				<label class="form-label">아이디</label>
				<input type="text" class="form-control" name="id" />
			</div>
			<div class="mb-2">
				<label class="form-label">비밀번호</label>
				<input type="password" class="form-control" name="password" />
			</div>
			 	<div class="text-end">
            	<button type="submit" class="btn btn-primary btn-sm">로그인</button>
        	</div>
		</form>
	</div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	// Document객체가 준비되면 자동으로 실행되는 콜백함수를 등록한다.
	// 콜백함수에서는 이벤트처리가 필요한 엘리먼트를 검색해서 각각 엘리먼트에 이벤트핸들러 함수를 등록하는 작업을 수행한다.
	// 콜백함수에서는 서버와 HTTP 통신을 수행해서 초기 데이터를 획득해서 화면에 표시하는 작업을 수행한다(AJAX 작업)
	$(function () {
		
		/*
			기본동작이 지정된 엘리먼트에서 이벤트 발생시 실행되는 기본동작이 일어나지 않게 하기
			1. event.preventDefault() 메소드 사용
				$("#link-1").click(function(event){
					event.preventDefault();	// 이벤트에 대한 엘리먼트의 기본동작이 일어나지 않게한다.
					
					// 수행문;
				});
				
			2. 이벤트 핸들러에서 return false값 반환
				$("#link-1").click(function(event){
					// 수행문;
					// 수행문;
					
					return false;	// 이벤트에 대한 엘리먼트의 기본동작이 일어나지 않게한다.
				});
			
			// 폼에서 입력값 유효성을 체크해서 폼 입력값을 서버로 제출할지, 제출하지 않을 지 제어할 수 있다.
			$("#form-login").submit(function(event){
				
				//입력값 유효성 체크
				if(입력값이 유효하지 않다면) {
					return false;	// 폼 입력값이 서버로 제출되지 않는다.
				}
				if(입력값이 유효하지 않다면) {
					return false;	// 폼 입력값이 서버로 제출되지 않는다.
				}
				return true;		// 폼 입력값이 서버로 제출되낟.
			});
			
		*/
		
		
		// 링크1에서 클릭이벤트가 발생했을 때 실행할 이벤트 핸들러 함수를 등록한다.
		$("#link-1").click(function(event){
			event.preventDefault();
			// this는 이벤트가 발생할 엘리먼트 객체다.
			// $(this)는 엘리먼트객체가 포함된 jQuery 객체를 반환한다.
			// $(this).attr("속성명")은 선택된 엘리먼트에서 지정된 속성명에 대한 속성값을 반환한다.
			var linkAddress = $(this).attr("href");
			// .text(컨텐츠)는 선택된 엘리먼트의 텍스트 컨텐츠 값을 변경한다.
			$("#message-box").text(linkAddress);
		});
		
		// 링크2에서 클릭이벤트가 발생했을 때 실행할 이벤트 핸들러 함수를 등록한다.
		$("#link-2").click(function(event){
			var linkAddress = $(this).attr("href");
			$("#message-box").text(linkAddress);
			
			return false;
		});
		
		// 폼에서 submit 이벤트가 발생했을 때 실행할 이벤트 핸들러 함수를 등록한다.
		$("#form-login").submit(function(event){
			//event.preventDefault();
			
			//.val()은 입력요소의 값을 반환한다.
			var idValue = $(":input[name=id]").val();
			if(idValue === "") {
				alert("아이디는 필수입력값입니다.");
				return false;
			}
			var passwordValue = $(":input[name=password]").val();
			if(passwordValue === "") {
				alert("비밀번호는 필수입력값입니다.");
				return false;
			}
			return true;
		});
	})
</script>
</body>
</html>