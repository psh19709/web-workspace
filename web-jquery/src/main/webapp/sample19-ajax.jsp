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
	<h1>jQuery ajax</h1>
   	
   	<form method="post" action="register.jsp" class="border bg-light p-3">
   		<div class="mb-3">
   			<label class="form-label">아이디</label>
   			<input type="text" class="form-control" name="id" />
   			<div class="form-text" id="id-help-block">아이디는 3글자 이상 입력하세요.</div>
   		</div>
   		<div class="mb-3">
   			<label class="form-label">비밀번호</label>
   			<input type="password" class="form-control" name="pwd" />
   		</div>
   		<div class="mb-3">
   			<label class="form-label">이름</label>
   			<input type="text" class="form-control" name="name" />
   		</div>
   		<div class="text-end">
   			<button type="submit" class="btn btn-primary btn-sm">등록</button>
   		</div>
   	</form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	var $idHelpBlock = $("#id-help-block");
	
	$(":input[name=id]").keyup(function(){
		var inputedUserId = $(this).val();
		// 입력한 아이디가 3글자 이하면 에러메세지를 표시한다.
		if(inputedUserId.length <= 3) {
			$idHelpBlock.addClass('text-danger').text("아이디는 3글자 이상 입력하세요.");
			return;
		}
		/*
			$.get(url, {name:value, name:value}, 콜백함수);
				- url : 요청URL, a-jax 요청을 처리하는 jsp의 경로
				- data : jsp로 보내는 요청파라미터 정보
					쿼리스트링 형식
						"name=value&name=value"
					자바스크립트 객체 형식
						{name=value, name=value, name=value}
				- 콜백함수 : 성공적인 응답이 오면 자동적으로 실행되는 함수다.
					function(responseDate) { ... }
						* responseDate는 서버로 응답을 보내는 데이터다.
						* responseDate는 plainText, JSON, XML, HTML 등 다양한 형식이 가능하다.
						
		*/
		
		// 입력한 아이디가 4글자 이상이면 서버로 보내서 아이디 존재여부를 확인하는 요청을 보낸다.
		$.get("sample19-response.jsp", {userId : inputedUserId}, function(responseData) {
			$idHelpBlock.removeClass('text-success text-danger');
			
		if(responseData === 'exist') {
				$idHelpBlock.addClass('text-danger').text("이미 사용중인 아이디입니다.");
			} else if(responseData === 'notExist') {
				$idHelpBlock.addClass('text-success').text("사용가능한 아이디입니다.");
			} 
		});
	});
})
</script>
</body>
</html>