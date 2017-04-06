<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/import.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/manager.css" />
</head>
<body>
	<%@ include file="../inc/header.jspf"%>

	<div id="manager" class="cf">
		<div class="admin-main cf">
			<h3>공지사항</h3>
			<table>
				<tr>
					<th>번호</th>
					<th>구분</th>
					<th>제목</th>
					<th>등록일</th>
					<th>조회수</th>
				</tr>
				<c:forEach var="newsVO" items="${list}">
					<tr>
						<td id="list">${newsVO.no}</td>
						<td id="list">${newsVO.category}</td>
						<td id="list"><a href='/movie/news_read.do?no=${newsVO.no}'>${newsVO.title}</a></td>
						<td id="list"><fmt:formatDate value="${newsVO.regdate}" pattern="yyyy.MM.dd" /></td>
						<td id="list">${newsVO.viewcnt}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

	<%@ include file="../inc/footer.jspf"%>
</body>
</html>