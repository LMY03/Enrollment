<%-- 
    Document   : enroll
    Created on : 06 9, 22, 3:36:33 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ENROLLMENT Page</title>
    </head>
    <h1> Enrollment of Student </h1>

    <body>
        <jsp:useBean id="enrollBean" class="mod4enr.enroll" scope="session" />
        <form name="enrollstudentinput" action="addtoenroll.jsp" method="POST">
        <h3> Student detail for enroll </h3>
        Input Student Id <input type="text" name="studentid" id="studentid"><br>
        Input current term <input type="text" name="term" id="term"><br>
        Input school year<input type="text" name="schoolyear" id="schoolyear"><br>
        
        
            <input type="submit" value="Input Student Data" name="enroll">  
        </form>
    </body>
</html>
