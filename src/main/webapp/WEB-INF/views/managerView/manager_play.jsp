<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상영시간 관리</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/import.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manager.css"/>
</head>
<body>
<%@ include file="../inc/header.jspf" %>
<div id="manager" class="cf">
	<%@ include file="../inc/manager_left.jspf" %>
	<section class="admin-main cf">
		<h3>상영시간 관리</h3>
		<br>
		<select name="place">
			<option value=""></option>
		</select>
		<select name="date">
			<option value=""></option>
		</select>
		<table>
			<tr>
				<th>시작시간
				<th>영화제목
				<th>상영시간
				<th>종료시간
			</tr>
			<tr>
				<td>
				<td><a href=""></a>
				<td>
				<td>
				<td><button name="delete" id="delete">삭제</button>
			</tr>
			<tr>
				<td>
					<select name="start">
						<option value=""></option>
					</select>
				<td>
					<button name="choise" id="choise">영화선택</button>
				<td>
				<td>
				<td><button name="register" id="register">등록</button>
			</tr>
			<tr>
				<td colspan="5"><button name="add" id="add2">+추가</button>
			</tr>
		</table>
	</section>
</div>
<%@ include file="../inc/footer.jspf" %>
</body>
</html>