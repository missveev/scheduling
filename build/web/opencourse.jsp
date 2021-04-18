<%-- 
    Document   : addopenCourse
    Created on : Feb 14, 2019, 4:09:56 AM
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
        <script>
            $(document).ready(function () {
                document.getElementById("year").value = localStorage.getItem("item1");
                document.getElementById("semester").value = localStorage.getItem("item2");
            });
        </script>
        <script>
            $(window).on('beforeunload', function () {
                localStorage.setItem("item1", document.getElementById("year").value);
                localStorage.setItem("item2", document.getElementById("semester").value);
            });
        </script>
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
                        <h2 class="title">Add CourseOpening</h2>
                    </div>
                    <div class="card-body"> 
                        <form  method= "POST" action="open">
                            <fieldset>
                                <%
                                    String id = (String) session.getAttribute("username");
                                    String dept = (String) session.getAttribute("department");
                                %>
                                <input id="username" name="username" type="hidden" value="<%=id%>">
                                <input id="department" name="department" type="hidden" value="<%=dept%>">
                                <div class="form-row">
                                    <div class="name" for="course_id">Course Code</div>  
                                    <div class="value">
                                        <select id="course_id" name="course_id"  placeholder="select course" class="input--style-6" required="">

                                            <%
                                                Connection con = null;
                                                ResultSet rs = null;

                                                try {

                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedules?", "root", "");
                                                    HttpSession ss = request.getSession();

                                                    PreparedStatement pst = con.prepareStatement("select * from course where department='" + dept + "'");

                                                    rs = pst.executeQuery();
                                                    while (rs.next()) {
                                                        String name = rs.getString("course_id");
                                            %>

                                            <option value="<%=name%>"><%=name%></option>
                                            <%
                                                    }
                                                } catch (Exception e) {
                                                    out.print(e);
                                                }
                                            %>
                                        </select>	
                                        </select>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="name" for="group">Group</div>  
                                    <div class="value">
                                        <input id="group" name="group" type="text" placeholder="" class="input--style-6" required="">

                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="name" for="student">Max Student</div>  
                                    <div class="value">
                                        <input id="maxStd" name="maxStd" type="text" placeholder="" class="input--style-6" required="">

                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="name" for="program">Program</div>  
                                    <div class="value">
                                        <select id="program" name="program"  placeholder="select program" class="input--style-6" required="">
                                            <option value="Undergraduate">Undergraduate</option>
                                            <option value="Postgraduate">Postgraduate</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="name" for="year">Year</div>  
                                    <div class="value">
                                        <select id="year" name="year"  placeholder="select year" class="input--style-6" required="">
                                            <option  value="2019" >2019</option>
                                            <option  value="2020" >2020</option>
                                            <option  value="2021" >2021</option>
                                            <option  value="2022" >2022</option>
                                            <option  value="2023" >2023</option>
                                            <option  value="2024" >2024</option>
                                            <option  value="2025" >2025</option>
                                            <option  value="2026" >2026</option>
                                            <option  value="2027" >2027</option>
                                            <option  value="2028" >2028</option>
                                            <option  value="2029" >2029</option>
                                            <option  value="2030" >2030</option>


                                        </select>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="name" for="semester">Semester</div>  
                                    <div class="value">
                                        <select id="semester" name="semester"  placeholder="select semester" class="input--style-6" required="">
                                            <option value="FALL">FALL</option>
                                            <option value="SPRING">SPRING</option>
                                            <option value="SUMMER">SUMMER</option>
                                        </select>                   
                                    </div>
                                </div>



                                </div>
                                <div class="footer" >
                                    <button class="btn btn--radius-2 btn--blue-2" type="submit">ADD COURSE OPENING</button>
                                    <a href=<%= "\"opencourselist.jsp?year=" + (String) request.getSession().getAttribute("year") + "&semester=" + (String) request.getSession().getAttribute("semester") + "\""%>  class="btn btn--radius-2 btn--blue-2">VIEW COURSEOPENING</a>
                                </div>
                        </form>
                    </div>
                </div>
            </div>
    </body>
</html>
