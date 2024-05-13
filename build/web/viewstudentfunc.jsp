<%-- 
    Document   : viewstudent
    Created on : 06 9, 22, 11:20:42 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Student Data</title>
    </head>
    <body>
        <h1>STUDENT DATA</h1>

        <jsp:useBean id="studentBean" class="mod4enr.students" scope="session" />

       <%String id = request.getParameter("studentid"); %>
           <% studentBean.studentid    = Integer.parseInt(id); %>
            <%studentBean.viewRecord(); %>

        <table style="width: 10%" border="2">
            <tr><td>Student ID: <%=studentBean.studentid%></tr></td>
            <tr><td>Student name: <%=studentBean.completename%></tr></td>
            <tr><td>Degree ID: <%=studentBean.degreeid%></tr></td>
            </table><br>
            

        click<a href="studentmaintenance.jsp"> here</a> to go back to Student Records<br>
        click <a href="index.html">here </a>to go back to main menu </a><br>
    </body>
</html>