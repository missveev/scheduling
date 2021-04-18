<%-- 
    Document   : view
    Created on : Feb 25, 2019, 7:13:54 AM
    Author     : Pamilerin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = request.getParameter("username");
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
 <script>
            $(document).ready(function(){
                document.getElementById("year").value = localStorage.getItem("item1");
                document.getElementById("semester").value = localStorage.getItem("item2");
                document.getElementById("course").value = localStorage.getItem("item3");
            });
        </script>
        <script>
            $(window).on('beforeunload', function() {
                localStorage.setItem("item1",document.getElementById("year").value);
                localStorage.setItem("item2",document.getElementById("semester").value);
                localStorage.setItem("item3",document.getElementById("course").value);
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

                    <div class="card-body">


                        <form action="" method="get">
                            <div class="form-row">
                                <div class="name" for="year">Year</div>  
                                <div class="value">
                                    <select class="form-control" id="year" name="year">
                                        <option disabled="" value="" selected="">Select Year</option>
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

                            <div class="form-row" >
                                     <div class="name" for="semester">Semester</div>  
                                    <div class="value">
                                            
                                        <SELECT class="form-control" id="semester" name="semester">
                                            <option disabled="" value="" selected="">Select Semester</option>
                                            
                                            <option  value="FALL" >FALL</option>
                                            <option  value="SPRING" >SPRING</option>
                                            <option  value="SUMMER" >SUMMER</option>

                                        </select>
                                </div>
                            </div>
                            <div class="form-row">
                                    <div class="name" for="course" multiple="multiple">Course</div>  
                                    <div class="value" >
                                        <select name="course" class="form-control" id="course" >
                                            <option>Select Course</option>
                                              <%
                                                Connection con;
                                                Class.forName("com.mysql.jdbc.Driver");
                                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedules?", "root", "");
                                                HttpSession ss = request.getSession();
                                                Statement st = con.createStatement();
                                                String deptt = (String) session.getAttribute("department");
                                                ResultSet rs = st.executeQuery("select distinct course FROM `timetable` WHERE department='" + deptt + "' ");
                                                while (rs.next()) {
                                            %>
                                            <option value="<%=rs.getString("course")%>"><%=rs.getString("course")%></option>
                                            <%
                                                }
                                            %>
                                        </select>
                                    </div>

                                </div>
                            <div class="footer" >
                                <button type="submit" class="btn btn--radius-2 btn--blue-2" type="submit">Search</button>
                            </div>
                        </form>

                        <div class="container-table100">
                            <div class="wrap-table100">
                                <div class="table-wrapper-scroll-y">
                                    <table class="table table-bordered table-striped">
                                        <thead>

                                            <tr class="table100-head">
                                                <th class="column1">Course Code</th>
                                                <th class="column2">Period</th>
                                                <th class="column3">Group</th>
                                                <th class="column4">Room</th>
                                                <th class="column5">Day</th>


                                            </tr>
                                        </thead>
                                        <tbody>


                                            <%
                                                try {
                                                    String name = (String) session.getAttribute("username");
                                                    String depta = (String) session.getAttribute("department");
                                                    

                                                    connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                                                    String year = request.getParameter("year");
                                                    String semester = request.getParameter("semester");
                                                    String course = request.getParameter("course");
                                                    String error = "me";
                                                    String sql;
                                                    if ((year != null) && (semester != null)) {
                                                        sql = "SELECT distinct course, period, room, day, groupNo FROM `timetable` WHERE department='" + depta + "' and year='" + year + "' and semester='" + semester + "' and course='" + course+ "'";

                                                    } else {
                                                        sql = "SELECT * FROM `timetable` WHERE year=" + error + "";
                                                    }
                                                    statement = connection.prepareStatement(sql);

                                                    resultSet = statement.executeQuery();
                                                    while (resultSet.next()) {
                                            %>

                                            <tr>

                                                <td class="column1"><%=resultSet.getString("course")%></td>
                                                <td class="column2"><%=resultSet.getString("period")%></td>
                                                <td class="column3"><%=resultSet.getString("groupNo")%></td>
                                                <td class="column3"><%=resultSet.getString("room")%></td>
                                                <td class="column4"><%=resultSet.getString("day")%></td>

                                            </tr>

                                            <%
                                                    }

                                                } catch (Exception e) {
                                                    out.println("No records found");

                                                }
                                            %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </DIV>
                    </div>

                </div>
                <div class="footer" >
                    <button type="submit" class="btn btn--radius-2 btn--blue-2" onClick="window.print()"> PRINT</button>

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
