function smartEditor(){
	var oEditors = [];
	var formObj = $("form[role='form']");
	console.log(formObj);
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : oEditors,
		elPlaceHolder : "content",
		// SmartEditor2Skin.html 파일이 존재하는 경로
		sSkinURI : "resources/SE2/SmartEditor2Skin.html",
		htParams : {
			// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseToolbar : true,
			// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : false,
			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			bUseModeChanger : false,
			fOnBeforeUnload : function() {
			}
		},
		fOnAppLoad : function() {
			// 기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
			oEditors.getById["content"].exec("PASTE_HTML", [""]);
		},
		fCreator : "createSEditor2"
	});
	// 네이버 에디터 작성 데이터 전송하기
	$("#savebutton").click(function() {
		checkForm();
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
		$("#news_regist").submit();
	});
	$("#modifybutton").click(function() {
		checkForm1();
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
		$("#news_modify").submit();
	});
};

function checkForm(){
	
	if (document.news_regist.title.value == "") {
		alert("제목을 입력해주세요.");
		document.title.focus();
		return;
	}
}

function checkForm1(){
	
	if (document.news_modify.title.value == "") {
		alert("제목을 입력해주세요.");
		document.title.focus();
		return;
	}
}

function read(){
	
	var formObj = $("form[role='form']");
	console.log(formObj);
	
	$("#modify").click(function(){
		formObj.attr("action","manager_page_modify.mdo");
		formObj.attr("method", "GET");
		formObj.submit();
	});
	$("#delete").click(function(){
		formObj.attr("action","manager_page_delete.mdo");
		formObj.submit();
	});
}
	