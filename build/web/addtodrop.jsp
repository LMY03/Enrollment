<%-- 
    Document   : addtodrop
    Created on : 06 9, 22, 9:45:56 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add order details to Cart</title>
    </head>
    <body>
        <jsp:useBean id="dropBean" class="mod4enr.drop" scope="session" />
        <% dropBean.Student.studentid = Integer.parseInt(request.getParameter("studentid")); %>
        <table style="width: 10%" border="2">
            <tr><td>Student ID: <%=dropBean.Student.studentid%></tr></td>
            </table><br>
            <% dropBean.loadEnrollment(); %>
        <% dropBean.EnrollmentList.size();%>
            <% for (int i = 0; i < dropBean.EnrollmentList.size(); i++) { %>
            <%=dropBean.EnrollmentList.get(i).courseid%>
            <% }                                                          %>
        <form name="sales_select" action="submitdrop.jsp" method="POST">
            Select Course <select name="courseid" id="course_id">
                <% for (int i = 0; i < dropBean.EnrollmentList.size(); i++) { %>
                <option value="<%=dropBean.EnrollmentList.get(i).courseid%>"><%=dropBean.EnrollmentList.get(i).courseid%></option>
                <% }                                                          %>
                </select><br>
                
                <input type="hidden" value="<%=dropBean.Student.studentid%>" name="studentid" id="studentid"/>
                
            <input type="submit" value="Add to Drop" name="Add To Drop">
        </form>
    </body>
</html>
