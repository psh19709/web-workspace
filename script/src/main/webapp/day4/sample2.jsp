<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 이벤트</title>
</head>
<body>
	<h1>폼 이벤트</h1>
	<form method="post" action="login.jsp" onreset="return true;" onsubmit="return checkLoginform();">
		<div>
			<label>사용자명</label>
			<input type="text" name="username" />
		</div>
		<div>
			<label>비밀번호</label>
			<input type="password" name="userpwd" />
		</div>
		<button type="reset">취소</button>
		<button type="submit">로그인</button>
	</form>
	
	<script type="text/javascript">
		/*
			폼 이벤트
				onsubmit 이벤트
					submit 버튼을 클릭하면, <form />태그에서 onsubmit 이벤트가 발생한다.
					폼 입력값을 체크해서, 폼 입력값이 유효한 경우에만 서버로 제출되게 한다.
					onbubmit 이벤트에 대한 브라우저의 기본동작은 해당 이벤트가 <form />에서 발생하면 폼 입력값을 서버로 제출하는 것이다.
					* <button>버튼</button>, <button type="submit">버튼</button>, <input type="submit" value="버튼" />이 버튼들을 클릭하면
					  <form />태그에서 onsubmit 이벤트가 발생한다.
					* <button type="button">버튼</button>을 클릭하면<form />태그에서 onsubmit 이벤트가 발생하지 않는다.
				onreset 이벤트
					reset 버튼을 클릭하면, <from />태그에서 onreset 이벤트가 발생한다.
					onreset 이벤트에 대한 브라우저의 기본동작은 폼 입력값을 원래 값으로 리셋하는 것이다.
		*/
		function checkLoginform(){
			var el1 = document.querySelector("[name=username]");
			var el2 = document.querySelector("[name=userpwd]");
			
			if(el1.value === "") {
				alert("사용자명은 필수입력값입니다.");
				return false;
			}
			if(el2.value === "") {
				alert("비밀번호는 필수입력값입니다.");
				return false;
			}
			 return true;
					}
	</script>
</body>
</html>