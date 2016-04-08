<%-- 
    Document   : index
    Created on : Aug 22, 2015, 7:27:23 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>AITS</title>
        <meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="shortcut icon" type="image/png" href="./images/favicon.ico"/>
        <link href="./css/main.css" rel="stylesheet" media="all">
    </head>
    <body class="en">
        <header role="banner">
            <div class="sub-header">
                <div class="logo-block">
                    <a class="brand smooth-link" href="#about-us">AITS</a>
                </div>
                <div class="mobileIcon"><img src="images/menu.png"></div>
                <ul class="language-block">
                    <li class="${activeUA}"><a href="http://www.aits.ua/">UA</a></li>
                    <li class="${activeEN}"><a href="http://www.aits.sk/">EN</a></li>
                </ul>
                <nav role="navigation" id="nav-main">
                    <ul class="navbar">
                        <li class="active" id="about-us-menu-item"><a href="#about-us">About us</a></li>
                        <li id="what-we-do-menu-item"><a href="#what-we-do">What we do</a></li>
                        <li id="services-menu-item"><a href="#services">Services</a></li>
                        <li id="contacts-menu-item"><a href="#contacts">Contacts</a></li>
                    </ul>
                </nav>
                <div id="nav-trigger">
                    <span><img src="images/menu.png"/></span>
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
                    <!--
                    <li class="slide">
                        <div class="descr-block">
                            <h1 style="font-size: 36px;" class="obl-h">Tondach in Ukraine <br/>Web-orders</h1>
                            <p style="">
                                Web service which allow company clients order products via the web interface. This service performing data exchange with 1C PLATFORM by XML files using SFTP server. 
                            </p>
                            <a class="view-source" href="http://88.81.239.23:59280/Tondach/" target="_blank">View Project</a>
                        </div>
                        <div class="apple-block">
                            <img src="portfolio/tondach_1.png" />
                        </div>
                        </li>
                    <li class="slide">
                        <div class="descr-block">
                            <h1 style="font-size: 36px;" class="obl-h">Carpathian Road</h1>
                            <p style="">
                                Simply corporative web site with some unique functions and easy to use administrative page.
                            </p>
                            <a class="view-source" href="http://www.crc.org.ua" target="_blank">View Project</a>
                        </div>
                        <div class="apple-block">
                            <img src="portfolio/crc.png" />
                        </div>
                        </li>
                    -->
                    <li class="slide">
                        <div class="descr-block">
                            <h1 class="obl-h">Library PJSC "Zakarpattyaoblenergo"</h1>
                            <p>
                                The project is designed to organize the conservation and use of heterogeneous collections of electronic documents in the company. 
                            </p>
                            <p>
                                Flexible to set up the system partition and access allows without unnecessary problems manage electronic documents in various formats (text, graphics, etc.), and set access rights in a convenient form for different user groups.
                            </p>
                        </div>
                        <section id="slider" class="container">
                            <ul class="slider-wrapper">
                            <li class="current-slide">
                                    <img src="portfolio/1.png" title="" alt="">
                            </li>
                            <li>
                                    <img src="portfolio/2.png" title="" alt="">
                            </li>
                            <li>
                                    <img src="portfolio/3.png" title="" alt="">
                            </li>
                            <li>
                                    <img src="portfolio/4.png" title="" alt="">
                            </li>
                            </ul>
                            <ul id="control-buttons" class="control-buttons">
                            </ul>
                        </section>
                    </li>
                    
                    
                    <!--
                    <li class="slide">
                        <div class="descr-block">
                            <h1>Administrative part <span style="font-size: 15px;">(Carpathian  Tourist Road)</span></h1>
                            <p>
                                Administrative part of the Portal for tourism. It allows editors fill the necessary data archive articles and news using convenient web-based interface.
                            </p>
                            <a class="view-source" href="http://www.carpathianroad.com/" target="_blank">View Project</a>
                        </div>
                        <div class="apple-block">
                            <img src="portfolio/bakcoffice.png" />
                        </div>
                        <a class="view-source view-sourceDisplayNone" href="http://www.carpathianroad.com/" target="_blank">View Project</a>
                    </li>
                    <li class="slide">
                        <div class="descr-block">
                            <h1>United Diamonds</h1>
                            <p>
                                Corporate Social Network, based on ASP.NET WebForms. This software has a complex hierarchical structure of users, a wide range of reports and personal access rights for each of them.
                            </p>
                            <a class="view-source" href="http://www.united-diamonds.org/" target="_blank">View Project</a>
                        </div>
                        <div class="apple-block">
                            <img src="portfolio/ud.png" />
                        </div>
                        <a class="view-source view-sourceDisplayNone" href="http://www.united-diamonds.org/" target="_blank">View Project</a>
                    </li>
                    <li class="slide">
                        <div class="descr-block">
                            <h1>TONDACH</h1>
                            <p>
                                This website developed for company Tondach Ukraine. Based on Umbraco CMS. <br/>
                                Functional project allows acquainted with the latest news, to see all products with current prices and contact representatives Tondach Ukraine.
                            </p>
                            <a class="view-source" href="http://tondach.biz/" target="_blank">View Project</a>
                        </div>
                        <div class="apple-block">
                            <img src="portfolio/tondach.png" />
                        </div>
                        <a class="view-source view-sourceDisplayNone" href="http://tondach.biz/" target="_blank">View Project</a>
                    </li>
                    <li class="slide">
                        <div class="descr-block">
                            <h1>ZakarpatEuroTrans Avtograd</h1>
                            <p>
                                
                            </p>
                            <a class="view-source" href="http://zet.com.ua/" target="_blank">View Project</a>
                        </div>
                        <div class="apple-block">
                            <img src="portfolio/zet.png" />
                        </div>
                        <a class="view-source view-sourceDisplayNone" href="http://zet.com.ua/" target="_blank">View Project</a>
                    </li>
                    -->
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
                        <img src="images/hosting.png"/>
                    </div>
                    <p class="main-title">PaaS provider</p>
                    <p class="descr">VMware vSphere </br>and Microsoft Hyper-V</p>
                </div>
                <div class="single-block">
                    <div class="servivesImageDiv">
                        <img src="images/web.png"/>
                    </div>
                    <p class="main-title">WEB DEVELOPMENT</p>
                    <p class="descr">Java; Java EE; Spring MVC, Apache Tomcat (8.0), Oracle JDK, MySQL</p>
                </div>
                <div class="single-block">
                    <div class="servivesImageDiv">
                        <img src="images/1c.png" class="image-1c"/>
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
                        ROBERT JURKO<br/>
                        <span style="font-size: 16px">comercial director</span><br/><br/>
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
                    <img class="loading-gif" src="images/loading-x.gif" />
                </div>
            </div>
        </div>
        <div id="mail-complete" class="side-block contacts-right-block">
            <div class="text-block-contacts">
                <div class="main-text-block">
                    Your letter went to our mailbox, thanks. <br/>
                    Please wait.<br/>
                    <img class="loading-gif" src="images/loading-x.gif" />
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
                    <li><a target="_blank" href="http://www.wienerberger.com/"><img class="vert" src="images/winer.png"/></a></li>
                    <li><a target="_blank" href="http://www.fischersports.com.ua/"><img class="vert" src="images/fisher.png"/></a></li>
                    <li><a target="_blank" href="http://www.energo.uz.ua/"><img class="vert" src="images/zoe.png"/></a></li>
                    <li><a target="_blank" href="http://www.tondach.com/"><img class="vert" src="images/tondach.png"/></a></li>
                    <li><a target="_blank" href="http://zet.com.ua/"><img class="vert" src="images/zet.png"/></a></li>
                </ul>
            </div>
            <div class="copyright">
                <span class="copy">&copy;</span>2016 AITS
            </div>
	</footer>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
        <script src="./js/plugin.js"></script>
        <script src="./js/main.js"></script>
    </body>
</html>
