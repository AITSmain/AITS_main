<%-- 
    Document   : main
    Created on : Aug 22, 2015, 7:33:42 PM
    Author     : kiwi
--%>

<%@tag description="Index Page Template" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:useBean id="Constants" class="ua.aits.main.functions.Constants" scope="session"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>AITS</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" type="image/png" href="./images/favicon.ico"/>
        <link href="./css/main.css" rel="stylesheet" media="all">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="./js/plugin.js"></script>
    </head>
    <body>
        <header role="banner">
            <div class="sub-header">
                <ul class="language-block">
                    <li>UA</li>
                    <li class="active">EN</li>
                </ul>
                <div class="logo-block">
                    <a class="brand">AITS</a>
                </div>
                <nav role="navigation">
                    <ul class="navbar">
                        <li class="active"><a href="#about-us">About us</a></li>
                        <li><a href="#what-we-do">What we do</a></li>
                        <li><a href="#services">Services</a></li>
                        <li><a href="#careers">Careers</a></li>
                        <li><a href="#contacts">Contacts</a></li>
                    </ul>
                </nav>
            </div>
	</header>
	<div style="height:100px;"></div>
	<main role="main">
            <jsp:doBody/>
	</main>
	<footer role="contentinfo">
            <div>
                <span class="copy">&copy;</span>2015 AITS <span class="reserved">All rights reserved</span>
            </div>
	</footer>
	<script>
            $(document).ready(function() {
                $(function() {
                    $('nav a[href*=#]:not([href=#])').click(function() {
                        $("nav li").removeClass("active");
                        $(this).parent("li").addClass("active");
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
            });
	</script>
    </body>
</html>