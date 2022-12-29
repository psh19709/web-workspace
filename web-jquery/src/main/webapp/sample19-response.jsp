<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/plain; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	Set<String> userIds = Set.of("hong", "hong1", "hong12", "hong123", "kim", "kim1", "kim12", "kim123",
			"kang", "kang1", "kang12", "kang123", "lee", "lee1", "lee12", "lee123", "hong2", "kim2",
			"hong3", "kim3", "king2", "kang3");

	String userId = request.getParameter("userId");
	
	if(userIds.contains(userId)) {
		out.write("exist");
	} else {
		out.write("notExist");
	}
%>