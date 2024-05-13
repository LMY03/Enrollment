<%-- 
    Document   : submitdrop.jsp
    Created on : 06 11, 22, 11:41:26 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courses to Drop Cart</title>
    </head>
    <body>
        <jsp:useBean id="dropBean" class="mod4enr.drop" scope="session" />
        <% int studentid = Integer.parseInt(request.getParameter("studentid")); %>
        <% String courseid = request.getParameter("courseid"); %>
        <% dropBean.addtodrop(courseid);                %>
        Course was added to cart<br>
        
        <%if (!dropBean.DropList.isEmpty()) {%>
                     <table style="width: 10%" border="2">
                         <tr><td>Enrollment Cart</td></tr>
                    <%for (int i = 0; i < dropBean.DropList.size(); i++) {%>
                <tr><td><%=dropBean.DropList.get(i).courseid%></tr></td>
            <%}%>
            </table><br>
            <%}%>
            
            <form name="sales_select" action="addtodrop.jsp" method="POST">
                <input type="hidden" value="<%=dropBean.Student.studentid%>" name="studentid" id="studentid"/>
                
            <input type="submit" value="addtodrop" name="addtodrop">
                </form>
        <a href="confirmdrop.jsp">Confirm Drop</a>
        <a href="index.html">Back to Main Menu</a>
    </body>
</html>