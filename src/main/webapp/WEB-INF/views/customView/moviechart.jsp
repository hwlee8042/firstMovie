<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>무비차트</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/import.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/moviechart.css" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet"><!-- 구글폰트 -->
</head>
<body>
	<%@ include file="../inc/header.jspf" %>
	<div id="moviechart-wrap" class="cf">
		<div class="movie-chart">
			<ul class="movie-list cf">
				<li>
					<div class="list-box">
						<span class="boxoffice num1">01</span>
						<span class="list-poster">
							<a href="#">
								<img src="${pageContext.request.contextPath}/resources/images/contents/poster_1.png" alt="너의 이름은.">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_15">15세 관람가</span>
								너의 이름은
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
				<li>
					<div class="list-box">
						<span class="boxoffice num2">02</span>
						<span class="list-poster">
							<a href="#">
								<img src="" alt="">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_12">12세 관람가</span>
								제목
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
				<li>
					<div class="list-box">
						<span class="boxoffice num3">03</span>
						<span class="list-poster">
							<a href="#">
								<img src="" alt="">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_all">모든 연령층 관람가</span>
								제목
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
				<li>
					<div class="list-box">
						<span class="boxoffice num4">04</span>
						<span class="list-poster">
							<a href="#">
								<img src="" alt="">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_19">청소년 불가 관람</span>
								제목
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
				<li>
					<div class="list-box">
						<span class="boxoffice num5">05</span>
						<span class="list-poster">
							<a href="#">
								<img src="" alt="">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_no">모든 연렁층 관람가</span>
								제목
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
			</ul>
			
			<!-- 2번째 줄 -->
			<ul class="movie-list cf">
				<li>
					<div class="list-box">
						<span class="boxoffice num6">06</span>
						<span class="list-poster">
							<a href="#">
								<img src="${pageContext.request.contextPath}/resources/images/contents/poster_1.png" alt="너의 이름은.">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_15">15세 관람가</span>
								너의 이름은
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
				<li>
					<div class="list-box">
						<span class="boxoffice num7">07</span>
						<span class="list-poster">
							<a href="#">
								<img src="" alt="">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_12">12세 관람가</span>
								제목
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
				<li>
					<div class="list-box">
						<span class="boxoffice num8">08</span>
						<span class="list-poster">
							<a href="#">
								<img src="" alt="">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_all">모든 연령층 관람가</span>
								제목
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
				<li>
					<div class="list-box">
						<span class="boxoffice num9">09</span>
						<span class="list-poster">
							<a href="#">
								<img src="" alt="">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_19">청소년 불가 관람</span>
								제목
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
				<li>
					<div class="list-box">
						<span class="boxoffice num10">10</span>
						<span class="list-poster">
							<a href="#">
								<img src="" alt="">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_no">모든 연렁층 관람가</span>
								제목
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
			</ul>
			
			<!-- 3번째 줄 -->
			<ul class="movie-list cf">
				<li>
					<div class="list-box">
						<span class="list-poster">
							<a href="#">
								<img src="${pageContext.request.contextPath}/resources/images/contents/poster_1.png" alt="너의 이름은.">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_15">15세 관람가</span>
								너의 이름은
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
				<li>
					<div class="list-box">
						<span class="list-poster">
							<a href="#">
								<img src="" alt="">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_12">12세 관람가</span>
								제목
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
				<li>
					<div class="list-box">
						<span class="list-poster">
							<a href="#">
								<img src="" alt="">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_all">모든 연령층 관람가</span>
								제목
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
				<li>
					<div class="list-box">
						<span class="list-poster">
							<a href="#">
								<img src="" alt="">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_19">청소년 불가 관람</span>
								제목
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
				<li>
					<div class="list-box">
						<span class="list-poster">
							<a href="#">
								<img src="" alt="">
							</a>
						</span>
					</div>
					<dl class="list-text">
						<dt>
							<a href="#">
								<span class="age age_no">모든 연렁층 관람가</span>
								제목
							</a>	
						</dt>
						<dd>관람평점 : </dd>
					</dl>
				</li>
			</ul>
		</div>
		<div class="more-Bt">
			<button id="moreBt" type="submit">더보기 + </button>
		</div>	
	</div>
	<%@ include file="../inc/footer.jspf" %>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"type="text/javascript"></script>
</body>
</html>