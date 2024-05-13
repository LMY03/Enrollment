<%-- 
    Document   : delstudent
    Created on : 06 10, 22, 3:35:47 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
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
        <form name="delstudent" action="delstudentfunc.jsp" method="POST">
        <h3> Delete Student Records </h3>
        Input Student Id <input type="text" name="studentid" id="studentid"><br>
        <input type="submit" value="Delete Student" name="delstudent">
    </form>
    </body>
</html>