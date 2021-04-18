<%-- 
    Document   : courselist
    Created on : Jan 10, 2019, 10:42:47 PM
    Author     : Pamilerin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/one-page-wonder.min.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet" media="all">
        <link rel="stylesheet" href="table/style.css">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
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
                            String dept = (String) session.getAttribute("department");
                            out.print("Hello, ");
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

        <%@page import="java.sql.DriverManager;"%>
        <%@page import="java.sql.ResultSet;"%>
        <%@page import="java.sql.PreparedStatement;"%>
        <%@page import="java.sql.Connection;"%>

        <%
            String id = request.getParameter("username");
            String driverName = "com.mysql.jdbc.Driver";
            String connectionUrl = "jdbc:mysql://localhost:3306/";
            String dbName = "schedules";
            String userId = "root";
            String password = "";

            try {
                Class.forName(driverName);
            } catch (Exception e) {
                out.println("Error type: " + e);

            }

            Connection connection = null;
            PreparedStatement statement = null;
            ResultSet resultSet = null;
        %>
        <div class="page-wrapper bg-dark p-t-100 p-b-50">
            <div class="wrapper wrapper--w900">
                <div class="card card-6">

                    <div class="card-body">

                        <div class="limiter">
                            <div class="container-table100">
                                <div class="wrap-table100">
                                    <div class="table100">
                                        <table>
                                            <thead>
                                                <tr class="table100-head">
                                                    <th class="column1">Code</th>
                                                    <th class="column2">Course Name</th>
                                                    <th class="column3">Prerequisite</th>
                                                    <th class="column4">Language</th>
                                                    <th class="column5">Credit Unit</th>
                                                    <th class="column6">Action</th>

                                                </tr>
                                            </thead>
                                            <tbody>


                                                <%
                                                    try {
                                                        String name = (String) session.getAttribute("username");
                                                        String dept = (String) session.getAttribute("department");
                                                        connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);

                                                        String sql = "SELECT * FROM `course` WHERE department='" + dept + "'";

                                                        statement = connection.prepareStatement(sql);

                                                        resultSet = statement.executeQuery();
                                                        while (resultSet.next()) {
                                                %>

                                                <tr>

                                                    <td class="column1"><%=resultSet.getString("course_id")%></td>
                                                    <td class="column2"><%=resultSet.getString("course_title")%></td>
                                                    <td class="column3"><%=resultSet.getString("course_prerequisite")%></td>
                                                    <td class="column4"><%=resultSet.getString("course_language")%></td>
                                                    <td class="column5"><%=resultSet.getString("course_credit_unit")%></td>
                                                    <td class="column6"><a href='edCourse.jsp?d=<%=resultSet.getString("course_id")%>'>EDIT</A> &nbsp; <a href='delCourse?d=<%=resultSet.getString("course_id")%>'>DELETE</A></td>
                                                </tr>
                                                <%
                                                        }

                                                    } catch (Exception e) {
                                                        out.println("Error type: " + e);

                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--===============================================================================================-->	
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>

