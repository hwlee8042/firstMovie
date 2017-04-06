<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/import.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manager.css"/>
<meta charset="UTF-8">
<title>관리자 계정관리</title>
</head>
<body>
<%@ include file="../inc/header.jspf" %>
<div id="manager" class="cf">
	<%@ include file="../inc/manager_left.jspf" %>
	<section class="admin-main cf">
		<h3>계정관리 페이지</h3>
	</section>
</div>

<%@ include file="../inc/footer.jspf" %>
</body>
</html>