<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의 내용 확인</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/import.css">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700"
	rel="stylesheet">
<!-- 구글font -->
</head>
<body onload="read()">
	<%@ include file="../inc/header.jspf"%>
	<div id="mypageCustom-wrap" class="cf">
		<%@ include file="../inc/mypage-sidemenu.jspf"%>

		<div class="mypage-main">
			<h3 class="qna-logo">1:1 문의내용 확인</h3>

			<form role="form" method="POST">
				<input type="hidden" name="num" value="${faqVO.faq_num}">
			</form>
			<fieldset>
				<legend>QnA작성페이지</legend>
				<table class="faqView-table">
					<colgroup>
						<col width="200">
						<col width="500">
					</colgroup>
					<tbody>
						<tr>
							<th>문의유형</th>
							<td>${faqVO.faq_category}</td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input type="text" class="faqView-sub" value="${faqVO.faq_sub}" readonly></td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<p class="read-content">${faqVO.faq_content}</p>
							</td>
						</tr>
					</tbody>
				</table>
			</fieldset>

			<div class="qna_buttons qnaView_buttons">
				<button type="submit" id="qnaRewrite">수정</button>
				<button type="submit" id="qnaDelete">삭제</button>
				<button type="submit" id="cancelwrite" onclick="location.href='faq.do'">취소</button>
			</div>
			
			<div class="qna-review">
				<div class="review_img">
					<img src="" alt="프로필 사진">
				</div>
				<div class="review-score">
					<select class="r-score" name="score">
						<option>별점 주기</option>
						<option value="5">★★★★★</option>
						<option value="4">★★★★☆</option>
						<option value="3">★★★☆☆</option>
						<option value="2">★★☆☆☆</option>
						<option value="1">★☆☆☆☆</option>
					</select>
				</div>
				<div class="review-comment">
					<textarea name="r-comment" readyonly>로그인 후 이용 가능한 서비스 입니다</textarea>
				</div>
				<div class="review-BT">
					<button type="button" id="r-BT">등록</button>
				</div>
			</div>

		</div><!-- mypage-main -->
		
	</div>
	<%@ include file="../inc/footer.jspf"%>

	<script src="${pageContext.request.contextPath}/resources/js/mypage-faq.js" type="text/javascript"></script>
</body>
</html>