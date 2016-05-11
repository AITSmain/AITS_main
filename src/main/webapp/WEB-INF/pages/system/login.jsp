<%-- 
    Document   : login
    Created on : May 9, 2016, 2:35:14 PM
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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" type="image/png" href="${Constants.URL}images/favicon.ico"/>
	<link href="${Constants.URL}css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="${Constants.URL}css/admin.css" rel="stylesheet">
        <style>
            body {
                background: #eee !important;	
            }

            .wrapper {	
                margin-top: 80px;
                margin-bottom: 80px;
            }
        </style>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    </head>
    <body class="en">
                    <div class="container wrapper">

      <form id="login_form" role="form" class="form-signin" name="login-form" action="<c:url value="/system/login.do" />" method="POST">
        <h3 class="form-signin-heading" style="text-align:center">Log in</h3>
        <label for="inputEmail" class="sr-only">Login</label>
        <input style="margin-bottom: 20px;" type="text" id="user_login" name="user_login" class="form-control" placeholder="Login" required="" autofocus="">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="user_password" id="user_password" class="form-control" placeholder="Password" required="">
        <input type="hidden" value="user_code" name="user_code" id="user_code"/>
      </form>
        <button class="btn btn-lg btn-primary btn-block submit-button" type="submit">Enter</button>
        <div class="validation"></div>

    </div>
        
      <footer class="footer">
        <div>
                Developed by <a href="http://www.aits.ua/" target="_blank"><span class="reserved"> AITS</span></a>
                
            </div>
      </footer>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="${Constants.URL}js/bootstrap.min.js"></script>
        <script>
            $('#user_password').keypress(function (e) {
                var key = e.which;
                if(key === 13)
                {
                   $(".submit-button").click();
                }
            }); 
            $(".submit-button").click(function(){
                console.log("sss");
                $(".validation").html("");
                $.ajax({
                    type: "get",
                    url: "${Constants.URL}system/ajax/check/user",
                    cache: false,    
                    data:'user_login='+ $("#user_login").val() +'&user_password='+$("#user_password").val(),
                    success: function(response){
                        if(response === "" || response === null){
                            $(".validation").html("<span style='color:red'>Bad login or password</span>");
                        }
                        else {
                            $("#user_code").val(response);
                            $("#login_form").submit();
                        }
                    }, 
                    error: function(response){      
                        console.log(response);
                    }
                });
            });  
        </script>
    </body>
</html>
