<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 조회</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/import.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manager.css" />
<script src="${pageContext.request.contextPath}/resources/js/news.js"></script>
<script type="text/javascript" src="resources/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<body onload="read()">
	<%@ include file="../inc/header.jspf"%>
	<div id="manager" class="cf">
		<section class="admin-main cf">
			<h3>공지사항 조회</h3>
			<br>
			<form role="form" method="POST">
				<input type='hidden' name='no' value="${newsVO.no}">
			</form>
			<table>
				<tr>
					<th>${newsVO.category}
					<th>${newsVO.title}
					<th>등록일
					<th><fmt:formatDate value="${newsVO.regdate}" pattern="yyyy.MM.dd" />
					<th>조회수
					<th>${newsVO.viewcnt}
				</tr>
			</table>
			<div>${newsVO.content}</div>
			<input type="button" name="cancle" onclick="location.href='news_list.do'" value="목록">
		</section>
	</div>
	<%@ include file="../inc/footer.jspf"%>
</body>
</html>