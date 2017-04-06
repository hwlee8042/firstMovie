<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta charset="UTF-8">
<title>페이지 관리</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/import.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/manager.css" />
</head>
<body>
	<%@ include file="../inc/header.jspf"%>

	<div id="manager" class="cf">
		<%@ include file="../inc/manager_left.jspf"%>
		<div class="admin-main cf">
			<h3>메인배너 관리</h3>
			<br>
			<button name="addr">파일선택</button>
			<div>
				<!-- 배너파일 내용 -->
			</div>
			<br> <br> <br> <br> <br>
			<h3>뉴스/이벤트 페이지 관리</h3>
			<button onclick="location.href='manager_page_add.mdo'" id="add">등록</button>
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
						<td id="list"><a href='/movie/manager_page_read.mdo?no=${newsVO.no}'>${newsVO.title}</a></td>
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