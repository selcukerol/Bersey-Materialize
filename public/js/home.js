$(document).ready(function() {
	$('html,body').scrollTop(0);
	/////////////////////////OPENING INTRO/////////////////////////////////////////////////////
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

///////////////////////// NAV BAR SELECTION NOT WORKING/////////////////////////////////////////////////////
// $("nav ul").click(function(event) {
//     // remove classes from all lis
//     $("li.active").removeClass("active");
//     // add class to the one we clicked
//     var par = $(event.target).parent().parent();
//     $(par).addClass("active");
//   });

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






















