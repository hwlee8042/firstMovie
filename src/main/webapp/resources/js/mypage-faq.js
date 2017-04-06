function read(){
	var formObj = $("form[role='form']");
	console.log(formObj);
	
	$("#qnaRewrite").click(function(){
		formObj.attr("action","qna-modify.do");
		formObj.attr("method","GET");
		formObj.submit();
	});
	
	$("#qnaDelete").click(function(){
		formObj.attr("action","qna-delete.do");
		formObj.submit();
	});
}