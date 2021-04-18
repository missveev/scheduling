<%-- 
    Document   : home
    Created on : Jan 10, 2019, 10:44:03 PM
    Author     : Pamilerin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Timetable index</title>
        <!-- Bootstrap core CSS -->
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

                    </ul>
                </div>
            </div>
        </nav>


        <!-- Header -->
        <div class="page-wrapper bg-dark p-t-100 p-b-50">
            <div class="wrapper wrapper--w900">
                <div class="contentArea">
                    <h4 class="subheading"><font color="GOLD">Introduction &nbsp </font></h4>

                    <p class="text-muted"><font color="white">
                        This is a free site to generate
                        complete college schedule for which would be a tedious and
                        error prone task to do by hand (on paper). We provide a very
                        user friendly interface to work with and you will get your
                        time table generated in seconds.</font></p>
                </div>


                <h4 class="subheading"><font color="GOLD">How to Proceed &nbsp </font></h4>

                <p class="text-muted"><font color="white">You need to be logged in to make use
                    of this free software. Once logged in, you will need to
                    provide important details like batch names,subjects, faculties
                    in college etc and you are ready to go.</font></p>


                <h4 class="subheading"><font color="GOLD">Quality of Timetable &nbsp</font> </h4>

                <p class="text-muted"><font color="white">The software makes sure that the
                    generated time table is feasible at the least (there is no
                    clash) ,students get required hours each week and teachers are
                    given equal load. The user will be given more options to
                    refine timetable using some soft constraints(like setting
                    preference for a teacher,guest faculty, lab consideration etc)
                    in a later version.</font></p>


                <a href="login.jsp" class="btn btn--radius-2 btn--blue-2">
                    <div class="timeline-image">

                        <h4>LOGIN</h4>

                    </div>
                </a>
            </div>
        </div>
    </body>
</html>





