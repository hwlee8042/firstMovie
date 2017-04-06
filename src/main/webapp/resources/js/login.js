function joincheck(){
	
	if(document.login.id.value==""){
		alert("아이디를 입력해주세요.");
		document.login.id.focus();
		return;
	}
	if(docment.login.password.value=""){
		alert("비밀번호를 입력해주세요.");
		document.login.password.focus();
		return;
	}
}