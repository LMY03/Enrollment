<%-- 
    Document   : delcoursesfunc
    Created on : 06 10, 22, 9:10:08 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course DELETED</title>
    </head>
    <h3> Course has been deleted to the database</h3>
  
    <body>
        <jsp:useBean id="courseBean" class="mod4enr.courses" scope="session" />
        <% String courseid = request.getParameter("courseid"); %>
         <% courseBean.courseid  = courseid; %>
           <% courseBean.delRecord(); %>
        click<a href="studentmaintenance.jsp"> here</a> to go back to Student Maintenance<br>
        click <a href="index.html">here </a>to go back to main menu <br>
    </body>
</html>
