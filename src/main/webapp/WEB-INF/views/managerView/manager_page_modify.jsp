<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 수정</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/import.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/manager.css"/>
<script src="${pageContext.request.contextPath}/resources/js/news.js"></script>
<script type="text/javascript" src="resources/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<body onload="smartEditor()">
<%@ include file="../inc/header.jspf" %>
<div id="manager" class="cf">
	<%@ include file="../inc/manager_left.jspf"%>
		<section class="admin-main cf">
			<h3>공지사항 수정</h3><br>
			<form name="news_modify" id="news_modify" method="POST" action="manager_page_modify.mdo">
				<input type="hidden" name="no" value="${newsVO.no}">
				<table>
					<tr>
						<td>분류
						
						<td><select name="category" >
							<c:set var="choise" value="${newsVO.category}"/>
							<c:choose>
								<c:when test="${choise=='이벤트'}">
									<option value="기타">기타</option>
									<option value="이벤트" selected>이벤트</option>
									<option value="시스템점검">시스템점검</option>
									<option value="극장">극장</option>
								</c:when>
								<c:when test="${choise=='시스템점검'}">
									<option value="기타">기타</option>
									<option value="이벤트">이벤트</option>
									<option value="시스템점검" selected>시스템점검</option>
									<option value="극장">극장</option>
								</c:when>
								<c:when test="${choise=='극장'}">
									<option value="기타">기타</option>
									<option value="이벤트">이벤트</option>
									<option value="시스템점검">시스템점검</option>
									<option value="극장" selected>극장</option>
								</c:when>
								<c:otherwise>
									<option value="기타" selected>기타</option>
									<option value="이벤트">이벤트</option>
									<option value="시스템점검">시스템점검</option>
									<option value="극장">극장</option>
								</c:otherwise>
							</c:choose>
						</select>
					</tr>
					<tr>
						<td>제목
						<td><input type="text" name="title" value="${newsVO.title}">
					</tr>
				</table>
				<textarea cols="100" rows="35" name="content" id="content">${newsVO.content}</textarea>
				<br> <br>
				<input type="button" id="modifybutton" value="수정">
				<input type="button" id="canclebutton" onclick="location.href='manager_page_list.mdo'" value="취소">
			</form>
		</section>
</div>
<%@ include file="../inc/footer.jspf" %>
</body>
</html>