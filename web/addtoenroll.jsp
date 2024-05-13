<%-- 
    Document   : addtoenroll
    Created on : 06 10, 22, 3:50:21 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select and add courses to Enrollment cart</title>
    </head>
    <body>
        <jsp:useBean id="enrollBean" class="mod4enr.enroll" scope="session" />
        <form name="enrollstudentinput" action="submitenroll.jsp" method="POST">
        <% enrollBean.Student.studentid = Integer.parseInt(request.getParameter("studentid")); %>
        <% int term = Integer.parseInt(request.getParameter("term")); %>
        <% int schoolyear = Integer.parseInt(request.getParameter("schoolyear")); %>
        <% String courseid = request.getParameter("courseid"); %>
        <table style="width: 10%" border="2">
            <tr><td>Student ID: <%=enrollBean.Student.studentid%></tr></td>
            <tr><td>Term: <%=term%></tr></td>
            <tr><td>School Year: <%=schoolyear%></tr></td>
            </table><br>
        <%enrollBean.loadCourses();%>
        Choose course to enroll: 
                <select name="courseid" id="courseid"> 
                    <% for (int i=0; i < enrollBean.CourseList.size(); i++) {%>
                    <option value="<%=enrollBean.CourseList.get(i).courseid%>"><%=enrollBean.CourseList.get(i).courseid%></option>
                    <% } %>
                </select></br>
                
                <input type="hidden" value="<%=enrollBean.Student.studentid%>" name="studentid" id="studentid"/>
                <input type="hidden" value="<%=term%>" name="term" id="term" />
                <input type="hidden" value="<%=schoolyear%>" name="schoolyear" id="schoolyear"/>
                
                <input type="submit" value="Input Student Data" name="enroll"> <br>

        click<a href="enrollcourse.jsp"> here</a> to continue view the list of courses available <br>
        click <a href="index.html">here </a>to go back to main menu </a><br>
    </body>
</html>