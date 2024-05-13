<%-- 
    Document   : modstudent
    Created on : 06 10, 22, 3:49:21 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify student Page</title>
    </head>
    <body>
        <form name="addstudent" action="modstudentfunc.jsp" method="POST">
        <h3> Modify Student Records </h3>
        Input Student Id <input type="text" name="studentid" id="studentid"><br>
        Modify Complete name <input type="text" name="completename" id="completename"><br>
        Modify Degree Id <input text="text" name="degreeid" id="degreeid"><br>
        <input type="submit" value="Modify Student Data" name="modstudent">
    </form>
    </body>
</html>
