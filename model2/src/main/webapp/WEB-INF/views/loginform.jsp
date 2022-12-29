<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>애플리케이션</title>
</head>
<body>
<fmt:bundle basename="messages">
<div class="container my-3">
	<div class="row mb-3">
		<div class="col-12">
			<h1><fmt:message key="text.welcome" /></h1>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col-12">
			<p><fmt:message key="text.loginform.message" /></p>
			<form class="border bg-light p-3" method="post" action="login.hta">
				<div class="mb-3">
					<label class="form-label"><fmt:message key="label.loginform.email" /></label>
					<input type="text" class="form-control" name="email" />
				</div>
				<div class="mb-3">
					<label class="form-label"><fmt:message key="label.loginform.password" /></label>
					<input type="password" class="form-control" name="password" />
				</div>
				<div class="text-end">
		            <a href="home.hta" class="btn btn-secondary"><fmt:message key="label.loginform.cancel" /></a>
		            <button type="submit" class="btn btn-primary"><fmt:message key="label.loginform.submit" /></button>
            	</div>
			</form>
		</div>
	</div>
   
</div>
</fmt:bundle>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>