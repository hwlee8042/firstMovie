<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 관리</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/import.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manager.css"/>
</head>
<body>
<%@ include file="../inc/header.jspf" %>
<div id="manager" class="cf">
	<%@ include file="../inc/manager_left.jspf" %>
	<section class="admin-main cf">
	<h3>영화 관리</h3>
	<br>
	<button id="add" name="add">영화 등록</button>
		<table id="board">
			<tr>
				<th>등록일
				<th>제목
				<th>개봉일
				<th>장르
				<th>상태
			</tr>
			<tr>
				<td>
				<td><a href=""></a>
				<td>
				<td>
				<td>
				<td><button name="delete">삭제</button>
			</tr>
			<tr>
				
			</tr>
		</table>
	</section>
</div>
<%@ include file="../inc/footer.jspf" %>
</body>
</html>