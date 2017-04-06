<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>페이지 관리</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/import.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manager.css"/>
</head>
<body>
<%@ include file="../inc/header.jspf" %>

<div id="manager" class="cf">
	<%@ include file="../inc/manager_left.jspf" %>
	<section class="admin-main cf">
		<h3>메인배너 관리</h3>
		<br>
		<button name="addr">파일선택</button>
		<div>
			<!-- 배너파일 내용 -->
		</div>
		<br><br><br><br><br>
		<h3>뉴스/이벤트 페이지 관리</h3>
		<button name="add" id="add">등록</button>
		<table>
			<tr>
				<th>번호
				<th>구분
				<th>제목
				<th>등록일
				<th>조회수
			</tr>
			<tr>
				<td>
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