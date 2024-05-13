<%-- 
    Document   : viewcourses
    Created on : 06 9, 22, 11:54:35 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View courses Page</title>
    </head>
    <body>
        <form name="viewcourses" action="viewcoursesfunc.jsp" method="POST">
        <h3> View Course Records </h3>
        Input course id <input type="text" name="courseid" id="courseid"><br>
        <input type="submit" value="View Course data" name="viewcourses">
    </form>
    </body>
</html>