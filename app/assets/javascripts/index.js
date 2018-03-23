$(document).ready(function(){

	$(window).scroll(function() {
		if ($(this).scrollTop() > 1){  
    		$('header').addClass("sticky");
  		}
 		 else{
   			 $('header').removeClass("sticky");
 			 }
	});///////////////scroll header/////////////////////////
	$('.nav_mob').hide();
    $('.mob').on('click', function(){
      $('.nav_mob').slideToggle();
     });////////////////////////////////////////////


  $(".screen1_a").on("click", function (event) {
        event.preventDefault();
        var id  = $(this).attr('href'),
            top = $(id).offset().top;
        $('body,html').animate({scrollTop: top}, 1500);
    });




}); // end ready 