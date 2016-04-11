/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var url = "/";
var showMenu = false;
$(document).ready(function() {
    $("#nav-mobile").html($("#nav-main").html());
    $("#nav-trigger span").click(function(){
        if ($("nav#nav-mobile ul").hasClass("expanded")) {
            $("nav#nav-mobile ul.expanded").removeClass("expanded").slideUp(250);
            $(this).removeClass("open");
        } else {
            $("nav#nav-mobile ul").addClass("expanded").slideDown(250);
            $(this).addClass("open");
        }
    });
    $(function() {
        $('nav a[href*=#]:not([href=#]), .smooth-link').click(function() {
            $("nav li").removeClass("active");
            var ids = $(this).attr("href").replace('#','');
            $('#'+ids+'-menu-item').addClass("active");
            console.log($('#'+ids+'-menu-item'));
            if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                if (target.length) {
                    $('html,body').animate({ scrollTop: target.offset().top-100 }, 1000);
                    return false;
                }
            }
        });
    });
    $('.slidewrap').carousel({
        slider: '.slider',
        slide: '.slide',
        slideHed: '.slidehed',
        nextSlide : '.next',
        prevSlide : '.prev',
        addPagination: false,
        addNav : false
    });
    $(document).on("scroll", onScroll);
    $('.mobileIcon').click(function(){
        if(showMenu){
            $('#nav-main').removeClass('navActive');
            $('header').removeClass('headerSmallMenu');
            $('.language-block').removeClass('navActive');
            $('.mobileIcon').removeClass("rotate-to-90");
            showMenu = false;
        }
        else{
            $('#nav-main').addClass('navActive');
            $('.language-block').addClass('navActive');
            $('header').addClass('headerSmallMenu');
            $('.mobileIcon').addClass("rotate-to-90");
            showMenu = true;
        }
    });
    $('nav a[href*=#]:not([href=#])').click(function(){
            $('#nav-main').removeClass('navActive');
            $('.language-block').removeClass('navActive');
            $('header').removeClass('headerSmallMenu');
            $('.mobileIcon').removeClass("rotate-to-90");
            showMenu = false;
    });
});
function replaceChar(inputString) {
   inputString = inputString.replace('~', '');
   inputString = inputString.replace('#', '');
   inputString = inputString.replace('^', '');
   inputString = inputString.replace('&', '');
   inputString = inputString.replace('*', '');
   inputString = inputString.replace('`', '');
   inputString = inputString.replace('\'', '');
   inputString = inputString.replace('+', '');
   return inputString;
}
function IsEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}
/*$(".mail-us").click(function(){
    $("#mail-block").fadeOut("slow", function() {
    $("#form-div").fadeIn("slow");
    });
});*/
$("#button-blue").click(function (){
    $('#form-div input:not(#button-blue)').css("border","none");
    $('#form-div textarea').css("border","none");
    $("#button-blue").prop('disabled', true);
    $(".validation").html("");
    var validation = true;
    if($("#name").val() === null || $("#name").val() === "" || $("#email").val() === null || $("#email").val() === "" || $("#comment").val() === null || $("#comment").val() === "") {
        validation = false;
    }
    if(!IsEmail($("#email").val())) {
        validation = false;
    }
    if(validation){
        $("#form-div").fadeOut("fast", function() {
            $("#mail-loading").fadeIn("fast");
        });
        var name = replaceChar($("#name").val());
        var comment = replaceChar($("#comment").val());
        $.ajax({
            type: "get",
            url: url+"sendmail",
            cache: false,    
            data:'name='+ name +'&email='+$("#email").val()+'&text='+comment,
            success: function(response){
                if(response === "" || response === null){
                    $("#mail-loading").fadeOut("fast", function() {
                        $("#form-div").fadeIn("fast");
                    });
                    $(".validation").html("Something goes wrong with sending mail. Try again later.");
                    $("#button-blue").prop('disabled', false);
                }
                else {
                    $("#mail-loading").fadeOut("fast", function() {
                        $("#mail-complete").fadeIn("fast");
                        $("#button-blue").prop('disabled', false);
                        setTimeout(function() { 
                        $("#mail-complete").fadeOut("slow", function() {
                            $("#form-div").fadeIn("slow");
                        });
                        }, 3000);
                    });
                }
            }, 
            error: function(response){ 
                $("#mail-loading").fadeOut("fast", function() {
                    $("#form-div").fadeIn("fast");
                });
                $(".validation").html("Something goes wrong with sending mail. Try again later.");
                $("#button-blue").prop('disabled', false);
            }
        });
    }
    else {
        $(".validation").html("Fill all fields correctly, please.");
        $("#button-blue").prop('disabled', false);
        $('#form-div input:text').filter(function(){
            return $.trim(this.value).length == 0;
        }).css("border","1px solid red");
        $('#form-div textarea').filter(function(){
            return $.trim($("#form-div textarea").val()).length == 0;
        }).css("border","1px solid red");
    }
});   
function onScroll(event){
    if(window.innerWidth>1000){
        var scrollPos = $(document).scrollTop();
        $('nav li a').each(function () {
            var currLink = $(this);
            var refElement = $(currLink.attr("href"));
            if (refElement.position().top-100 <= scrollPos && refElement.position().top-100 + refElement.height() > scrollPos) {
                $('nav ul li').removeClass("active");
                var ids = $(this).attr("href").replace('#','');
                $('#'+ids+'-menu-item').addClass("active");
            }
            else{
                var ids = $(this).attr("href").replace('#','');
                $('#'+ids+'-menu-item').removeClass("active");
            }
        });
    }
}
$(function() {
	/** -----------------------------------------
	 * Modulo del Slider 
	 -------------------------------------------*/
	 var SliderModule = (function() {
	 	var pb = {};
	 	pb.el = $('#slider');
	 	pb.items = {
	 		panels: pb.el.find('.slider-wrapper > li'),
	 	}

	 	// Interval del Slider
	 	var SliderInterval,
	 		currentSlider = 0,
	 		nextSlider = 1,
	 		lengthSlider = pb.items.panels.length;

	 	// Constructor del Slider
	 	pb.init = function(settings) {
	 		this.settings = settings || {duration: 8000};
	 		var items = this.items,
	 			lengthPanels = items.panels.length,
	 			output = '';

	 		// Insertamos nuestros botones
	 		for(var i = 0; i < lengthPanels; i++) {
	 			if(i == 0) {
	 				output += '<li class="active"></li>';
	 			} else {
	 				output += '<li></li>';
	 			}
	 		}

	 		$('#control-buttons').html(output);

	 		// Activamos nuestro Slider
	 		activateSlider();
	 		// Eventos para los controles
	 		$('#control-buttons').on('click', 'li', function(e) {
	 			var $this = $(this);
	 			if(!(currentSlider === $this.index())) {
	 				changePanel($this.index());
	 			}
	 		});

	 	}

	 	// Funcion para activar el Slider
	 	var activateSlider = function() {
	 		SliderInterval = setInterval(pb.startSlider, pb.settings.duration);
	 	}

	 	// Funcion para la Animacion
	 	pb.startSlider = function() {
	 		var items = pb.items,
	 			controls = $('#control-buttons li');
	 		// Comprobamos si es el ultimo panel para reiniciar el conteo
	 		if(nextSlider >= lengthSlider) {
	 			nextSlider = 0;
	 			currentSlider = lengthSlider-1;
	 		}

	 		controls.removeClass('active').eq(nextSlider).addClass('active');
	 		items.panels.eq(currentSlider).fadeOut('slow');
	 		items.panels.eq(nextSlider).fadeIn('slow');

	 		// Actualizamos los datos del slider
	 		currentSlider = nextSlider;
	 		nextSlider += 1;
	 	}

	 	// Funcion para Cambiar de Panel con Los Controles
	 	var changePanel = function(id) {
	 		clearInterval(SliderInterval);
	 		var items = pb.items,
	 			controls = $('#control-buttons li');
	 		// Comprobamos si el ID esta disponible entre los paneles
	 		if(id >= lengthSlider) {
	 			id = 0;
	 		} else if(id < 0) {
	 			id = lengthSlider-1;
	 		}

	 		controls.removeClass('active').eq(id).addClass('active');
	 		items.panels.eq(currentSlider).fadeOut('slow');
	 		items.panels.eq(id).fadeIn('slow');

	 		// Volvemos a actualizar los datos del slider
	 		currentSlider = id;
	 		nextSlider = id+1;
	 		// Reactivamos nuestro slider
	 		activateSlider();
	 	}

		return pb;
	 }());

	 SliderModule.init({duration: 4000});
         
});


