<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.12.0/jquery-ui.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/javascript/movieinfo.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/viewroom.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Manager</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/import.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/manager.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/room.css" />
</head>
<body>
	<%@ include file="../inc/header.jspf"%>
	<div id="manager" class="cf">
		<%@ include file="../inc/manager_left.jspf"%>
		<section class="admin-main cf"> <c:forEach items="${room}"
			var="room">
			<table id="roomlistDiv">
				<tr class="roominfo">
					<td align="left"><a href="viewroom.mdo?number=${room.room_number}">&nbsp;${room.room_number}관</a></td>
					<td align="left">좌석 크기 X : ${room.room_size_x}, Y :
						${room.room_size_y} 총 좌석 : ${room.room_sheet_count}</td>
				</tr>
			</table>
		</c:forEach>
		<table id="roommakebutton">
			<tr class="rooninfo">
				<td align="center"><input type="button" value="상영관 추가"
					onclick="location.href='makeroompage.mdo'" /></td>
			</tr>
		</table>
		</section>
	</div>
	<%@ include file="../inc/footer.jspf"%>
</body>
</html>