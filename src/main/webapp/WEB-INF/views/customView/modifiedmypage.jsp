<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/import.css">
</head>
<body>

	<%@ include file="../inc/header.jspf"%>
	<div id="custom" class="cf">
		<%@ include file="../inc/submenu.jspf"%>
		<section class="article cf">
		<h3>회원정보 수정</h3>
		<form action="#">
			<table>
				<tr>
					<td>ID</td>
					<td><input type="text" name="userid"></td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><select name="year">
							<option>1900</option>
							<option>1901</option>
					</select> <select name="month">
							<option>1</option>
							<option>2</option>
					</select> <select name="day">
							<option>1</option>
							<option>2</option>
					</select></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><select name="first">
							<option>010</option>
							<option>011</option>
					</select> <label> - </label> <input type="text" name="second"> <label>
							- </label> <input type="text" name="third"></td>

				</tr>
				<tr>
				<td>이메일</td>
				<td><input type="text" name="email">
					<label> @ </label>
					<select name="email2">
						<option>naver.com</option>
						<option>daum.net</option>
					</select>
				</td>
				</tr>
				
				<tr>
				<td>
				<input type="button" value="등록"></td>
				<td><input type="button" value="취소"></td>
				</tr>
			</table>
		</form>
		</section>
	</div>
</body>
</html>