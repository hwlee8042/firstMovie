<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/import.css">
</head>
<body>
	<%@ include file="../inc/header.jspf"%>
	<div id="custom" class="cf">
		<%@ include file="../inc/submenu.jspf"%>
		<section class="article cf">
		<h3>게시판</h3>
		<br>
		<br>
		<form>
			<dl>
				<dd>
					<label>제목</label> <input type="text" placeholder="제목을 입력해 주세요">
					<br>
				</dd>
			</dl>
			<dl>
				<dd>
					<label>파일 첨부</label> <br> <br>
			</dl>
			<dl>
				<dd>
					<textarea id="test" cols="70" rows="20" placeholder="내용을 입력해주세요"></textarea>
				</dd>
			</dl>
			<dl>
				<dd>
					<input type="button" value="확인"> 
					<input type="button" value="취소">
				</dd>

			</dl>
		</form>
		</section>
	</div>
</body>
</html>