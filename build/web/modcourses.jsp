<%-- 
    Document   : modcourses
    Created on : 06 10, 22, 9:13:32 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify Course Page</title>
    </head>
    <body>
        <form name="addcourses" action="modcoursesfunc.jsp" method="POST">
        <h3> Modify Course Records </h3>
        Input course id <input type="text" name="courseid" id="courseid"><br>
        Modify course name <input type="text" name="coursename" id="coursename"><br>
        Modify department name <input type="text" name="department" id="department"><br>
        <input type="submit" value="Modify Courses Data" name="modcourses">
    </form>
    </body>
</html>