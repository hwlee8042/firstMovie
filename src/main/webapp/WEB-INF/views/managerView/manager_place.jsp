<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/import.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manager.css"/>
<meta charset="UTF-8">
<title>상영관 관리</title>
</head>
<body>
<%@ include file="../inc/header.jspf" %>
<div id="manager" class="cf">
	<%@ include file="../inc/manager_left.jspf" %>
	<section class="admin-main cf">
		<h3>상영관 관리</h3>
		<br>
		<button id="add" name="add">상영관 등록</button>
		<table id="board">
			<tr>
				<th>번호
				<th>이름
				<th>좌석수
				<th>가격
				<th>좌석정보
			</tr>
			<tr>
				<td>
				<td><a href=""></a>
				<td>
				<td>
				<td>
				<td><button name="delete">삭제</button>
			</tr>
		</table>
	</section>
</div>

<%@ include file="../inc/footer.jspf" %>
</body>
</html>