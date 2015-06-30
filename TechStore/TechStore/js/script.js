$(document).ready(function(){

	$("#fondo").css({"height":$(window).height() + "px"});

	var flag = false;
	var scroll;

	$(window).scroll(function(){
		scroll = $(window).scrollTop();

		if(scroll > 170){
			if(!flag){
				$("#logo").css({"margin-top": "-7px", "width": "60px","height":"60px"});				
				$("header").css({"background-color": "#3C3C3C"});
				flag = true;
			}
		}else{
			if(flag){
				$("#logo").css({"margin-top": "150px", "width": "250px","height":"250px"});				
				$("header").css({"background-color": "transparent"});
				flag = false;
			}
		}
	});
     //Slider
	$("#box-imagen > div:gt(0)").hide();
	setInterval(function() {
	     $('#box-imagen > div:first').fadeOut(1000).next().fadeIn(1000).end().appendTo('#box-imagen');
	},3000);

	//if ($("body").height() < $(window).height()) {
	//     $("footer").css({"position":"absolute","bottom":"0px"});
	//}
});