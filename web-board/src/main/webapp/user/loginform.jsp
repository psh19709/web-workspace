<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<title>익명 게시판</title>
<style type="text/css">
	textarea {
		resize: none;
	}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp">
	<jsp:param name="menu" value="login"/>
</jsp:include>
<div class="container my-3">
	<h1 class="mb-3 fs-4 border p-2 bg-light">로그인 폼</h1>
<%
	String errorCode = request.getParameter("error");
%>
	
	<p>아이디, 비밀번호 입력해서 로그인하세요</p>
<%
	if("fail".equals(errorCode)) {
%>

		<div class="alert alert-danger">
			<strong>로그인 실패</strong> 아이디 혹은 비밀번호가 일치하지 않습니다.
		</div>        
<%
	} else if("deny".equals(errorCode)) {
%>
		<div class="alert alert-danger">
			<strong>요청 거부</strong> 로그인한 사용자만 이용가능한 페이지입니다.
		</div>  
<%
	}
%>
	<div id="error-message-box" class="alert alert-danger d-none">
		<strong>입력값 누락</strong> <span id="message-box"></span>
	</div>
	<form class="bg-light border p-3" method="post" action="login.jsp" onsubmit="return checkLoginForm();">
		<div class="mb-3">
			<label class="form-label">아이디</label>
			<input type="text" class="form-control" name="id" />
		</div>
		<div class="mb-3">
			<label class="form-label">비밀번호</label>
			<input type="password" class="form-control" name="password" />
		</div>
		<div class="text-end">
			<a href="form.jsp" class="btn btn-secondary">회원가입</a>
			<button type="submit" class="btn btn-primary">로그인</button>
		</div>
	</form>
</div>
<script type="text/javascript">
	function checkLoginForm(){
		var idField = document.querySelector("[name=id]");
		var passwordField = document.querySelector("[name=password]");
		var errorMessageBox = document.querySelector("#error-message-box");
		var messageBox = document.querySelector("#message-box");
		
		if(idField.value === "") {
				errorMessageBox.classList.remove("d-none");
				messageBox.textContent = "아이디는 필수입력 값입니다.";
				idField.focus();
				return false;
		}
		if(passwordField.value === "") {
				errorMessageBox.classList.remove("d-none");
				messageBox.textContent = "비밀번호는 필수입력 값입니다.";
				passwordField.focus();
				return false;
		}
		
		return true;
	}
</script>

</body>
</html>