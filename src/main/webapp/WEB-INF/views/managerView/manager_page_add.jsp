<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 등록</title>
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
			<h3>공지사항 등록</h3><br>
			<form name="news_regist" id="news_regist" method="POST" action="manager_page_add.mdo">
				<table>
					<tr>
						<td>분류
						<td><select name="category">
								<option value="기타">기타</option>
								<option value="이벤트">이벤트</option>
								<option value="시스템점검" selected>시스템점검</option>
								<option value="극장">극장</option>
						</select>
					</tr>
					<tr>
						<td>제목
						<td><input type="text" name="title">
					</tr>
				</table>
				<textarea cols="100" rows="35" name="content" id="content"></textarea>
				<br> <br>
				<input type="button" id="savebutton" value="등록">
				<input type="button" id="canclebutton" onclick="location.href='manager_page_list.mdo'" value="취소">
			</form>
		</section>
</div>
<%@ include file="../inc/footer.jspf" %>
</body>
</html>
