<%-- 
    Document   : addstudentinput
    Created on : 06 9, 22, 4:41:41 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003

    addstudentinput.jsp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add student Page</title>
    </head>
    <body>
        <form name="addstudent" action="addstudentfunc.jsp" method="POST">
        <h3> Add Student Records </h3>
        Add Student Id <input type="text" name="studentid" id="studentid"><br>
        Add Complete name <input type="text" name="completename" id="completename"><br>
        Add Degree Id <input type="text" name="degreeid" id="degreeid"><br>
        <input type="submit" value="Add Student Data" name="addstudent">
    </form>
    </body>
</html>
