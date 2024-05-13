<%-- 
    Document   : viewstudent
    Created on : 06 9, 22, 11:29:02 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View student Page</title>
    </head>
    <body>
        <form name="viewstudent" action="viewstudentfunc.jsp" method="POST">
            <h3> View Student Records </h3>
            Input Student Id <input type="text" name="studentid" id="studentid"><br>
            <input type="submit" value="View Student data" name="viewstudent">
        </form>
    </body>
</html>