<%-- 
    Document   : addcoursesfunc
    Created on : 06 9, 22, 8:53:00 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course ADDED</title>
    </head>
    <h3> Course has been added to the database</h3>
  
    <body>
        <jsp:useBean id="courseBean" class="mod4enr.courses" scope="session" />
        <% String courseid = request.getParameter("courseid"); %>
         <% String coursename = request.getParameter("coursename"); %>
         <% String department = request.getParameter("department");  %>  
         <% courseBean.courseid  = courseid; %>
          <% courseBean.coursename = coursename; %>
          <% courseBean.department  = department; %>
           <% courseBean.addRecord(); %>
        click<a href="coursemaintenance.jsp"> here</a> to go back to Course Maintenance<br>
        click <a href="index.html">here </a>to go back to main menu <br>
    </body>
</html>
