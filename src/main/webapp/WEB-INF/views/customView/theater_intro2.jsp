<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시설 소개</title>
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

	<div id="theater-wrap">	
		
		<%@ include file="theater_sub.jsp"%>
	
		<article class="theater_intro2-top">
			<h2>시설안내</h2>		
			<div class="intro2-text">
				<h3> * 편의시설 안내</h3>				
				<div class="conven_img">
					<img src="${pageContext.request.contextPath}/resources/images/theater/conven01.jpg" alt="">
					<img src="${pageContext.request.contextPath}/resources/images/theater/conven02.jpg" alt="">
					<img src="${pageContext.request.contextPath}/resources/images/theater/conven03.jpg" alt="">
					<img src="${pageContext.request.contextPath}/resources/images/theater/conven04.jpg" alt="">
				</div>				
			</div>		
		</article>	
		
	</div>	
</body>
</html>