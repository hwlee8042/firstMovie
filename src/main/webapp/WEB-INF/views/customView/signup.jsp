
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/import.css"
	type="text/css">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700"
	rel="stylesheet">
</head>
<body>

	<%@ include file="../inc/header.jspf"%>

	<div id="signupWrap">
		<ul class="sign_top_nav clearfix">
			<li><a href="main.jsp">Home</a></li>
			<li><a href="#"> > </a></li>
			<li><a href="#">회원가입</a></li>
		</ul>

		<div class="line clearfix"></div>

		<h2 class="signup_logo">
			회원가입<span> ｜ join</span>
		</h2>

		<form method="post" name="sign" action="reg.do">
			<fieldset>
				<legend>기본사항 입력</legend>
				<h3 class="sign_up_h3">개인정보를 입력해 주세요</h3>
				<table class="join_table">
					<colgroup>
						<col width="180">
						<col width="500">
					</colgroup>

					<tr>
						<th><label for="id">아이디</label></th>
						<td colspan="3"><input type="text" name="id" id="id"
							size="25" class="inputText" onkeyup="checkId()"><span
							id="check_message"> ※영문자, 숫자만 입력 가능. 최소 3자이상 입력하세요. </span></td>
					</tr>
					<tr>
						<th><label for="password">비밀번호</label></th>
						<td colspan="3"><input type="password" name="password"
							id="pass" size="25" class="inputText"> <span
							id="check_message">영문자 또는 숫자,4~12자리</span></td>
					</tr>
					<tr>
						<th><label for="re-pass">비밀번호 확인</label></th>
						<td colspan="3"><input type="password" name="repass"
							id="re-pass" size="25" class="inputText"></td>
					</tr>
					<tr>
						<th><label for="name">이름</label></th>
						<td colspan="3"><input type="text" name="name" id="name"
							size="25" class="inputText"></td>
					</tr>
					<tr>
						<th><label for="gender">성별</label></th>
						<td><input type="radio" name="chk-gender" value="male"
							checked="checked">남자 <input type="radio"
							name="chk-gender" value="female">여자</td>
					</tr>
					<tr>
						<th><label for="birth">생년월일</label></th>
						<td><select name="Year">
								<%for(int i = 2017; i>=1900; i--){ %>
								<option value="<%= i %>"><%=i %></option>
								<%} %>
						</select> 년 &nbsp;&nbsp;<input type="text" name="month" id="month" size="8"
							class="inputText"> 월 &nbsp;&nbsp;<input type="text"
							name="day" id="day" size="8" class="inputText"> 일</td>
					</tr>
					<tr>
						<th><label for="tel">연락처</label></th>
						<td colspan="5"><select name="TEL">
								<option value="010">010</option>
								<option value="011">011</option>
						</select> - <input type="text" name="tel1" id="tel1" size="8"
							class="inputText"> - <input type="text" name="tel2"
							id="tel2" size="8" class="inputText"></td>
					</tr>
					<tr>
						<th><label for="email">이메일</label></th>
						<td colspan="3"><input type="text" name="email" id="email"
							size="25" class="inputText"></td>
					</tr>
				</table>
			</fieldset>
			<div id="signup_button">
				<!--   <input type="button" value="가입" onclick="checkForm()"/>  -->
				<button type="button" onclick="checkForm()">가 입</button>
				<button type="button" onclick="location.href= 'main.do'">취
					소</button>
			</div>
		</form>
	</div>

	<%@ include file="../inc/footer.jspf"%>
	<%@ include file="../inc/side-bar.jspf"%>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/signup.js"></script>
</body>
</html>