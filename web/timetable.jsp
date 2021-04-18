<%-- 
    Document   : timetable
    Created on : Jan 10, 2019, 10:49:12 PM
    Author     : Pamilerin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="connect.dbconnect"%>

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

                    <div class="card-body">


                        <form  method= "post" action="call" >
                            <fieldset>
                                <%
                                    String id = (String) session.getAttribute("username");
                                    String dept = (String) session.getAttribute("department");
                                %>
                                <input id="username" name="username" type="hidden" value="<%=id%>">
                                <input id="department" name="department" type="hidden" value="<%=dept%>">
                                <div class="form-row">
                                    <div class="name" for="semester">Semester</div>  
                                    <div class="value">
                                        <select id="semester" name="semester" class="input--style-6">
                                            <option value="" selected="selected">Select Semester</option>
                                            <option value="FALL" name="FALL">FALL</option>
                                            <option value="SPRING" name="SPRING">SPRING</option>
                                            <option value="SUMMER" name="SUMMER">SUMMER</option>
                                        </select>
                                    </div>

                                </div>

                                <div class="form-row">
                                    <div class="name" for="year">Year</div>  
                                    <div class="value">
                                        <select id="year" name="year" type="text" placeholder="" class="input--style-6" required="">
                                            <option value="" selected="selected">Select Year</option>
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
                                </div>
                             
                                <div class="footer" >
                                    <button class="btn btn--radius-2 btn--blue-2" type="submit">Generate</button>
                                </div>
                            </fieldset>
                        </form>
                        <br/>


