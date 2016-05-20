<%-- 
    Document   : 500
    Created on : Apr 7, 2015, 9:52:03 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:useBean id="Constants" class="ua.aits.main.functions.Constants" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>500 page</title>
        <style>
            body {
                background-color: #DBDCDC;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <a href="${Constants.URL}en/index">
            <img src="${Constants.URL}images/500.png" />
            <h3>We got a bug report and fix it soon.</h3>
        </a>
    </body>
</html>