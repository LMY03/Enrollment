<%-- 
    Document   : viewcoursesfunc
    Created on : 06 9, 22, 11:53:53 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Course Data</title>
    </head>
    <body>
        <h1>COURSE DATA</h1>

        <jsp:useBean id="courseBean" class="mod4enr.courses" scope="session" />

       <%String courseid = request.getParameter("courseid"); %>
           <% courseBean.courseid= courseid; %>
            <%courseBean.viewRecord(); %>

        <table style="width: 20%" border="2">
            <tr><td>Course ID: <%=courseBean.courseid%></tr></td>
            <tr><td>Course name:  <%=courseBean.coursename%></tr></td>
            <tr><td>Department: <%=courseBean.department%></tr></td>
            </table><br>
            

        click<a href="coursemaintenance.jsp"> here</a> to go back to courses Records<br>
        click <a href="index.html">here </a>to go back to main menu </a><br>
    </body>
</html>