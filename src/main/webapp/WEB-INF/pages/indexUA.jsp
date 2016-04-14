<%-- 
    Document   : index
    Created on : Aug 22, 2015, 7:27:23 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
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
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-76413640-1', 'auto');
          ga('send', 'pageview');

        </script>
    </head>
    <body class="ua">
        <header role="banner">
            <div class="sub-header">
                <div class="logo-block">
                    <a class="brand smooth-link" href="#about-us">AITS</a>
                </div>
                <div class="mobileIcon"><img src="${Constants.URL}images/menu.png"></div>
               
                <nav role="navigation" id="nav-main">
                    <ul class="navbar">
                        <li class="active" id="about-us-menu-item"><a href="#about-us">Про нас</a></li>
                        <li id="what-we-do-menu-item"><a href="#what-we-do">Портфоліо</a></li>
                        <li id="services-menu-item"><a href="#services">Сервіси</a></li>
                        <li id="contacts-menu-item"><a href="#contacts">Контакти</a></li>
                    </ul>
                </nav>
                <ul class="language-block">
                    <li class="${activeUA}"><a href="${Constants.URL}ua/index">UA</a></li>
                    <li class="${activeEN}"><a href="${Constants.URL}en/index">EN</a></li>
                </ul>
                
              
                <div id="nav-trigger">
                    <span><img src="${Constants.URL}images/menu.png"/></span>
                </div>
            </div>
	</header>
	<div class="topIntend"></div>
	<main role="main">
    <section id="about-us">
        <div class="own-background">
            <div class="main-header-block-about">
                <h3 class="main-header-block">Про нас</h3>
                <a><span class="arrow-red"></span></a>
            </div>
            <div class="main-text-block">
                Передові ІТ Системи є розробником програмного забезпечення для бізнесу.
            </div>
            <div class="second-text-block">
                Ми надаємо сучасні інтегровані ІТ-рішення для задоволення різноманітних потреб клієнтів та необхідну ІТ-підтримку для вашого бізнесу.
            </div>
            <a><span class="rigth-arrow-down"></span></a>
        </div>
    </section>
    <section id="what-we-do">
        <div class="portfolio-block">
            <div class="main-header-block-portfolio">
                <h3 class="main-header-block">Портфоліо</h3>
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
                            <h1 class="obl-h">TONDACH® Україна <br/>
                                Веб-замовлення</h1>
                            <p style="">
                                Веб-сервіс, який дозволяє клієнтам компанії Tondach здійснювати замовлення через веб-інтерфейс. Даний сервіс взаємодіє з платформою 1С шляхом обміну файлами формату XML, використовуючи для цього SFTP сервер.
                            </p>
                            <a class="view-source" href="http://88.81.239.23:59280/Tondach/" target="_blank">View Project</a>
                        </div>
                        <div class="apple-block">
                            <img src="portfolio/tondach_1.png" />
                        </div>
                        <div class="slider1">
                            <ul>
                                    <li><img src="portfolio/1.png" alt=""></li>
                                    <li><img src="portfolio/2.png" alt=""></li>
                                    <li><img src="portfolio/3.png" alt=""></li>
                                    <li><img src="portfolio/4.png" alt=""></li>
                                    <li><img src="portfolio/5.png" alt=""></li>
                            </ul>
                        </div>
                        </li>
                    <li class="slide">
                        <div class="descr-block">
                            <h1 style="font-size: 36px;" class="obl-h">Carpathian Road</h1>
                            <p style="">
                                Корпоративний веб-сайт, котрий надає відвідувачам сайту ознайомитись з виконаними проектами компанії та звязатись з її представниками. 
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
                            <h1 class="obl-h">Електронна бібліотека ПАТ "Закарпаттяобленерго"</h1>
                            <p>
                                Проект розроблений для організації, збереження і використання різнорідних колекцій електронних документів в компанії. 
                            </p>
                            <p>
                                Гнучка в налаштуванні система розділів та доступу дозволяє без зайвих проблем керувати електронними документами різних форматів, та налаштувати права доступу для різних груп користувачів в зручному для них вигляді.
                            </p>     
                        </div>
                        <section id="slider" class="container">
                            <ul class="slider-wrapper">
                            <li class="current-slide">
                                    <img src="${Constants.URL}portfolio/1.png" title="" alt="">
                            </li>
                            <li>
                                    <img src="${Constants.URL}portfolio/2.png" title="" alt="">
                            </li>
                            <li>
                                    <img src="${Constants.URL}portfolio/3.png" title="" alt="">
                            </li>
                            <li>
                                    <img src="${Constants.URL}portfolio/4.png" title="" alt="">
                            </li>
                            </ul>
                            <ul id="control-buttons" class="control-buttons">
                            </ul>
                        </section>
                    </li>
                    <!--
                    <li class="slide">
                        <div class="descr-block">
                            <h1>Carpathian  Tourist Road</h1>
                            <p>
                                Туристичний портал з глибокою структурою, що розроблений на базі платформи Java EE та фреймворку Spring MVC. Проект володіє різноманіттям функцій і дозволяє без зайвих зусиль підібрати найкращий маршрут для подорожі.
                            </p>
                        </div>
                        <div class="apple-block">
                            <img src="portfolio/ctrNew.png" />
                        </div>
                        <a class="view-source view-sourceDisplayNone" href="http://www.carpathianroad.com/" target="_blank"></a>
                    </li> 
                    <li class="slide">
                        <div class="descr-block">
                            <h1>Back-офіс <br><span style="font-size: 16px;">(Carpathian  Tourist Road)</span></h1>
                            <p>
                                Адміністративна частина для туристичного порталу. За її допомогою редактори можуть наповнювати архів даних потрібними статтями та новинами викорситовуючи зручний web-інтерфейс.
                            </p>
                        </div>
                        <div class="apple-block">
                            <img src="portfolio/bakcoffice.png" />
                        </div>
                        <a class="view-source view-sourceDisplayNone" href="http://www.carpathianroad.com/" target="_blank">Переглянути</a>
                    </li>
                    <li class="slide">
                        <div class="descr-block">
                            <h1>United Diamonds</h1>
                            <p>
                                Корпоративна соціальна мережа, розроблена на базі ASP.NET WebForms. Даний програмний продукт володіє складною ієрархічною структурою користувачів, широким набором звітів та персональними правами доступу для кожного з них.
                            </p>
                        </div>
                        <div class="apple-block">
                            <img src="portfolio/ud.png" />
                        </div>
                        <a class="view-source view-sourceDisplayNone" href="http://www.united-diamonds.org/" target="_blank">Переглянути</a>
                    </li>
                    <li class="slide">
                        <div class="descr-block">
                            <h1>TONDACH</h1>
                            <p>
                                Веб-сайт розроблений для компанії Tondach Україна на основі Umbraco CMS. Функціонал проекту дозволяє не тільки ознайомитись з останніми новинами компанії, а й оглянути всі товари з актуальними на них цінами та напряму звязатись з представниками Tondach Україна.
                            </p>
                        </div>
                        <div class="apple-block">
                            <img src="portfolio/tondach.png" />
                        </div>
                        <a class="view-source view-sourceDisplayNone" href="http://tondach.biz/" target="_blank">Переглянути</a>
                    </li>
                    <li class="slide">
                        <div class="descr-block">
                            <h1>ЗакарпатЕвроТранс Автоград</h1>
                            <p>
                                
                            </p>
                        </div>
                        <div class="apple-block">
                            <img src="portfolio/zet.png" />
                        </div>
                        <a class="view-source view-sourceDisplayNone" href="http://zet.com.ua/" target="_blank">Переглянути</a>
                    </li>
                        -->
                </ul>
            </div>
        </div>
    </section>
    <section id="services">
        <div class="own-background own-backgroundServices">
            <div class="main-header-block-services">
                <h3 class="main-header-block">Сервіси</h3>
                <a><span class="arrow-red"></span></a>
            </div>
            <div class="main-text-block">
                Створюємо оптимальні рішення </br>на основі сучасних технологій.
            </div>       
            <div class="images-blocks">
                <div class="single-block">
                    <div class="servivesImageDiv">
                        <img src="${Constants.URL}images/hosting.png"/>
                    </div>
                    <p class="main-title">PaaS провайдер</p>
                    <p class="descr">VMware vSphere </br>and Microsoft Hyper-V</p>
                </div>
                <div class="single-block">
                    <div class="servivesImageDiv">
                        <img src="${Constants.URL}images/web.png"/>
                    </div>
                    <p class="main-title">WEB Розробка</p>
                    <p class="descr">Java; Java EE; Spring MVC, Apache Tomcat (8.0), Oracle JDK, MySQL</p>
                </div>
                <div class="single-block">
                    <div class="servivesImageDiv">
                        <img src="${Constants.URL}images/1c.png" class="image-1c"/>
                    </div>
                    <p class="main-title">1C платформа</p>
                    <p class="descr">1С: Enterprise Version 8.3</p>
                </div>
            </div>
        </div>
    </section>
    
    <section id="contacts">
            <div class="main-header-block-contacts">
                <h3 class="main-header-block">Контакти</h3>
                <a><span class="arrow-red"></span></a>
            </div>
           <div class="text-block-contacts">
                <p>
                    СЕРГІЙ ЗАВІДФОЛУШІ<br/>
                    <span style="font-size: 18px">директор</span><br/><br/>
                    ТОВ Передові ІТ Системи<br/>
                    88015, м.Ужгород<br/> вул. К.Міксата, 15<br/><br/>                  
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
                    Ваш лист відправлено. <br/>
                    Зачекайте хвилинку.<br/>
                    <img class="loading-gif" src="${Constants.URL}images/loading-x.gif" />
                </div>
            </div>
        </div>
     
    </section>
	</main>
	<footer id="partners" role="contentinfo">
            <div class="partners">
                <h3 class="main-header-block">Партнери</h3>
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
            </div>
	</footer>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js" type="text/javascript"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
        <script src="${Constants.URL}js/plugin.js"></script>
        <script src="${Constants.URL}js/main.js"></script>
    </body>
</html>
