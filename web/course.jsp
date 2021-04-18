<%-- 
    Document   : course
    Created on : Mar 27, 2019, 1:16:51 PM
    Author     : reslab
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <select class="form-control" name="course" id="course">
            <option>Select Course</option>
            <%
                String semester = request.getParameter("semester");//
                //String year = request.getParameter("year");
                Connection con;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedules?", "root", "");
                HttpSession ss = request.getSession();
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select distinct course from timetable where semester=" + semester + "");
                while (rs.next()) {
            %>
            <option value="<%=rs.getString("course")%>"><%=rs.getString("course")%></option>
            <%
                }
                 rs.close();
                   
                    return;
            %>
        </select>

    </body>
</html>
