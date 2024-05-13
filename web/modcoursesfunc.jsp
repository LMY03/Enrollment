<%-- 
    Document   : modcoursesfunc
    Created on : 06 10, 22, 9:15:10 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Modified</title>
    </head>
    <h3> Course has been modified successfully</h3>
  
    <body>
        <jsp:useBean id="courseBean" class="mod4enr.courses" scope="session" />
        <% String courseid = request.getParameter("courseid"); %>
         <% String coursename = request.getParameter("coursename"); %>
         <% String department = request.getParameter("department");  %>  
         <% courseBean.courseid  = courseid; %>
          <% courseBean.coursename = coursename; %>
          <% courseBean.department  = department; %>
           <% courseBean.modRecord(); %>
        click<a href="studentmaintenance.jsp"> here</a> to go back to Student Maintenance<br>
        click <a href="index.html">here </a>to go back to main menu <br>
    </body>
</html>
