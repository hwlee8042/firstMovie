<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예매</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/import.css" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
</head>
<body>
	<%@ include file="../inc/ticketing-movieC.jspf"%>
	<%@include file="../inc/header.jspf" %>
	<div id="ticketing-wrap">
		<h3 class="ticketing-logo">예매하기</h3>
		
		<div class="ticketing">
			<article class="ticket-left section">
			
				<div class="ticketing-day">
					<h3 class="ticket-logo">날짜 선택</h3>
					<!-- 달력들어가기 -->
				</div>
				
				<div class="movieChoice">
					<h3 class="ticket-logo">영화 선택</h3>
					
					<div class="movieChoice-chart">
						<ul>
							<li><a href="#">선택한 영화</a></li>
							<li class="movieChoice-Btn"><a href="#">영화 선택   &gt;</a></li>
						</ul>
					</div>
				</div>
			
			</article>
			
			<article class="ticket-right section">
				<h3 class="ticket-logo">시간</h3>
				<div class="ticket-time">
					<fieldset>
							<legend>영화입력</legend>
							<table class="ticket-time-table">
								<colgroup>
									<col width="136">
									<col width="*">
									<col width="136">
								</colgroup>
								
								<tr>
									<th>상영시간</th>
									<th>제목</th>
									<th>잔여좌석</th>
								</tr>
								
								<tr>
									<td></td>
								</tr>
							</table>
							
					</fieldset>
				</div>
			</article>
		</div>
	</div>
	<%@include file="../inc/footer.jspf" %>
	<script src="${pageContext.request.contextPath}/resources/js/main.js" type="text/javascript"></script>
</body>
</html>