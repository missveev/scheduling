<%-- 
    Document   : addcourse
    Created on : Jan 10, 2019, 10:38:54 PM
    Author     : Pamilerin
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Course</title>
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
                            String dept = (String) session.getAttribute("department");
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
                        <h2 class="title">ADD COURSES</h2>
                    </div>
                    <div class="card-body">
                        <form method= "POST" action="course">
                            <fieldset>
                                <%
                                    String id = (String) session.getAttribute("username");
                                    String deptt = (String) session.getAttribute("department");
                                %>
                                <input id="username" name="username" type="hidden" value="<%=id%>">
                                <div class="form-row">
                                    <div class="name" for="subcode">Course Code</div>  
                                    <div class="value">
                                        <input id="subcode" name="subcode"   class="input--style-6" required="">

                                    </div>
                                </div>

                                <!-- Text input-->
                                <div class="form-row">
                                    <div class="name" for="subdescription">Course Name</div>  
                                    <div class="value">
                                        <input id="subdescription" name="subdescription" type="text" placeholder="" class="input--style-6" required="">

                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="name" for="subdescription">Prerequisite</div>  
                                    <div class="value">
                                        <input id="prerequisite" name="prerequisite" type="text" placeholder="" class="input--style-6" required="">

                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="name" for="password">Department</div>
                                    <div class="value">
                                        <select name="department" name="department" value="select your department" class="input--style-6" >
                                            <%

                                                try {
                                                    Connection con = null;
                                                    ResultSet rs = null;
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedules?", "root", "");
                                                    HttpSession ss = request.getSession();

                                                    PreparedStatement pst = con.prepareStatement("select * from department where name='" + deptt + "'");

                                                    rs = pst.executeQuery();
                                                    while (rs.next()) {
                                                        String name = rs.getString("name");
                                            %>

                                            <option value="<%=name%>"><%=name%></option>
                                            <%
                                                    }
                                                } catch (Exception e) {
                                                    out.print(e);
                                                }
                                            %>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="name" for="subdescription">Language</div>  
                                    <div class="value">
                                        <select id="language" name="language"  value="select your language" class="input--style-6" required="">
                                            <option value="English">English</option>
                                            <option value="Turkish">Turkish</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="name" for="subdescription">Lecture Hour Per Week</div>  
                                    <div class="value">
                                        <input id="lechr" name="lechr" type="text" placeholder="" class="input--style-6" required="">

                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="name" for="subdescription">Lab Hour Per Week</div>  
                                    <div class="value">
                                        <input id="labhr" name="labhr" type="text" placeholder="" class="input--style-6" required="">

                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="name" for="subdescription">Credit Unit</div>  
                                    <div class="value">
                                        <input id="cUnit" name="cUnit" type="cUnit" placeholder="" class="input--style-6" required="">

                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="name" for="subdescription">Ects</div>  
                                    <div class="value">
                                        <input id="ects" name="ects" type="text" placeholder="" class="input--style-6" required="">

                                    </div>
                                </div>
                                </div>

                                <div class="footer" >
                                    <button class="btn btn--radius-2 btn--blue-2" type="submit">ADD COURSE</button>
                                </div>
                        </form>

                    </div>
                </div>
            </div>
    </body>
</html>
