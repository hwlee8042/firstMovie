<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>위치 / 주차안내</title>
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

		<article class="theater_intro3-top">
			<h2>위치 / 주차안내</h2>
			<div class="intro3-text">
				<div id="map"></div>
			</div>
			<div class="theater_intro3-bottom">
				<h3> * 교통정보 </h3>
				<img src="${pageContext.request.contextPath}/resources/images/theater/busInfo.png" alt="">
				<h3> * 연락처 </h3>
				<ul>
					<li>서울특별시 성동구 무학로 2길 54</li>
					<li>(TEL) 02-441-6006 / (FAX) 02-428-9694</li>					
				</ul>
			</div>
		</article>		
		
	</div>
	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=3c6343dcb48a8e9bb0b988833d452ed0"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new daum.maps.LatLng(37.56212, 127.03518),
			level : 3
		};		
		var map = new daum.maps.Map(container, options);
		
		var mapTypeControl = new daum.maps.MapTypeControl();
		map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
		var zoomControl = new daum.maps.ZoomControl();
		map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
				 
		var markerPosition  = new daum.maps.LatLng(37.56212, 127.03518); 
		var marker = new daum.maps.Marker({
		    position: markerPosition
		});		
		marker.setMap(map);		
	</script>
</body>
</html>