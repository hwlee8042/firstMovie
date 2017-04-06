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
	src="${pageContext.request.contextPath}/resources/js/room.js"></script>
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
		<section class="admin-main cf">
		<form name="sheetcreate" action="createroom.mdo">
			<div id="room">
				<div id="asd" class="seed" style="padding: 0px 0px 0px 0px"></div>
			</div>
			<div>
				좌석갯수 X : <input type="text" name="x" size="4"></input> Y : <input
					type="text" name="y" size="4"></input><br /> <br /> <input
					type="button" value="시트 생성" onclick="makesheet()" /> <input
					type="button" value="영화관 생성" onclick="makeroom()" /> <input
					type="button" value="선택" onclick="choicelist()" /> <input
					type="text" id="price" size="6" /> <input type="button"
					value="가격설정(1000원 단위)" onclick="makeprice()" />
			</div>
			<div style="width: 100%; height: 300px;">
				<table>
					<thead>
						<tr>
							</br>
							<th style="text-align: left">Sheet Info</th>
						</tr>
					</thead>
				</table>
				<!-- 스크롤 테이블 -->
				<div style="width: 90%; height: 250px; overflow-y: scroll;">
					<table class="list_style03">
						<colgroup>
							<col width="20">
								<col width="20">
									<col width="30">
										<col width="20">
						</colgroup>
						<tbody id="room_info">
						</tbody>
					</table>
				</div>
				<!-- 스크롤 테이블-->
			</div>
		</form>
		</section>
	</div>
	<%@ include file="../inc/footer.jspf"%>
</body>
</html>