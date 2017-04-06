<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/import.css">
<!-- 구글font -->
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700"
	rel="stylesheet">
</head>
<body>
	<%@ include file="../inc/header.jspf"%>
	<div id="mypageCustom-wrap" class="cf">
		<%@ include file="../inc/mypage-sidemenu.jspf"%>
		<div class="mypage-main">
			<h3 class="qna-logo">나의 문의 내역</h3>

			<form method="GET" name="" action="">

				<fieldset>
					<legend>Qna게시판</legend>
					<table class="qna-boardC">
						<colgroup>
							<col width="6%">
							<col width="6%">
							<col width="*">
							<col width="12%">
							<col width="6%">
						</colgroup>
						<thead>
							<tr>
								<th>번호</th>
								<th>유형</th>
								<th>제목</th>
								<th>등록일</th>
								<th>상태</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="number" value="1" />
							<c:forEach var="FaqVO" items="${list}">
								<input type="hidden" value="${number = number + 1}">
							</c:forEach>
							<c:forEach var="FaqVO" items="${list}">
								<tr class="insertWrite">
									<td><input type="hidden" name="faq_num"
										value="${faqVO.faq_num}"> <input type="hidden"
										value="${number = number - 1}"> ${number}</td>

									<td>${FaqVO.faq_category}</td>
									<td><a href="/movie/qna-read.do?num=${FaqVO.faq_num }">${FaqVO.faq_sub}</a></td>
									<td><fmt:formatDate value="${FaqVO.faq_regdate}"
											pattern="yyyy.MM.dd" /></td>
									<td>${FaqVO.faq_status}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</fieldset>
			</form>

			<div class="paging"></div>

			<div class="qna_BT">
				<button type="submit" id="qnaWriteBt"
					onclick="location.href='writemypage.do'">글쓰기</button>
			</div>
		</div>
	</div>
	<%@ include file="../inc/footer.jspf"%>
</body>
</html>