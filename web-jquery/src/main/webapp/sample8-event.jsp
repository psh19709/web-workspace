<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
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
		<button class="btn btn-primary" id="btn-1">버튼1</button>
		<button class="btn btn-primary" id="btn-2">버튼2</button>
	</div>
	
	<div>
		<button class="btn btn-primary btn-sm" id="btn-on">on</button>
		<button class="btn btn-primary btn-sm" id="btn-one">one</button>
		<button class="btn btn-primary btn-sm" id="btn-off">off</button>
		<button class="btn btn-primary btn-sm" id="btn-trigger">trigger</button>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	// on버튼은 버튼1에 이벤트 핸들러를 등록시킨다.
	$('#btn-on').click(function() {
		// .on() 메소드는 선택된 엘리먼트에서 지정된 이벤트가 발생했을 때 실행할 이벤트 핸들러를 등록시킨다.
		$("#btn-1").on('click', function() {
			alert("버튼1이 클릭되었습니다.");
		})
	})
	
	// one버튼은 버튼2에 딱 한번만 실행할 이벤트 핸들러를 등록시킨다.
	$('#btn-one').click(function() {
		// .one() 메소드는 선택된 엘리먼트에서 지정된 이벤트가 발생했을 때 딱 한번한 시행할 이벤트 핸들러를 등록시킨다.
		$("#btn-2").one('click', function() {
			alert("버튼2이 클릭되었습니다.");
		})
	})
	
	// off버튼은 버튼1에 등록된 이벤트 핸들러를 삭제시킨다.
	$('#btn-off').click(function() {
		// .off() 메소드는 선택된 엘리먼트에서 지정된 이벤트명으로 등록한 이벤트 핸들러를 삭제시킨다.
		$("#btn-1").off('click');
	})
	// trigger버튼은 버튼1에서 이벤트를 강제발생시키다.
	$('#btn-trigger').click(function() {
		// .trigger() 메소드는 선택된 엘리먼트에서 지정된 이벤트를 강제로 발생시킨다.
		$("#btn-1").trigger('click');
	})
</script>
</body>
</html>