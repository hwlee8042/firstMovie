$(function() {
    $( "#testDatepicker" ).datepicker({
        dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        closeText: '닫기', 
        dateFormat: "yy"+"-"+"mm"+"-"+"dd"
    });
});


function checkForm() {
	
	if (document.movie_add.name.value == "") {
		alert("영화명을 입력해주세요.");
		document.movie_add.name.focus();
		return;
	}
	if (document.movie_add.reldate.value == "") {
		alert("개봉일을 설정해주세요.");
		document.movie_add.reldate.focus();
		return;
	}
	if (document.movie_add.genre.value == "") {
		alert("장르를 입력해주세요.");
		document.movie_add.genre.focus();
		return;
	}
	if (document.movie_add.director.value == "") {
		alert("감독을 입력해주세요.");
		document.movie_add.director.focus();
		return;
	}
	if (document.movie_add.story.value == "") {
		alert("줄거리를 입력해주세요");
		document.movie_add.story.focus();
		return;
	}

	movie_add.submit();
}