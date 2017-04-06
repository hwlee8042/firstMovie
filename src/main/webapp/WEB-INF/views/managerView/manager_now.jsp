<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/import.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manager.css"/>
<meta charset="UTF-8">
<title>현황 관리</title>
</head>
<body>
<%@ include file="../inc/header.jspf" %>
<div id="manager" class="cf">
	<%@ include file="../inc/manager_left.jspf" %>
	<section class="admin-main cf">
		<h3>영화관현황 페이지</h3><br>
		기간 : <select></select> ~ <select></select> 상영관 : <select></select>
		<table>
			<tr>
				<th>시작시간
				<th>영화명
				<th>좌석현황
				<th>상태
			</tr>
			<tr>
				<td>
				<td>
				<td>
				<td>
			</tr>
		</table>
	</section>
</div>

<%@ include file="../inc/footer.jspf" %>
</body>
</html>