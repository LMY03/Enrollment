<%-- 
    Document   : save_courses
    Created on : 06 14, 22, 2:07:46 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% String studentid = request.getParameter("studentid"); %>
        <% String term = request.getParameter("term"); %>
        <% String schoolyear = request.getParameter("schoolyear"); %>
        
        Student ID: <%=request.getParameter("studentid")%>
    </body>
</html>
