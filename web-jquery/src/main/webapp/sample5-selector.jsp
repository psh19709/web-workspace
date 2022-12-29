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
	<h1>jQuery 선택자</h1>
   	<form class="border  bg-light p-3">
   		<div class="mb-2">
   			<label class="form-label">이름</label>
   			<input type="text" class="form-control" name="username" />
   		</div>
   		<div class="mb-2">
   			<label class="form-label">아이디</label>
   			<input type="text" class="form-control" name="id" id="user-id" />
   		</div>
   		<div class="mb-2">
   			<label class="form-label">비밀번호</label>
   			<input type="password" class="form-control" name="pwd" id="user-pwd" />
   		</div>
   		<div class="mb-2">
   			<label class="form-label">이메일</label>
   			<input type="text" class="form-control" name="email" id="user-email" />
   		</div>
   		<div class="mb-2">
   			<label class="form-label">전화번호</label>
   			<input type="text" class="form-control" name="tel" id="user-tel" />
   		</div>
   		<div class="mb-2">
   			<label class="form-label">생일</label>
   			<input type="date" class="form-control" name="birth" id="user-birth" />
   		</div>
   		<div class="mb-2">
   			<label class="form-label">보유기술</label>
   			<div>
	            <div class="form-check form-check-inline">
	                 <input class="form-check-input" type="checkbox" name="skill" value="java" id="skill-1">
	                 <label class="form-check-label">자바</label>
	            </div>
	            <div class="form-check form-check-inline">
	                 <input class="form-check-input" type="checkbox" name="skill" value="python" id="skill-2">
	                 <label class="form-check-label">파이썬</label>
	            </div>
	            <div class="form-check form-check-inline">
	                 <input class="form-check-input" type="checkbox" name="skill" value="db" id="skill-3">
	                 <label class="form-check-label">데이터베이스</label>
	            </div>
	            <div class="form-check form-check-inline">
	                 <input class="form-check-input" type="checkbox" name="skill" value="javascript" id="skill-4">
	                 <label class="form-check-label">자바스크립트</label>
	            </div>
	            <div class="form-check form-check-inline">
	                 <input class="form-check-input" type="checkbox" name="skill" value="react" id="skill-5">
	                 <label class="form-check-label">리액트</label>
	            </div>
	            <div class="form-check form-check-inline">
	                 <input class="form-check-input" type="checkbox" name="skill" value="vuejs" id="skill-6">
	                 <label class="form-check-label">뷰</label>
	            </div>
	            <div class="form-check form-check-inline">
	                 <input class="form-check-input" type="checkbox" name="skill" value="vallira" id="skill-7">
	                 <label class="form-check-label">바닐라스크립트</label>
	            </div>
	            <div class="mb-2">
	            	<label class="form-label">근무지</label>
	            	<select class="form-select" name="city">
	            		<option value="" selected disabled>선택하세요</option>
	            		<option value="seoul">서울</option>
	            		<option value="incheon">인천</option>
	            		<option value="kyunggi">경기</option>
	            		<option value="sejong">세종</option>
	            	</select>
	            </div>
	            <div>
	            	<label class="form-label">기타사항</label>
	            	<textarea rows="5" class="form-select" name="memo"></textarea>
	            </div>
        	</div>
   		</div>
   	</form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	// 속성선택자로 엘리먼트 선택하기
	//$("input[name=birth]").val("2022-11-30");
	//$("#user-birth").val("2022-11-30");
	
	// 속성 선택자로 엘리먼트 선택하기
	//$("input[name=pwd]").prop("disabled", true);
	//$("#user-pwd").prop("disabled", true);
	
	// 속성선택자로 엘리먼트 선택하기
	// $("input[name=email]").prop("disabled", true);
	//$("#user-email").prop("disabled", true);
	
	//속성 선택자로 엘리먼트 선택하기
	//$("input[name=skill]").prop("checked", true);
	//$("#skill-1, #skill-2, #skill-3, #skill-4, #skill-5").prop("checked", true);
	
	//$("input").prop("disabled", true);	// 태그명이 input인 엘리먼트를 선택하고 비활성화 시킨다.
	// 폼 선택자
	//$(":input").prop("disabled", true);	// 모든 입력필드를 선택하고 비활성화 시킨다.
	
	// 폼 필터 선택자
	//$(":input")와 $("input, select, textarea")는 동일하다
	//$(":text")와 $("input[type=text]")는 동일하다
	//$(":password")와 $("input[type=password]")는 동일하다
	//$(":radio")와 $("input[type=radio]")는 동일하다
	//$(":checkbox")와 $("input[type=checkbox]")는 동일하다
	//$(":file")와 $("input[type=file]")는 동일하다
	//$(":disabled")는 비활성화된 폼 요소를 선택한다.
	//$(":checked")는 체크된 체크박스나 라디오 버튼을 선택한다.
	//$(":selected")는 선택된 <option>을 선택한다.
	
</script>

</body>
</html>