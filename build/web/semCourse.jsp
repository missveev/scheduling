<%-- 
    Document   : semester
    Created on : Mar 27, 2019, 1:22:01 PM
    Author     : reslab
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
  
    </head>
    <body>
        <select class="form-control" name="semester" id="semester">
            <option>Select Semester</option>
            <%

                String year = request.getParameter("year");//
                Connection con;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedules?", "root", "");
                HttpSession ss = request.getSession();
                Statement st = con.createStatement();
                String deptt = (String) session.getAttribute("department");
                ResultSet rs = st.executeQuery("select distinct semester from opencourse where year=" + year + " and  department='" + deptt + "'");
                while (rs.next()) {
            %>
            <option value="<%=rs.getString("semester")%>"><%=rs.getString("semester")%></option>
            <%
                }
            %>
        </select>

    </body>
</html>

