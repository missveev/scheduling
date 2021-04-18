<%-- 
    Document   : first
    Created on : Feb 24, 2019, 11:00:09 PM
    Author     : Pamilerin
--%>

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
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <%
                    if (session != null) {
                        if (session.getAttribute("username") != null) {
                            String name = (String) session.getAttribute("username");
                            //out.print("Hello, " + name + " welcome");
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
                <div class="contentArea">

                    <section class="bg-light" id="portfolio">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 text-center">
                                    <h2 class="section-heading text-uppercase">Features</h2>

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-sm-6 portfolio-item">
                                    <a class="portfolio-link"  href="addcourse.jsp">
                                        <div class="portfolio-hover">
                                            <div class="portfolio-hover-content">
                                                <i class="fas fa-plus fa-3x"></i>
                                            </div>
                                        </div>
                                        <img class="img-fluid" src="img/portfolio/course.png" alt="">
                                    </a>

                                    <div class="portfolio-caption">
                                        <h4 >Add Course</h4>

                                        <p class="text-muted">Add new Courses with Max number of hours per week</p>
                                    </div>
                                </div>

                                <div class="col-md-4 col-sm-6 portfolio-item">
                                    <a class="portfolio-link"  href="addroom.jsp">
                                        <div class="portfolio-hover">
                                            <div class="portfolio-hover-content">
                                                <i class="fas fa-plus fa-3x"></i>
                                            </div>
                                        </div>
                                        <img class="img-fluid" src="img/portfolio/classroom.png" alt="">
                                    </a>
                                    <div class="portfolio-caption">
                                        <h4 >Add Room</h4>
                                        <p class="text-muted">Add new room keeping in mind the capacity of the classroom</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 portfolio-item">
                                    <a class="portfolio-link"  href="opencourse.jsp">
                                        <div class="portfolio-hover">
                                            <div class="portfolio-hover-content">
                                                <i class="fas fa-plus fa-3x"></i>
                                            </div>
                                        </div>
                                        <img class="img-fluid" src="img/portfolio/opencourse.png" alt="">
                                    </a>
                                    <div class="portfolio-caption">
                                        <h4 >Add Course Opening</h4>
                                        <p class="text-muted">Add new Courses that will be opening for a particular semester and year</p>
                                    </div>
                                </div>

                                <div class="col-md-4 col-sm-6 portfolio-item">
                                    <a  href="adddept.jsp">
                                        <div class="portfolio-hover">
                                            <div class="portfolio-hover-content">
                                                <i class="fas fa-plus fa-3x"></i>
                                            </div>
                                        </div>
                                        <img class="img-fluid" src="img/portfolio/dept.png" alt="">
                                    </a>
                                    <div class="portfolio-caption">
                                        <h4 >Add Department</h4>
                                        <p class="text-muted">Add new department to for every faculty</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 portfolio-item">
                                    <a class="portfolio-link"  href="timetable.jsp">
                                        <div class="portfolio-hover">
                                            <div class="portfolio-hover-content">
                                                <i class="fas fa-plus fa-3x"></i>
                                            </div>
                                        </div>
                                        <img class="img-fluid" src="img/portfolio/timetable.png" alt="">
                                    </a>
                                    <div class="portfolio-caption">

                                        <h4 >Generate Timetable</h4>
                                        <p class="text-muted">Generate timetable based on inputted data</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 portfolio-item">
                                    <a class="portfolio-link"  href="show.jsp">
                                        <div class="portfolio-hover">
                                            <div class="portfolio-hover-content">
                                                <i class="fas fa-plus fa-3x"></i>
                                            </div>
                                        </div>
                                        <img class="img-fluid" src="img/portfolio/view.png" alt="">
                                    </a>
                                    <div class="portfolio-caption">

                                        <h4 >View Timetable</h4>
                                        <p class="text-muted">Manage your data by viewing generated timetable </p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </section>
