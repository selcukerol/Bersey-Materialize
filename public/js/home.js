$(document).ready(function() {
	$('html,body').scrollTop(0);
	/////////////////////////OPENING INTRO/////////////////////////////////////////////////////
	if (/visited=true/.test(document.cookie)){
		$('.welcome-container').addClass("hidden");
		$('#logo').css('display','block');
		$('#navbar').css('display','block');
	}
	else{
		setTimeout(function(){
			$('.welcome-text').removeClass('hidden');
		},500);
		setTimeout(function(){
			$('.welcome-text-sub').removeClass('hidden');
		},3000);
		setTimeout(function(){
			$('.welcome-container').fadeOut(1000);
		},5000);
		setTimeout(function(){
			$('.welcome-container').addClass("hidden");
		},6500);
		setTimeout(function(){
			$('#logo').fadeIn(2000);
		},5000);
		setTimeout(function(){
			$('#navbar').fadeIn(2000);
		},5000);
		document.cookie = 'visited=true'
	}	
	$('body.std #logo').css('display','block');
	$('body.std #navbar').css('display','block');
	(function($){
		$(function(){
			$('.button-collapse').sideNav({
				edge:'right'
			});
			$('.parallax').parallax();
			setTimeout(function(){$('.slider').slider();
		},1000);	
  }); // end of document ready
})(jQuery); // end of jQuery name space

////////////////////////////////////// // FORM CONTROL /////////////////////////////////////////////////////////

(function() {

	var inputs = document.createElement('input');
	
	var supports = {};
	
	supports.autofocus   = 'autofocus' in inputs;
	supports.required    = 'required' in inputs;
	supports.placeholder = 'placeholder' in inputs;

	var send = document.getElementById('contact-submit');
	if(send) {
		send.onclick = function () {
			this.innerHTML = '...Sending';
		}
	}
})();	
});






















