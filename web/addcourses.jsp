<%-- 
    Document   : addcourses
    Created on : 06 9, 22, 7:52:33 PM
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
        <form name="addcourses" action="addcoursesfunc.jsp" method="POST">
        <h3> Add Course Records </h3>
        Add course id <input type="text" name="courseid" id="courseid"><br>
        Add course name <input type="text" name="coursename" id="coursename"><br>
        Add department name <input type="text" name="department" id="department"><br>
        <input type="submit" value="Add Courses Data" name="addcourses">
    </form>
    </body>
</html>
