<%-- 
    Document   : index
    Created on : Oct 17, 2023, 1:17:19 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>Join our email list</h1>
    <p>To join our email list, enter your name and
       email address below.</p>
    <jsp:useBean id="user" scope="session" class="murach.business.User"/>    
    <form action="abc" method="post">
        <input type="hidden" name="action" value="add">        
        <label class="pad_top">Email:</label>
        <input type="email" name="email" required
               value="${user.email}" name="user"/><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" required
               value="${user.firstName}" name="user"/><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" required
               value="${user.lastName}" name="user"/><br>        
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" class="margin_left">
        
    </form>
    </body>
</html>
