<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.sample.vo.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.sample.dao.EmployeeDao"%>
<%--
	JSON 응답 보내기
		1. <@% page contentType="application/json; charset=UTF-8 %>로 설정한다.
		2. <@% page trimDirectiveWHitespaces="true" %>로 설정한다.
		3. gson 라이브러리의 메소드를 사용해서 VO객체 , List, Map등을 json 형식의 텍스트로 변환한다.
		4. json 형식의 텍스트를 응답으로 보낸다.
--%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	// 요청파라미터에서 부서아이디를 조회한다.
	int deptId = Integer.parseInt(request.getParameter("deptId"));

	// EmployeeDao 객체를 획득한다 (싱글턴 객체 획득)
	EmployeeDao employeeDao = EmployeeDao.getInstance();
	// 부서아이디에 해당하는 직원정보 목록을 조회한다.
	List<Employee> employeeList = employeeDao.getEmployeesByDepartmentId(deptId);
	
	// 자바객체(VO객체, List객체, Map객체)를 json 형식의 텍스트로 변환하는 Gson객체를 생성한다.
	Gson gson = new GsonBuilder()
			.serializeNulls()							// 값이 null인 항목도 응답에 포함시킨다.
			.setDateFormat("yyyy년 MM월 dd일")				// Data를 지정된 형식의 포맷으로 변환한다.
			.create();		
	// Gson객체의 toJson(Object obj)를 실행해서 자바객체를 json 형식의 텍스트로 변환된 문자열을 반환받는다.
	String json = gson.toJson(employeeList);
	
	out.write(json);
%>