
$(window).ready(function(){
	body.animate({scrollTop:0});
});


/*side-bar*/
var body = $(document.body);

$(window).scroll(function(){
	var nowScroll = $(this).scrollTop();
	if(nowScroll >= 150){
		$('#side-bar').fadeIn();
		$('#side-bar').addClass('show',150);
	}else{
		$('#side-bar').fadeOut();
		$('#side').removeClass('show',30);
	}
});
$('.top-bt').click(function(){
	body.animate({scrollTop:0});
});


/*메인의 visualBox넘어가기*/
/*
$(document).ready(function(){
	$('.bxslider').bxSlider({
		  auto: true,
		  autoControls: true
		});
});*/

/*menu:mouseover*/
	/*영화*/
$('.gnb-movie').mouseover(function(){
	$('.movie-ul').fadeIn(50);
});
$('.gnb-movie').mouseleave(function(){
	$('.movie-ul').fadeOut(5);
});
	/*극장*/
$('.gnb-theater').mouseover(function(){
	$('.theater-ul').fadeIn(50);
});
$('.gnb-theater').mouseleave(function(){
	$('.theater-ul').fadeOut(5);
});
/*로그인*/
$('#header .login').click(function(){
	$('#login-modal').fadeIn();
	$('.loginForm').delay(300).addClass('open',500,'easeOutBack');
});
$('.loginForm .close').click(function(){
	$('#login-modal').delay(300).fadeOut();
	$('.loginForm').removeClass('open',500);
});

$('.loginBt').click(function(){
	document.login.submit();/*document에 Form태그의 name이 login인 form을 submit해라*/
});




/*ticketing*/
$('.movieChoice-Btn').click(function(){
	$('#ticketing-movieC-wrap').fadeIn();
	$('.movieC-modal').delay(300).addClass('showTC',500,'easeOutBack');
});
$('#ticketing-movieC-wrap').click(function(){
	$('.movieC-modal').removeClass('showTC',300);
	$('#ticketing-movieC-wrap').fadeOut();
});




