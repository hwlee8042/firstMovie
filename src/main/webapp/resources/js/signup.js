var check = no;

function checkId() {
	var sid = document.sign.id.value;
	$.ajax({
		url : "findId.do",
		type : "POST",
		data : {
			id : sid
		},
		cache : false,
		async : false,
		dataType : "text",

		success : function(response) {
			if (response == "") {
				check="yes";
				$("#check_message").html("&nbsp;사용 가능한 아이디입니다.")
								.css('color','#3c77da');
			} else {
				check="no";
				$("#check_message").html("&nbsp;사용 불가능한 아이디입니다.")
								.css("color","#ff4c54");
			}
		},
		error : function(request, status, error) {
			if (request.status != '0') {
				alert("code : " + request.status + "\r\nmessage : "
						+ request.reponseText + "\r\nerror : " + error);
			}
		}
	});
}

function checkForm() {


	if (document.sign.id.value == "") {
		alert("아이디를 입력해주세요");
		document.sign.id.focus();
		return;
	}

	if (document.sign.password.value == "") {
		alert("비밀번호를 입력해주세요");
		document.sign.password.focus();
		return;
	}
	if (document.sign.repass.value != document.sign.password.value) {
		alert("비밀번호를 확인해주세요");
		document.sign.repass.focus();
		return;
	}

	if (document.sign.name.value == "") {
		alert("이름을 입력해주세요");
		document.sign.name.focus();
		return;
	}
	if (document.sign.month.value == "" || document.sign.day.value == "") {
		alert("생년월일을 입력해주세요");
		document.sign.month.focus();
		return;
	}

	if (document.sign.email.value == "") {
		alert("이메일을 입력해주세요");
		document.sign.email.focus();
		return;
	}
	if (document.sign.tel1.value == "" || document.sign.tel2.value == "") {
		alert("전화번호를 입력해주세요");
		document.sign.tel1.focus();
		return;
	}


	/*
   var gender = $(':input[name=gender]:radio:checked').val();

   $.ajax({
      url : "/joinProc.do",
      type : "POST",   
      data : {
         id : sid,
         password : password,
         name : name,
         birth : birth,
         address : address,
         addr_detail : addr_detail,
         zip : zip,
         phone : phone,
         cellphone : cellphone,
         email : email,
         gender : gender
      },
      cache : false,
      async : false,
      dataType : "text",

      success : function(response) {
         if (response == "100") {
            alert("회원가입이 완료되었습니다");
            location.replace("/index.do");
         } else {
            alert("회원가입에 실패했습니다.\n잠시 후에 다시 시도해주세요");
            return false;
         }
      },
      error : function(request, status, error) {
         if (request.status != '0') {
            alert("code : " + request.status + "\r\nmessage : "
                  + request.reponseText + "\r\nerror : " + error);
         }
      }

   });
	 */

	sign.submit();
}