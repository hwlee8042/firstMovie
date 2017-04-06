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
		<h3>회원 탈퇴</h3>
		<center>
			<div class="delete cf">
				<h2>비밀번호 재입력</h2>
				<br /> <input type="password"><br /> <input type="button"
					value="확인" onclick="button_event();")>

			</div>
		</center>
		</section>
	</div>
</body>
</html>