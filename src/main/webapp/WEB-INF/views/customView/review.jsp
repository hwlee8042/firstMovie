<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/review.css" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/import.css" />
<script src="${pageContext.request.contextPath}/resources/js/review.js"></script>
<meta charset="UTF-8">
<title>한줄평</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
</head>
<body>
	<%
		String id = (String)session.getAttribute("LoginID");
	%>
	<div class="review-wrap">
		<form role="form" method="post">
			<input type="hidden" name="movie_number" value="">
		</form>
		<h3>한줄평()</h3>
		<form name="review_regist" id="review_regist" method="POST" action="review.do">
			<input type="hidden" name="movie_number" value="<%=id%>">
			<input type="hidden" name="rid" value="id">
			<div class="r_main cf">
				<div class="r_profile">
					<img src="${pageContext.request.contextPath}/resources/images/review/profile_m.png" alt="프로필사진">
				</div>
				<div class="r_writer">
					<div class="r_score">
						<br>평점<br> <select name="score">
							<option value="5" selected>★★★★★</option>
							<option value="4">★★★★☆</option>
							<option value="3">★★★☆☆</option>
							<option value="2">★★☆☆☆</option>
							<option value="1">★☆☆☆☆</option>
						</select>
					</div>
					<div class="r_comment">
						<textarea name="rcomment"></textarea>
					</div>
					<div class="r_regist">
						<input type="submit" value="등록">
					</div>
				</div>
			</div>
		</form>
		<br>
		<ul>
			<c:forEach var="reviewVO" items="${list}">
			<li id="li">
				<div class="r_list">
					<img class="rlist_profile" src="${pageContext.request.contextPath}/resources/images/review/profile_m.png" alt="프로필사진">
					<div class="r_text cf">
						<ul class="cf">
							<li>${reviewVO.rid}</li>
							<li>${reviewVO.insdate}</li><%-- 
							<li>${reviewVO.score}점</li> --%>
								<c:set var="choice" value="${reviewVO.score}" />
								<c:if test="${choice=='5'}">
									<li>★★★★★</li>
								</c:if>

								<c:if test="${choice=='4'}">
									<li>★★★★☆</li>
								</c:if>

								<c:if test="${choice=='3'}">
									<li>★★★☆☆</li>
								</c:if>

								<c:if test="${choice=='2'}">
									<li>★★☆☆☆</li>
								</c:if>

								<c:if test="${choice=='1'}">
									<li>★☆☆☆☆</li>
								</c:if>
							</ul>
						<p>${reviewVO.rcomment}</p>
					</div>
				</div>
			</li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>