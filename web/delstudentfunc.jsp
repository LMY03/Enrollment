<%-- 
    Document   : delstudentfunc
    Created on : 06 10, 22, 6:40:41 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Deleted</title>
    </head>
    <h3> Student has been deleted to the database</h3>
  
    <body>
        <jsp:useBean id="studentBean" class="mod4enr.students" scope="session" />
        <% String studentid = request.getParameter("studentid"); %>
         <% String completename = request.getParameter("completename"); %>
         <% String degreeid = request.getParameter("degreeid");  %>  
         <% studentBean.studentid  = Integer.parseInt(studentid); %>
          <% studentBean.completename = completename; %>
          <% studentBean.degreeid     = degreeid; %>
           <% studentBean.delRecord(); %>
         click<a href="studentmaintenance.jsp"> here</a> to go back to Student Maintenance<br>
        click <a href="index.html">here </a>to go back to main menu <br>
    </body>
</html>