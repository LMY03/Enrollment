<%-- 
    Document   : confirmdrop
    Created on : 06 16, 22, 2:29:35 PM
    Author     : ccslearnerccslearner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmed Drop</title>
    </head>
    <body>
        <jsp:useBean id="dropBean" class="mod4enr.drop" scope="session" />
        <%dropBean.confirmDrop();%>
    </body>
</html>
