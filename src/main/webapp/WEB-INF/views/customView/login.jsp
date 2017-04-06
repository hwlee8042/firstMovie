<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="lgoinID" value="${sessionScope.LoginID }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/import.css">
</head>
<body>
	<c:choose>
		<c:when test="${LoginID ne null}">
			<%@ include file="../inc/header.jspf"%>
			<div id="custom" class="cf">
				<%@ include file="../inc/submenu.jspf"%>
				<section class="article cf">
				<center>
					<h3>이미 로그인이 되었습니다.</h3>

				</center>
				</section>
			</div>
		</c:when>
		<c:otherwise>
			<%@ include file="../inc/header.jspf"%>
			<div id="custom" class="cf">
				<%@ include file="../inc/submenu.jspf"%>
				<section class="article cf">
				<center>
					<h3>로그인</h3>
					<form action="login.do" method="post">
						<dl>
							<dd>
								id <input type="text" name="id" value="${id}"> <br />
								<br>
							</dd>
							<dd>
								pw <input type="password" name="pw" value="${pw}"><br />
							</dd>
							<dd>
								<input type="submit" value="로그인">
							</dd>
						</dl>
					</form>
				</center>
				</section>
		</c:otherwise>
	</c:choose>
</body>
</html>