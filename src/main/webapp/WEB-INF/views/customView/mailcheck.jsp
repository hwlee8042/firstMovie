<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/import.css"
	type="text/css">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700"
	rel="stylesheet">
</head>
<body>

	<%@ include file="../inc/header.jspf"%>
	<form action="check.do" method="post">
		<div id="custom" class="cf">
			<%@ include file="../inc/submenu.jspf"%>
			<div class="article cf">
				<h3>이메일 인증</h3>
				<center>
					<input type="hidden" value="${id}" name="id" id="id"> <input
						type="text" name="email" id="email" value="${email}"> <input
						type="submit" value="인증번호 발송">
				</center>
			</div>
		</div>
	</form>
	<%@ include file="../inc/footer.jspf"%>
</body>
</html>