<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/import.css">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet"><!-- 구글font -->
</head>
<body>
	<%@ include file="../inc/header.jspf"%>
	<div id="mypageCustom-wrap" class="cf">
		<%@ include file="../inc/mypage-sidemenu.jspf"%>
		
		<div class="mypage-main">
			<h3 class="qna-logo">1:1 문의작성</h3>
			
			<form method="post" name="" action="writeSubmit.do">
				<fieldset>
					<legend>QnA작성페이지</legend>
					<table class="write-table">
						<colgroup>
							<col width="200">
							<col width="500">
						</colgroup>
						<tbody>
							<tr>
								<th>문의유형</th>
								<td>
									<ul class="type_list">
										<li>
											<input type="radio" name="faq_category" value="문의" checked="checked">
											<label for="inp_type01">문의</label>
										</li>
										<li>
											<input type="radio" name="faq_category" value="불만">
											<label for="inp_type02">불만</label>
										</li>
										<li>
											<input type="radio" name="faq_category" value="칭찬">
											<label for="inp_type03">칭찬</label>	
										</li>
										<li>
											<input type="radio" name="faq_category" value="제안">
											<label for="inp_type04">제안</label>	
										</li>
									</ul>
								</td>
							</tr>
							<tr>
								<th>제목</th>
								<td>
									<input type="text" name="faq_sub" id="qnatitle" class="qna_title">
								</td>
							</tr>
							<tr>
								<th>내용</th>
								<td>
									<textarea name="faq_content" cols="60" rows="5" class="qna_textarea"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
				</fieldset>
				<div class="qna_buttons">
					<button type="submit" id="qnaSubmitBt">등록</button>
				</div>	
			</form>	
				<button id="qnaCancleBt" onclick="location.href='faq.do'">취소</button>
		</div>
	</div>
	<%@ include file="../inc/footer.jspf"%>
</body>
</html>
