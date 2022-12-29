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
	
	<div class="row mb-3">
		<div class="col-3">
			<div class="card">
				<div class="card-header">부서목록</div>
				<div class="card-body">
					<ul class="list-group" id="dept-list-group">
						<li class="list-group-item" data-dept-target="#dept-100">인사부</li>
						<li class="list-group-item" data-dept-target="#dept-200">총무부</li>
						<li class="list-group-item" data-dept-target="#dept-300">관리부</li>
						<li class="list-group-item" data-dept-target="#dept-400">영업부</li>
						<li class="list-group-item" data-dept-target="#dept-500">기술부</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-9" id="dept-tables">
			<div id="dept-100">
				<p>인사부에 소속된 사원 목록을 확인하세요</p>
				<table class="table">
					<thead>
						<tr>
							<th>사원번호</th><th>이름</th><th>직위</th><th>연락처</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>E089</th><th>홍길동</th><th>주임</th><th>010-1111-1111</th>
						</tr>
						<tr>
							<th>E010</th><th>홍길동</th><th>대리</th><th>010-1111-1111</th>
						</tr>
						<tr>
							<th>E033</th><th>홍길동</th><th>사원</th><th>010-1111-1111</th>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="dept-200">
				<p>총무부에 소속된 사원 목록을 확인하세요</p>
				<table class="table">
					<thead>
						<tr>
							<th>사원번호</th><th>이름</th><th>직위</th><th>연락처</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>E031</th><th>김민식</th><th>부장</th><th>010-1111-1111</th>
						</tr>
						<tr>
							<th>E099</th><th>김민식</th><th>대리</th><th>010-1111-1111</th>
						</tr>
						<tr>
							<th>E003</th><th>김민식</th><th>차장</th><th>010-1111-1111</th>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="dept-300">
				<p>관리부에 소속된 사원 목록을 확인하세요</p>
				<table class="table">
					<thead>
						<tr>
							<th>사원번호</th><th>이름</th><th>직위</th><th>연락처</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>E022</th><th>김윤식</th><th>차장</th><th>010-1111-1111</th>
						</tr>
						<tr>
							<th>E029</th><th>김윤식</th><th>과장</th><th>010-1111-1111</th>
						</tr>
						<tr>
							<th>E043</th><th>김윤식</th><th>대리</th><th>010-1111-1111</th>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="dept-400">
				<p>영업부에 소속된 사원 목록을 확인하세요</p>
				<table class="table">
					<thead>
						<tr>
							<th>사원번호</th><th>이름</th><th>직위</th><th>연락처</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>E016</th><th>이재원</th><th>이사</th><th>010-1111-1111</th>
						</tr>
						<tr>
							<th>E009</th><th>이재원</th><th>차장</th><th>010-1111-1111</th>
						</tr>
						<tr>
							<th>E015</th><th>이재원</th><th>주임</th><th>010-1111-1111</th>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="dept-500">
				<p>기술부에 소속된 사원 목록을 확인하세요</p>
				<table class="table">
					<thead>
						<tr>
							<th>사원번호</th><th>이름</th><th>직위</th><th>연락처</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>E046</th><th>김유신</th><th>대리</th><th>010-1111-1111</th>
						</tr>
						<tr>
							<th>E078</th><th>김유신</th><th>사원</th><th>010-1111-1111</th>
						</tr>
						<tr>
							<th>E077</th><th>김유신</th><th>사원</th><th>010-1111-1111</th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
   
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	/*
	$("#dept-list-group .list-group-item").mouseenter(function(){
		// this는 이벤트가 발생한 엘리먼트 객체다
		//$(this)는 이벤트가 발생한 그 엘리먼트를 포함하는 jQuery객체를 반환한다. jQuery객체 = 이벤트가 발생한 엘리먼트 + jQuery 메소드
		$(this).addClass("active");
	})
	$("#dept-list-group .list-group-item").mouseleave(function(){
		// this는 이벤트가 발생한 엘리먼트 객체다
		//$(this)는 이벤트가 발생한 그 엘리먼트를 포함하는 jQuery객체를 반환한다. jQuery객체 = 이벤트가 발생한 엘리먼트 + jQuery 메소드
		$(this).removeClass("active");
	})
	*/
	
	// .hover(handler1, handler2) : 
	//			handler1은 mouseenter 이벤트 발생시 실행할 이벤트 핸들러함수
	//			handler2는 mouseleave 이벤트를 발생시 실행할 이벤트핸들러함수
	$("#dept-list-group .list-group-item").hover(function(){
		// this는 마우스가 진입한 엘리먼트다. 				<li class="list-group-item" data-dept-target="#dept-100">인사부<인사부>

		// 마우스가 진입한 엘리먼트에 active 클래스를 추가한다.	<li class="list-group-item active" data-dept-target="#dept-100">인사부<인사부>
		$(this).addClass('active');
		// 마우스가 진입한 엘리먼트에서 data-dept-target 속성값을 조회한다 deptDivId="#dept-100"
		var deptDivId = $(this).attr("data-dept-target");

		$("#dept-tables > div").hide();
		$(deptDivId).show();
	
	}, function(){
		$(this).removeClass('active');
		$("#dept-tables > div").hide();
	});
	
	// 사원목록이 표시되지 않게 한다
	$("#dept-tables > div").hide();
	
	// list-group-item중에서 첫번쨰 엘리먼트에서 mouseenter 이벤트를 강제발생시킨다.
	$("#dept-list-group .list-group-item:first").trigger("mouseenter"); 
	
	
	
</script>
</body>
</html>