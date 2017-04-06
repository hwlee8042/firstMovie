<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.12.0/jquery-ui.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/movieinfo.js"></script>	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 등록</title>
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
			<form name="movie_add" method="POST" action="movie_add.mdo"
				enctype="multipart/form-data">
				<h3>영화 등록</h3>
				<br>
				<table>
					<tr>
						<td>포스터
						<td><input type="file" name="movie_poster">
					</tr>
					<!-- 추후 변경예정 -->
					<tr>
						<td>제목
						<td><input type="text" name="movie_name"> <!-- 추후 변경예정 -->
						<td>관람등급
						<td><select name="movie_rating">
								<option value="all">전체</option>
								<option value="12">12세</option>
								<option value="15">15세</option>
								<option value="19">청불</option>
						</select>
					</tr>
					<tr>
						<td>개봉일
						<td><input type="date" name="movie_reldate">
						<td>장르
						<td><input type="text" name="movie_genre">
					</tr>
					<tr>
						<td>상영기간
						<td><select name="movie_running">
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30" selected="selected">30</option>
								<option value="40">40</option>
						</select>일
						<td>상영시간
						<td><input type="text" name="movie_showtime">
					</tr>
					<tr>
						<td>감독
						<td><input type="text" name="movie_director">
						<td>출연진
						<td><input type="text" name="movie_actor">
					</tr>
					<tr>
						<td>공식사이트
						<td><input type="text" name="movie_site">
					</tr>
					<tr></tr>
					<tr>
						<td colspan="4" align="center">내 용
					</tr>
					<tr>
						<td colspan="4"><textarea rows="20" cols="100"
								name="movie_story"></textarea>
					</tr>
					<tr>
						<td>동영상 URL
						<td colspan="3"><input type="text" name="movie_url1"></td>
					</tr>
					<tr>
						<td>
						<td colspan="3"><input type="text" name="movie_url2"></td>
					</tr>
					<tr>
						<td>
						<td colspan="3"><input type="text" name="movie_url3"></td>
					</tr>					
					<tr>
						<td colspan="4"><div id="image"></div>
					</tr>
				</table>
				<br> <input type="submit" id="add3" value="등록"> <input
					type="button" id="add3"
					onclick="location.href='manager_movie_list.mdo'" value="취소">
			</form>
		</div>
	</div>
	<%@ include file="../inc/footer.jspf"%>
</body>
</html>