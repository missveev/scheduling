<%-- 
    Document   : edRoom
    Created on : Feb 22, 2019, 8:13:03 AM
    Author     : Pamilerin
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/one-page-wonder.min.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet" media="all">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body id="page-top" class="index">

        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
            <div class="container">
                <%
                    if (session != null) {
                        if (session.getAttribute("username") != null) {
                            String name = (String) session.getAttribute("username");
                            out.print("Hello, " + name);
                        } else {
                            response.sendRedirect("login.jsp");
                        }
                    }
                %>

                <a class="navbar-brand" href="home.jsp">SCHEDULING</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">


                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item">
                            <a class="nav-link" href="addcourse.jsp"><span></span> Add Course</a></li>

                        <li class="nav-item">
                            <a class="nav-link" href="addroom.jsp"><span></span> Add Room</a></li>
                        <li class="nav-item">
                            <a class="nav-link" href="opencourse.jsp"><span></span> Add CourseOpening</a></li>
                        <li class="nav-item">
                            <a class="nav-link" href="timetable.jsp"><span></span> Generate Timetable</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="manage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span></span> Manage</a>
                            <ul class="dropdown-menu" aria-labelledby="manage">

                                <li><a class="dropdown-item" href="roomlist.jsp"><span></span> View Room</a></li>

                                <li> <a class="dropdown-item" href="courselist.jsp"><span></span> View Course</a></li>

                                <li><a class="dropdown-item" href="opencourselist.jsp"><span></span> View CourseOpening</a></li>
                                <li><a class="dropdown-item" href="view.jsp"><span></span> View Timetable</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="logout"><span></span> Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="page-wrapper bg-dark p-t-100 p-b-50">
            <div class="wrapper wrapper--w900">
                <div class="card card-6">
                    <div class="card-heading">
                        <h2 class="title">EDIT ROOM</h2>
                    </div>
                    <div class="card-body">
                        <%
                            if (request.getParameter("d") != null) {
                                String course_id = request.getParameter("d");
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedules?", "root", "");
                                    PreparedStatement st = null;
                                    st = conn.prepareStatement("select * from room where room_id='" + course_id + "'");
                                    ResultSet rs = st.executeQuery();
                                    while (rs.next()) {


                        %>
                        <form method= "POST" action="updateRoom">


                            <div class="form-row">
                                <div class="name" for="room">Room Number</div>  
                                <div class="value">
                                    <input id="roomNo" name="roomNo" type="text" placeholder="" class="input--style-6" value="<%=rs.getString("room_id")%>">

                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name" for="dept">Department</div>  
                                <div class="value">
                                    <input id="dept" name="dept" type="text" placeholder="" class="input--style-6" value="<%=rs.getString("department")%>">

                                </div>
                            </div>


                            <div class="form-row">
                                <div class="name" for="faculty">Faculty</div>  
                                <div class="value">
                                    <input id="faculty" name="faculty" type="text" placeholder="" class="input--style-6" value="<%=rs.getString("faculty")%>">

                                </div>
                            </div>

                            <div class="form-row">
                                <div class="name" for="capacity">Capacity</div>  
                                <div class="value">
                                    <input id="capacity" name="capacity" type="text" placeholder="" class="input--style-6" value="<%=rs.getString("capacity")%>">

                                </div>
                            </div>


                    </div>

                    <div class="footer" >
                        <button class="btn btn--radius-2 btn--blue-2" type="submit" name="edit">UPDATE ROOM</button>
                    </div>
                    </form>
                    <%}
                                st.close();
                                conn.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>


