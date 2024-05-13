<%-- 
    Document   : generate_reports
    Created on : 06 13, 22, 8:13:40 PM
    Author     : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.util.*, mod4enr.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Generate Report</title>
    </head>
    <body>
        <h1>Generate Report</h1>

        <jsp:useBean id="reportBean" class="mod4enr.report01" scope="session" />

       <%String term = request.getParameter("term"); %>
       <%String year = request.getParameter("sy"); %>
       <% reportBean.repterm = Integer.parseInt(term);%>
       <% reportBean.repyear = Integer.parseInt(year);%>
            <%reportBean.generate(); %>

            <table style="width: 10%"border="2">
                <tr>
                    <td>Course</td>
                    <td>No. of Students</td>
                </tr>
                <% for (int i = 0; i < reportBean.repcourse.size(); i++) { %>
                <tr>
                    <td><%=reportBean.repcourse.get(i) %></td>
                    <td><%=reportBean.repstudents.get(i) %></td>
                </tr>
                <% }                                                       %>
            </table>
        click <a href="index.html">here </a>to go back to main menu </a><br>
    </body>
</html>
