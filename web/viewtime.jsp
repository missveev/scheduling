<%-- 
    Document   : viewResult
    Created on : Feb 25, 2019, 9:50:14 PM
    Author     : Pamilerin
--%>

<%@page import="java.sql.DriverManager"%>
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
     <script type="text/javascript" src="vendor/bootstrap/js/jspdf.debug.js"></script>
     <script type="text/javascript" src="vendor/bootstrap/js/jspdf.min.js"></script> 
     <script type="text/javascript" src="vendor/bootstrap/js/html2canvas.min.js"></script>
       <script type="text/javascript" src="vendor/bootstrap/js/html2canvas.js"></script>
  

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
         <%@page import="java.sql.DriverManager;"%>
            <%@page import="java.sql.ResultSet;"%>
            <%@page import="java.sql.PreparedStatement;"%>
            <%@page import="java.sql.Connection;"%>

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
 
       <div class="page-wrapper bg-dark p-t-100 p-b-50">
                <div class="wrapper wrapper--w900">
                    <div class="card card-6">
                        
                        <div class="card-body">
                                <form  method= "post" action="#" >
				<fieldset>
             <% 
                                  String idd = (String) session.getAttribute("username");
				 String dept = (String) session.getAttribute("department");
                                 String year = (String) request.getSession().getAttribute("year");
                                 String semesterr = (String) request.getSession().getAttribute("semester");
                                  %>
				<input id="username" name="username" type="hidden" value="<%=idd%>">
				<input id="department" name="department" type="hidden" value="<%=dept%>">
                                 <div class="form-row">
			  <div class="name" for="semester" multiple="multiple">Semester</div>  
				  <div class="value">
                                      <input id="semester" name="semester" type="text" class="input--style-6" value="<%=semesterr%>" readonly>
				  
				    </div>
				 
				</div>
				
                                  <div class="form-row">
			  <div class="name" for="year">Year</div>  
				  <div class="value">
				  <input id="year" name="year" type="text" placeholder="" class="input--style-6" value="<%=year%>" readonly>
					
				  </div>
				</div>
                                  
                               </fieldset>
          
      </form>         
                                 <br/><br/>
                            
            
                                 <div class="limiter">
                                <div class="container-table100">
                                    <div class="wrap-table100">
                                        <div class="table100">
                                            <table>
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
							    String deptt=(String ) session.getAttribute("department");
                                                            String yearr = (String) request.getSession().getAttribute("year");
                                                            String semester = (String) request.getSession().getAttribute("semester");
                                                            connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);

                                                           String sql = "SELECT * FROM `timetable` WHERE user='"+name+"' and department='"+deptt+"' and year='"+yearr+"' and semester='"+semester+"'";
											
                                            statement = connection.prepareStatement(sql);

                                            resultSet = statement.executeQuery();
                                            while(resultSet.next()) {
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
                                                            out.println("Error type: " + e);

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