<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.sample.vo.Employee"%>
<%@page import="com.sample.dao.EmployeeDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%
	int empId = Integer.parseInt(request.getParameter("empId"));

	EmployeeDao employeeDao = EmployeeDao.getInstance();
	Employee employee = employeeDao.getEmployeeById(empId);
	
	Gson gson = new GsonBuilder()
			.serializeNulls()				// 값이 null이 항목도 응답에 포함시킨다.
			.setDateFormat("yyyy년 M월 d일")	// Date를 지정된 형식의 포맷으로 변환한다.
			.create();
	
	String json = gson.toJson(employee);
	
	out.write(json);
%>