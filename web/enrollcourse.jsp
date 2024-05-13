<%-- 
    Document   : enrollcourse
    Created on : 06 9, 22, 2:34:13 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h2>Enrollment Cart</h2>

        <jsp:useBean id="enrollmentBean" class="mod4enr.enrollment" scope="session" />
        <jsp:useBean id="enrollBean" class="mod4enr.enroll" scope="session" />
        <%=enrollBean.EnrollmentList.size()%>
        
        <form name="course_select" action="addtoenroll.jsp" method="POST">
                <select name="courseid" id="courseid"> 
                    <% for (int i=0; i < enrollBean.EnrollmentList.size(); i++) {
                      coursedegree deg = new coursedegree();
                        deg = enrollBean.CourseList.get(i);  %>
                        <option value="<%=deg.courseid%> <%=deg.degree%>"></option>
                    <% } %>

    </body>
</html>
