<%-- 
    Document   : delcourses
    Created on : 06 10, 22, 9:07:33 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Course Page</title>
    </head>
    <body>
        <form name="delcourses" action="delcoursesfunc.jsp" method="POST">
        <h3> Delete Course Records </h3>
        Delete course id <input type="text" name="courseid" id="courseid"><br>
        <input type="submit" value="Delete Courses Data" name="delcourses">
    </form>
    </body>
</html>
