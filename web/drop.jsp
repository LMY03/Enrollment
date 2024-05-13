<%-- 
    Document   : drop
    Created on : 06 10, 22, 3:48:22 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Courses to Drop</title>
    </head>
    <body>
        <form name="add to cart" action="addtodrop.jsp" method="POST">
        Enter Student Id <input type="text" name="studentid" id="studentid"><br>
        <input type="submit" value="Next" name="Next">
        </form>
        <a href="index.html">Back to Main Menu</a>
    </body>
</html>