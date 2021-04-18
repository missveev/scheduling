<%-- 
    Document   : time
    Created on : Jan 10, 2019, 11:55:20 PM
    Author     : Pamilerin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%@ page import="timetable1.*"%>
                            <%
                               
                                String year=request.getParameter("year");
                                String semester= request.getParameter("semester");
                                timetable tt= new timetable(year,semester);
                                tt.call();
			%>
    </body>
</html>
