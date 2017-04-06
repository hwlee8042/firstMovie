<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/import.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manager.css"/>
<meta charset="UTF-8">
<title>회원 관리</title>
</head>
<body>
<%@ include file="../inc/header.jspf" %>
<div id="manager" class="cf">
	<%@ include file="../inc/manager_left.jspf" %>
	<section class="admin-main cf">
		<h3>회원 관리</h3>
		<br><br>
		<table id="board">
			<tr>
				<th>가입일
				<th>아이디
				<th>이름
				<th>성별
				<th>생년월일
				<th>이메일
				<th>번호
			</tr>
			<tr>
				<td>
				<td><a href=""></a>
				<td>
				<td>
				<td>
				<td>
				<td>
				<td><button id="delete">삭제</button>
			</tr>
		</table>
	</section>
</div>

<%@ include file="../inc/footer.jspf" %>
</body>
</html>