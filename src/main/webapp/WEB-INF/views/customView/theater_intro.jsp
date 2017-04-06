<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>극장 소개</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/import.css"
	type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700"
	rel="stylesheet">
</head>
<body>
	
	<%@ include file="../inc/header.jspf"%>
	
	<div id="theater-wrap" class="cf">	
		
		<%@ include file="theater_sub.jsp"%>
	
		<article class="theater_intro-top">
			<h2>극장소개</h2>

			<div class="intro">
				<img src="${pageContext.request.contextPath}/resources/images/header/logo2.png"
				alt="로고" class="theater-intro-img">
				<div class="intro-text">
				<h3>ABOUT 1'ST CINEMA</h3>
				<p>
					<br/><h4>since 1964년</h4><br/>
					1'st cinema는 <주유천하>의 제작을 시작으로<br/>
					101편의 한국영화를 제작했으며<br/>
					빠삐용(1974), 미션(1986)등 100편의 외화를 수입, 배급했습니다.
				</p>
				</div>
			</div>
			<div class="cycle-slideshow"
				data-cycle-swipe=true
	    		data-cycle-swipe-fx=scrollHorz
				data-cycle-timeout=3500>
				<div class="cycle-pager"></div>
				<img src="${pageContext.request.contextPath}/resources/images/theater/cinema01.jpg" width=100% height=100%>
				<img src="${pageContext.request.contextPath}/resources/images/theater/cinema02.jpg" width=100% height=100%>
				<img src="${pageContext.request.contextPath}/resources/images/theater/cinema03.jpg" width=100% height=100%>
				<img src="${pageContext.request.contextPath}/resources/images/theater/cinema04.jpg" width=100% height=100%>
				<img src="${pageContext.request.contextPath}/resources/images/theater/cinema05.jpg" width=100% height=100%>
				<img src="${pageContext.request.contextPath}/resources/images/theater/cinema06.jpg" width=100% height=100%>
				<img src="${pageContext.request.contextPath}/resources/images/theater/cinema07.jpg" width=100% height=100%>
				<img src="${pageContext.request.contextPath}/resources/images/theater/cinema08.jpg" width=100% height=100%>
				<img src="${pageContext.request.contextPath}/resources/images/theater/cinema09.jpg" width=100% height=100%>
			</div>
		</article>				
	</div>	
	<script src="http://malsup.github.com/jquery.cycle2.js"></script>
</body>
</html>