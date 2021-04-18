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
        <script>
    $(document).ready(function () {
        $("#semeter").on("change", function () {
            var semester = $("#semester").val();//id of country select box of index.jsp page;
            $("#error").html("");
            $.ajax({
                url: "course.jsp", //your jsp page name

                method: "POST", //HTTP method.
                data: {semester: semester}, //sending request to state.jsp page.
                success: function (data)
                {
                    $("#course").html(data);//output or response will display in state select box.
                }
            });
        });
    });
</script>
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
                 String dept = (String) session.getAttribute("department");
                ResultSet rs = st.executeQuery("select distinct semester from timetable where year=" + year + " ");
                while (rs.next()) {
            %>
            <option value="<%=rs.getString("semester")%>"><%=rs.getString("semester")%></option>
            <%
                }
            %>
        </select>

    </body>
</html>

