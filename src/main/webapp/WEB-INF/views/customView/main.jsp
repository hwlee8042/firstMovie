<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/import.css" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet"><!-- 구글폰트 -->
</head>
<body>
	<div id="wrap">
		<%@ include file="../inc/header.jspf"%>

		<div id="visual-box" class="cf">
			<ul class="bxslider visual">
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/visualbox/visual_bg1.png" alt="너의 이름은">
					<div class="visual-text">
						<strong>이혜원<em>YOUR NAME</em></strong> <span>1월 4일 대개봉!!</span>
					</div>
				</li>
<%-- 				<li>
					<img src="${pageContext.request.contextPath}/resources/images/visualbox/visual_bg2.png" alt="마스터">
					<div class="visual-text">
						<strong>마스터<em>Master</em></strong> <span></span>
					</div>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/visualbox/visual_bg3.png" alt="로그원">
					<div class="visual-text">
						<strong>로그원<em>Rogue One</em></strong> <span></span>
					</div>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/visualbox/visual_bg4.png" alt="씽">
					<div class="visual-text">
						<strong>씽<em>Sing</em></strong> <span></span>
					</div>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/visualbox/visual_bg5.png" alt="더킹">
					<div class="visual-text">
						<strong>더 킹<em>The King</em></strong> <span></span>
					</div>
				</li> --%>
			</ul>

			<ul class="visual_bt">
				<li><a href="#">01</a></li>
				<li><a href="#">02</a></li>
				<li><a href="#">03</a></li>
				<li><a href="#">04</a></li>
				<li><a href="#">05</a></li>
			</ul>
		</div>
		<div id="container" class="cf">
			<article class="section content1 cf">
				<h3 class="chart-logo">TODAY BEST CHOICE</h3>
				<div class="ch-bt">
					<a href="#" class="prevBt">prev</a>
					<a href="#" class="nextBt">next</a>
				</div>
				<ul class="movieChart movie-chart1">
					<li>
						<a href="#"> 
							<span class="boxoffice n1">01</span> 
							<img src="${pageContext.request.contextPath}/resources/images/contents/poster_1.png" alt="너의 이름은">
						</a>
					</li>
					<li>
						<a href="#">
							<span class="boxoffice n2">02</span>
							<img src="${pageContext.request.contextPath}/resources/images/contents/poster_2.png" alt="마스터">
						</a>
					</li>
					<li>
						<a href="#">
							<span class="boxoffice n3">03</span>
							<img src="${pageContext.request.contextPath}/resources/images/contents/poster_3.png" alt="로그원">
						</a>
					</li>
					<li>
						<a href="#">
							<span class="boxoffice n4">04</span>
							<img src="${pageContext.request.contextPath}/resources/images/contents/poster_4.png" alt="라라랜드">
						</a>
					</li>
					<li>
						<a href="#"> 
							<span class="boxoffice n5">05</span>
							<img src="${pageContext.request.contextPath}/resources/images/contents/poster_5.png" alt="씽">
						</a>
					</li>
				</ul>
				
				<ul class="movieChart movie-chart2">
					<li>
						<a href="#"> 
							<span class="boxoffice n6">06</span> 
							<img src="${pageContext.request.contextPath}/resources/images/contents/poster_6.jpg" alt="거울앨리스">
						</a>
					</li>
					<li>
						<a href="#">
							<span class="boxoffice n7">07</span>
							<img src="${pageContext.request.contextPath}/resources/images/contents/poster_7.jpg" alt="곡성">
						</a>
					</li>
					<li>
						<a href="#">
							<span class="boxoffice n8">08</span>
							<img src="${pageContext.request.contextPath}/resources/images/contents/poster_3.png" alt="로그원">
						</a>
					</li>
					<li>
						<a href="#">
							<span class="boxoffice n9">09</span>
							<img src="${pageContext.request.contextPath}/resources/images/contents/poster_4.png" alt="라라랜드">
						</a>
					</li>
					<li>
						<a href="#"> 
							<span class="boxoffice n10">10</span>
							<img src="${pageContext.request.contextPath}/resources/images/contents/poster_5.png" alt="씽">
						</a>
					</li>
				</ul>
			</article><!-- content1 end -->
			
			<article class="section content2-wrap cf">
				<div class="content2">
					<h3 class="content2-logo">MOVIE SELECTION</h3>
					<video controls id="video" controls="controls">
						<source src="${pageContext.request.contextPath}/resources/videos/video1.mp4" type="video/mp4">
					</video>
					<div class="videoPoster">
						<img src="${pageContext.request.contextPath}/resources/images/contents/poster_8.jpg" alt="trollerPhoto">
					</div>
				</div>
			</article>
		</div>

		<%@ include file="../inc/footer.jspf"%>
	</div>
	
	<script src="${pageContext.request.contextPath}/resources/js/movie-chart.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js" type="text/javascript"></script>
</body>
</html>