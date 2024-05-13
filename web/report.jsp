<%-- 
    Document   : report
    Created on : 06 15, 22, 3:48:31 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Generate Student Report</title>
    </head>
    <body>
        <form name="viewreport" action="generate_report.jsp" method="POST">
            <h3> Generate Student Report </h3>
            Input Term <input type="text" name="term" id="term"><br>
            Input School Year <input type="text" name="sy" id="sy"><br>
            <input type="submit" value="Generate Report" name="viewReport">
        </form>
    </body>
</html>