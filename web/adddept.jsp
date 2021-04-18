<%-- 
    Document   : adddept
    Created on : Feb 14, 2019, 4:10:31 AM
    Author     : Pamilerin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add department</title>

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

                <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
                    <div class="container">


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
                                <h2 class="title">ADD DEPARTMENT</h2>
                            </div>
                            <div class="card-body"> 
                                <form  method= "POST" action="department">


                                    <div class="form-row">
                                        <div class="name" for="room">Department Name</div>
                                        <div class="value">
                                            <input id="deptname" name="deptname" type="text" placeholder="" class="input--style-6" required="">

                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="name" for="room">Faculty </div>
                                        <div class="value">
                                            <input id="faculty" name="faculty" type="text" placeholder="" class="input--style-6" required="">

                                        </div>
                                    </div>

                            </div>
                            <div class="footer" >
                                <button class="btn btn--radius-2 btn--blue-2" type="submit">ADD DEPARTMENT</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
                </body>


                </html>
