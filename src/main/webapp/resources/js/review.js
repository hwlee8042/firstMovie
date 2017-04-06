function read(){
	
	var formObj = $("form[role='form']");
	console.log(formObj);
	
	$("#review_regist").click(function(){
		checkForm();
		formObj.attr("action", "review.do");
		formObj.attr("method", "GET");
		formObj.submit();
	});
}
function checkForm(){
	if(document.review_regist.rcomment.value == ""){
		alert("내용을 입력해주세요.");
		document.rcomment.focus();
		return;
	}
}

/*$.ajax({
    url : "addticketing.do",
    type : "POST",
    data : {
       ticket_movie : movie_name,
       ticket_movie_serialnumber : movie_serialnumber,
       ticket_theater : room_number,
       ticket_showtime : movie_showtime,
       ticket_begintime : movie_when,
       ticket_count : str.length - 1,
       ticket_sit : where,
       ticket_price : price
    },
    cache : false,
    async : false,
    dataType : "text",
    
    success : function(response) {
       if(response == "100") {
          alert("실패");
       }
       else if (response == "200") {
          alert("성공");
       }
    },
    error : function(request, status, error) {
       if (request.status != '0') {
          alert("code : " + request.status + "\r\nmessage : "
                + request.reponseText + "\r\nerror : " + error);
       }
    }
 });*/