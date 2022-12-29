<%@page import="com.sample.vo.Department"%>
<%@page import="java.util.List"%>
<%@page import="com.sample.dao.DepartmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>부서별 사원 리스트</h1>
<%
	// DepartmentDao 객체를 획득한다.
	DepartmentDao departmentDao = DepartmentDao.getInstance();
	// 모든 부서목록을 조회한다.
	List<Department> departmentList = departmentDao.getAllDepartments();
%>
	<div class="row my-3">
		<div class="col-3">
			<div class="card">
				<div class="card-header">부서목록</div>
				<div class="card-body">
					<ul class="list-group" id="list-departments">
<%
	for (Department dept : departmentList) {
%>
						<li class="list-group-item" style="cursor: pointer;" data-dept-id="<%=dept.getId() %>"><%=dept.getName() %></li>
<%
	}
%>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-9">
			<div class="card">
				<div class="card-header">사원 리스트</div>
				<div class="card-body">
					<table class="table table-sm" id="table-employees">
						<colgroup>
							<col width="20%">
							<col width="20%">
							<col width="20%">
							<col width="20%">
							<col width="20%">
						</colgroup>
						<thead>
							<tr>
								<th>아이디</th>
								<th>이름</th>
								<th>연락처</th>
								<th>직종</th>
								<th>입사일</th>
							</tr>
						</thead>
						<tbody>
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal" tabindex="-1" id="modal-info-employee">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">사원 상세정보</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<p>사원의 상세정보를 확인하세요</p>
				<table class="table table-bordered">
					<colgroup>
						<col width="15%">
						<col width="35%">
						<col width="15%">
						<col width="35%">
					</colgroup>
					<tbody class="text-center">
						<tr>
							<th class="bg-secondary text-white">아이디</th>
							<td><span id="cell-id"></span></td>
							<th class="bg-secondary text-white">입사일</th>
							<td><span id="cell-hire-date"></span></td>
						</tr>
						<tr>
							<th class="bg-secondary text-white">성</th>
							<td><span id="cell-last-name"></span></td>
							<th class="bg-secondary text-white">이름</th>
							<td><span id="cell-first-name"></span></td>
						</tr>
						<tr>
							<th class="bg-secondary text-white">이메일</th>
							<td><span id="cell-email"></span></td>
							<th class="bg-secondary text-white">연락처</th>
							<td><span id="cell-phone-number"></span></td>
						</tr>
						<tr>
							<th class="bg-secondary text-white">직종</th>
							<td><span id="cell-job-id"></span></td>
							<th class="bg-secondary text-white">급여</th>
							<td><span id="cell-salary" class="text-bold"></span> 달러</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	var employeeInfoModal = new bootstrap.Modal("#modal-info-employee");
	var $employeesTbody = $("#table-employees tbody");
	
	// 부서명 리스트아이템을 클릭할 때 실행되는 이벤트 핸들러 함수를 등록한다.
	$("#list-departments li").click(function(){
		// this에는 지금 클릭한 <li> 엘리먼트가 들어있다.
		// $(this)를 실행하는 <li> 엘리먼트가 포함된 jQuery객체가 획득된다.
		$(this).addClass('active')	// 선택한 <li>엘리먼트의 클래스에 'active'를 추가한다.
				.siblings().removeClass('active')	// 선택한 <li>엘리먼트의 형제 <li>엘리먼트에서 'active'클래스속성값을 삭제한다.
		
		// $(this).attr("date-dept-id")는 <li class="list-group-item" data-dept-id="부서아이디"> 엘리먼트의 속성값을 조회한다.
		var clickedDeptId = $(this).attr("data-dept-id");
		
		// 서버로 ajax 요청을 보낸다. 서버는 사원목록을 응답으로 보낸다. employees에는 사원목록정보가 전달된다.
		/*
			[{id: 120, firstName: 'Matthew', lastName: 'Weiss', email: 'MWEISS', phoneNumber: '650.123.1234', …},
			{id: 121, firstName: 'Adam', lastName: 'Fripp', email: 'AFRIPP', phoneNumber: '650.123.2234', …},
			{id: 122, firstName: 'Payam', lastName: 'Kaufling', email: 'PKAUFLIN', phoneNumber: '650.123.3234', …}]
		
			jQuery의 .getJSON() 함수는 응답으로 받은 JSON 텍스트를 자바스크립트 객체 혹은 자바스크립트 배열로 변환한 다름
			콜백함수를 실행할 때 콜백함수의 매개변수로 전달한다.
		*/
		$.getJSON("sample20-response.jsp", {deptId:clickedDeptId}, function(employees) {
			
			var rows = "";
			for(var index = 0; index < employees.length; index++) {
				var emp = employees[index];
				rows += "<tr>"
				rows += "<td>"+ emp.id + "</td>";
				rows += "<td><a href='' data-emp-id='" + emp.id + "'>" + emp.firstName + "</a></td>";
				rows += "<td>" + emp.phoneNumber + "</td>";
				rows += "<td>" + emp.jobId + "</td>";
				rows += "<td>" + emp.hireDate + "</td>";
				rows += "</tr>"
			}
			
			$employeesTbody.html(rows);
		});
	});
	
	// <table id="table-employees"> 케이블의 <tbody>태그 안에 미래에 추가되는 <a> 엘리먼트를 클릭했을 때 실행되는 이벤트 헨들러 함수를 등록한다.
	$("#table-employees tbody").on('click', 'a', function(event){
		event.preventDefault();
		var clickedEmpId = $(this).attr("data-emp-id");
		
		// 서버로 ajax 요청을 보낸다.
		
		/*
			서버는 아래와 같은 데이터를 응답으로 보낸다.
			
			jQuery는 응답으로 전달받은 json
		*/
		
		$.getJSON('sample20-respnse2.jsp', {empId: clickedEmpId}, function(emp){
			$("#cell-id").text(emp.id);
			$("#cell-hire-date").text(emp.hireDate);
			$("#cell-last-name").text(emp.lastName);
			$("#cell-first-name").text(emp.forstName);
			$("#cell-email").text(emp.email);
			$("#cell-phone-number").text(emp.phoneNumber);
			$("#cell-job-id").text(emp.jobId);
			$("#cell-salary").text(emp.salary);
			
			employeeInfoModal.show();
		 });
	});
});
</script>
</body>
</html>