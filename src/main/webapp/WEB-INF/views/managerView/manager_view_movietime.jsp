<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>상영시간 관리</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/import.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/manager.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.12.0/jquery-ui.min.js"></script>
</head>
<body onload="javascript:movieroomlist();">
	<!-- onload ="javascript:movieroomlist();" -->
	<%@ include file="../inc/header.jspf"%>
	<div id="manager" class="cf">
		<%@ include file="../inc/manager_left.jspf"%>
		<section class="admin-main cf">
			<div>
				<table id="roomlistDiv"
					style="border: 2px solid #000000; height: 60px; margin-bottom: 15px;">
					<tr class="roominfo">
						<td align="left">영화 고유번호 : ${movie_number}</td>
						<td align="left">영화제목 : ${movie_name}</td>
						<td align="left">영화 시간 : ${movie_showtime}</td>
					</tr>
				</table>
			</div>
			<c:forEach items="${PlayVO}" var="PlayVO">
				<table id="roomlistDiv"
					style="border: 2px solid #000000; height: 60px; margin-bottom: 15px;">
					<tr class="roominfo">
						<td align="left"><a href="#">고유번호 :
								${PlayVO.play_movie_number}&nbsp;&nbsp;&nbsp;&nbsp;상영 시간 :
								${PlayVO.play_movie_when}<br />영화제목 :
								${PlayVO.play_movie_name}&nbsp;&nbsp;&nbsp;&nbsp;상영관 :
								${PlayVO.play_room_number}
						</a></td>
						<td align="center"><a
							href="ticketroom.mdo?serialnumber=${PlayVO.play_movie_serialnumber}">예매화면
								가기</a></td>
					</tr>
				</table>
			</c:forEach>
			<form method="post" name="addtime">
				<table>
					<div style="width: 100%; height: 300px;">
						<tr>
							<td><select id="numberlist">
							</select></td>
							<td><input type="date" name="date" /></td>
							<td><select id="hourlist">
									<option value="00">0시</option>
									<option value="01">1시</option>
									<option value="02">2시</option>
									<option value="03">3시</option>
									<option value="04">4시</option>
									<option value="05">5시</option>
									<option value="06">6시</option>
									<option value="07">7시</option>
									<option value="08">8시</option>
									<option value="09">9시</option>
									<option value="10">10시</option>
									<option value="11">11시</option>
									<option value="12">12시</option>
									<option value="13">13시</option>
									<option value="14">14시</option>
									<option value="15">15시</option>
									<option value="16">16시</option>
									<option value="17">17시</option>
									<option value="18">18시</option>
									<option value="19">19시</option>
									<option value="20">20시</option>
									<option value="21">21시</option>
									<option value="22">22시</option>
									<option value="23">23시</option>
							</select>
							<td><select id="minit">
									<option value="00">정각</option>
									<option value="05">5분</option>
									<option value="10">10분</option>
									<option value="15">15분</option>
									<option value="20">20분</option>
									<option value="25">25분</option>
									<option value="30">30분</option>
									<option value="35">35분</option>
									<option value="40">40분</option>
									<option value="45">45분</option>
									<option value="50">50분</option>
									<option value="55">55분</option>
							</select>
							<td align="center"><button type="button"
									onclick="inserttime('${movie_number}', '${movie_name}', '${movie_showtime}')">상영
									추가</button></td>
						</tr>
					</div>
				</table>
			</form>
		</section>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/addtime.js"></script>
	<%@ include file="../inc/footer.jspf"%>
</body>
</html>