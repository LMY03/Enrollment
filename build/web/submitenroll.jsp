<%-- 
    Document   : submitenroll
    Created on : 06 11, 22, 3:50:08 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courses to Enroll Cart</title>
    </head>
    <body>
        <jsp:useBean id="enrollBean" class="mod4enr.enroll" scope="session" />
        <form name="enrollstudentinput" action="addtoenroll.jsp" method="POST">
        <% enrollBean.Student.studentid = Integer.parseInt(request.getParameter("studentid")); %>
        <% int term = Integer.parseInt(request.getParameter("term")); %>
        <% int schoolyear = Integer.parseInt(request.getParameter("schoolyear")); %>
        <% String courseid = request.getParameter("courseid"); %>
        <% enrollBean.addtoenroll(term, schoolyear, courseid);         %>
        Enrollment added to cart<br>
        
        <%if (!enrollBean.EnrollmentList.isEmpty()) {%>
                     <table style="width: 10%" border="2">
                         <tr><td>Enrollment Cart</td></tr>
                    <%for (int i = 0; i < enrollBean.EnrollmentList.size(); i++) {%>
                <tr><td><%=enrollBean.EnrollmentList.get(i).courseid%></tr></td>
            <%}%>
            </table><br>
            <%}%>
        
             <input type="hidden" value="<%=enrollBean.Student.studentid%>" name="studentid" id="studentid"/>
                <input type="hidden" value="<%=term%>" name="term" id="term" />
                <input type="hidden" value="<%=schoolyear%>" name="schoolyear" id="schoolyear"/>
            
                
                <input type="submit" value="Continue to Enroll" name="enroll"> <br>
                </form>
                
        <a href="confirmenroll.jsp">Confirm Enroll</a>
        <a href="index.html">Go back to Main Menu</a>
    </body>
    
    <head>
        
</html>
