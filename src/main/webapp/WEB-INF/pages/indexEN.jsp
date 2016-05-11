<%-- 
    Document   : index
    Created on : Aug 22, 2015, 7:27:23 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="Constants" class="ua.aits.main.functions.Constants" scope="session"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>AITS</title>
        <meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="shortcut icon" type="image/png" href="${Constants.URL}images/favicon.ico"/>
        <link href="${Constants.URL}css/main.css" rel="stylesheet" media="all">
        <link href="${Constants.URL}css/jquery.bxslider.css" rel="stylesheet" />
        <link href="//cdn.rawgit.com/noelboss/featherlight/1.4.1/release/featherlight.min.css" type="text/css" rel="stylesheet" />
        <script>
            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
            })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

            ga('create', 'UA-76413640-1', 'auto');
            ga('send', 'pageview');

        </script>
    </head>
    <body class="en">
        <header role="banner">
            <div class="sub-header">
                <div class="logo-block">
                    <a class="brand smooth-link" href="#about-us">AITS</a>
                </div>
                <div class="mobileIcon"><img src="${Constants.URL}images/menu.png"></div>
                <ul class="language-block">
                    <li class="${activeUA}"><a href="${Constants.URL}ua/index">UA</a></li>
                    <li class="${activeEN}"><a href="${Constants.URL}en/index">EN</a></li>
                </ul>
                <nav role="navigation" id="nav-main">
                    <ul class="navbar">
                        <li class="active" id="about-us-menu-item"><a href="#about-us">About us</a></li>
                        <li id="what-we-do-menu-item"><a href="#what-we-do">Portfolio</a></li>
                        <li id="services-menu-item"><a href="#services">Services</a></li>
                        <li id="contacts-menu-item"><a href="#contacts">Contacts</a></li>
                    </ul>
                </nav>
                <div id="nav-trigger">
                    <span><img src="${Constants.URL}images/menu.png"/></span>
                </div>
                <nav id="nav-mobile"></nav>
            </div>
	</header>
	<div class="topIntend"></div>
	<main role="main">
    <section id="about-us">
        <div class="own-background">
            <div class="main-header-block-about">
                <h3 class="main-header-block">About Us</h3>
                <a><span class="arrow-red"></span></a>
            </div>
            <div class="main-text-block">
                Advanced Information Technology Systems <br/>is a software developer for businesses.
            </div>
            <div class="second-text-block">
                We provide modern integrated IT solutions to meet the diverse needs of customers and the necessary IT support for your business.
            </div>
            <a><span class="rigth-arrow-down"></span></a>
        </div>
    </section>
    <section id="what-we-do">
        <div class="portfolio-block">
            <div class="main-header-block-portfolio">
                <h3 class="main-header-block">Portfolio</h3>
                <a><span class="arrow-red"></span></a>
            </div>
            <div class="slidewrap" data-autorotate="5000">
                <ul class="slidecontrols">
                    <li><a href="#sliderName" class="prev"><div class="portfolio-left-arrow"></div></a></li>
                    <li><a href="#sliderName" class="next"><div class="portfolio-right-arrow"></div></a></li>
                </ul>
                <ul class="slider" id="sliderName">
                    <c:forEach items="${projects}" var="item">
                        <li class="slide">
                            <div class="descr-block">
                                <h1 class="obl-h">${item.project_name_en}</h1>
                                <p>${item.project_descr_en}</p>   
                            </div>
                            <section id="slider-${item.project_id}" class="container slider-main">
                                <div class="bxslider">
                                        <c:forEach items="${item.project_img}" var="img">
                                    <li class="current-slide">
                                        <a href="${Constants.URL}${img}" data-featherlight="image"><img src="${Constants.URL}${img}" title="" alt=""></a>
                                    </li>
                                </c:forEach> 
                                    </div>
                            </section>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </section>
    <section id="services">
        <div class="own-background own-backgroundServices">
            <div class="main-header-block-services">
                <h3 class="main-header-block">Services</h3>
                <a><span class="arrow-red"></span></a>
            </div>
            <div class="main-text-block">
                We create optimal solutions <br/>based on modern technologies.
            </div>
            <div class="images-blocks">
                <div class="single-block">
                    <div class="servivesImageDiv">
                        <img src="${Constants.URL}images/hosting.png"/>
                    </div>
                    <p class="main-title">PaaS provider</p>
                    <p class="descr">VMware vSphere </br>and Microsoft Hyper-V</p>
                </div>
                <div class="single-block">
                    <div class="servivesImageDiv">
                        <img src="${Constants.URL}images/web.png"/>
                    </div>
                    <p class="main-title">WEB DEVELOPMENT</p>
                    <p class="descr">Java; Java EE; Spring MVC, Apache Tomcat (8.0), Oracle JDK, MySQL</p>
                </div>
                <div class="single-block">
                    <div class="servivesImageDiv">
                        <img src="${Constants.URL}images/1c.png" class="image-1c"/>
                    </div>
                    <p class="main-title">1C PLATFORM</p>
                    <p class="descr">1С: Enterprise Version 8.3</p>
                </div>
            </div>
        </div>
    </section>

    <section id="contacts">
            <div class="main-header-block-contacts">
                <h3 class="main-header-block">Contact</h3>
                <a><span class="arrow-red"></span></a>
            </div>
            <div class="text-block-contacts">               
                    <p>                      
                        SERGII ZAVIDFOLUSHI<br/>
                        <span style="font-size: 16px">director</span><br/><br/>
                        Loreta Lutak<br/>
                        <span style="font-size: 16px">custom manager</span><br/><br/>
                        Advanced IT Systems ltd<br/>
                        88015 Uzhgorod<br/>K.Miksata str. 15<br/><br/>
                    </p>
            </div>
           
                <div id="form-div">
                    <form class="form" id="form1">
                    <p class="name">
                      <input name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Name" id="name" />
                    </p>
                    <p class="email">
                      <input name="email" type="text" class="validate[required,custom[email]] feedback-input" id="email" placeholder="Email" />
                    </p>
                    <p class="text">
                      <textarea name="text" class="validate[required,length[6,300]] feedback-input" id="comment" placeholder="Comment"></textarea>
                    </p>
                    <div class="submit">
                        <span class="validation"></span>
                        <input type="button" value="SEND" id="button-blue"/>
                        <div class="ease"></div>
                    </div>
                    </form>
                </div>
            
     
        <div id="mail-loading" class="side-block contacts-right-block">
            <div class="text-block-contacts">
                <div class="main-text-block">
                    <img class="loading-gif" src="${Constants.URL}images/loading-x.gif" />
                </div>
            </div>
        </div>
        <div id="mail-complete" class="side-block contacts-right-block">
            <div class="text-block-contacts">
                <div class="main-text-block">
                    Your letter sent to our mailbox, thanks. <br/>
                    Please wait.<br/>
                    <img class="loading-gif" src="${Constants.URL}images/loading-x.gif" />
                </div>
            </div>
        </div>
             

    </section>
	</main>
	<footer id="partners" role="contentinfo">
            <div class="partners">
                <h3 class="main-header-block">Partners</h3>
                <a><span class="arrow-red"></span></a>
                <ul>
                    <li><a target="_blank" href="http://www.wienerberger.com/"><img class="vert" src="${Constants.URL}images/winer.png"/></a></li>
                    <li><a target="_blank" href="http://www.fischersports.com.ua/"><img class="vert" src="${Constants.URL}images/fisher.png"/></a></li>
                    <li><a target="_blank" href="http://www.energo.uz.ua/"><img class="vert" src="${Constants.URL}images/zoe.png"/></a></li>
                    <li><a target="_blank" href="http://www.tondach.com/"><img class="vert" src="${Constants.URL}images/tondach.png"/></a></li>
                    <li><a target="_blank" href="http://zet.com.ua/"><img class="vert" src="${Constants.URL}images/zet.png"/></a></li>
                </ul>
            </div>
            <div class="copyright">
                <span class="copy">&copy;</span>2016 AITS
                <a class="enter-link" target="_blank" href="<c:url value="/system/login" />"><img src="${Constants.URL}images/enter-icon.png" alt=""/></a>  
            </div>
	</footer>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js" type="text/javascript"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
        <script src="${Constants.URL}js/plugin.js"></script>
        <script src="${Constants.URL}js/jquery.bxslider.min.js"></script>
        <script src="//cdn.rawgit.com/noelboss/featherlight/1.4.1/release/featherlight.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="${Constants.URL}js/main.js"></script>
    </body>
</html>
