<%-- 
    Document   : confirmenroll
    Created on : 06 16, 22, 4:33:15 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Enroll</title>
    </head>
    <body>
        <jsp:useBean id="enrollBean" class="mod4enr.enroll" scope="session" />
        <%enrollBean.confirmEnrollment();%>
    </body>
</html>
