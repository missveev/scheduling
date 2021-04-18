/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import net.sf.flora2.API.FloraObject;
import net.sf.flora2.API.FloraSession;

/**
 *
 * @author Pamilerin
 */
public class time extends HttpServlet {

    private PreparedStatement pstm;
    private ResultSet rs;
    private Connection conn = connect.DBConnect();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            out.println("<html>");
            out.println("<head>");
            out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
            out.println("<title>JSP Page</title>");
            out.println("<link href='https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900' rel='stylesheet'>");
            out.println("<link href='https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i' rel='stylesheet'>");

            out.println("<link href='css/one-page-wonder.min.css' rel='stylesheet'>");
            out.println("<link href='css/main.css' rel='stylesheet' media='all'>");
            out.println("<link rel='stylesheet' href='table/style.css'>");

            out.println("<link rel='icon' type='image/png' href='images/icons/favicon.ico'/>");

            out.println("<link rel='stylesheet' type='text/css' href='vendor/bootstrap/css/bootstrap.min.css'>");

            out.println(" <link rel='stylesheet' type='text/css' href='fonts/font-awesome-4.7.0/css/font-awesome.min.css'>");

            out.println("<link rel='stylesheet' type='text/css' href='vendor/animate/animate.css'>");

            out.println("<link rel='stylesheet' type='text/css' href='vendor/select2/select2.min.css'>");

            out.println("<link rel='stylesheet' type='text/css' href='vendor/perfect-scrollbar/perfect-scrollbar.css'>");

            out.println("<link rel='stylesheet' type='text/css' href='css/util.css'>");
            out.println("<link rel='stylesheet' type='text/css' href='css/main.css'>");

            out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js'></script>");

            out.println("<script src='vendor/bootstrap/js/bootstrap.min.js'></script>");

            out.println("</head>");
            out.println("<body id='page-top' class='index'>");
            out.println(" <nav class='navbar navbar-expand-lg navbar-dark navbar-custom fixed-top'>");
            out.println("  <div class='container'>");

            out.println(" <a class='navbar-brand' href='home.jsp'>SCHEDULING</a>");
            out.println("<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarResponsive' aria-controls='navbarResponsive' aria-expanded='false' aria-label='Toggle navigation'>");
            out.println("<span class='navbar-toggler-icon'></span>");
            out.println(" </button>");
            out.println("<div class='collapse navbar-collapse' id='navbarResponsive'>");

            out.println(" <ul class='navbar-nav ml-auto'>");

            out.println("<li class='nav-item'>");
            out.println("<a class='nav-link' href='addcourse.jsp'><span></span> Add Course</a></li>");

            out.println("<li class='nav-item'>");
            out.println("<a class='nav-link' href='addroom.jsp'><span></span> Add Room</a></li>");
            out.println("<li class='nav-item'>");
            out.println("<a class='nav-link' href='opencourse.jsp'><span></span> Add CourseOpening</a></li>");
            out.println("  <li class='nav-item'>");
            out.println("<a class='nav-link' href='timetable.jsp'><span></span> Generate TimeTable</a></li>");
            out.println("<li class='nav-item dropdown'>");
            out.println("    <a class='nav-link dropdown-toggle' href='#' id='manage' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'><span></span> Manage</a>");
            out.println("<ul class='dropdown-menu' aria-labelledby='manage'>");

            out.println("<li><a class='dropdown-item' href='roomlist.jsp'><span></span> View Room</a></li>");

            out.println("<li> <a class='dropdown-item' href='courselist.jsp'><span></span> View Course</a></li>");

            out.println(" <li><a class='dropdown-item' href='opencourselist.jsp'><span></span> View Courseopening</a></li>");
            out.println("<li><a class='dropdown-item' href='view.jsp'><span></span> View Timetable</a></li>");
            out.println(" </ul>");
            out.println("</li>");
            out.println("<li class='nav-item'>");
            out.println(" <a class='nav-link' href='logout'><span></span> Logout</a></li>");
            out.println("</ul>");
            out.println("</div>");
            out.println(" </div>");
            out.println("</nav>");
            out.println("<div class='page-wrapper bg-dark p-t-100 p-b-50'>");
            out.println("<div class='wrapper wrapper--w900'>");
            out.println("<div class='card card-6'>");

            out.println("<div class='card-body'>");

            out.println("<div class='limiter'>");
            out.println("<div class='table-00'>");
            out.println("<table>");
            out.println("<thead>");
            out.println("  <tr class='table100-head'>");
            out.println("   <th class=column1>Course Code</th>");
            out.println("  <th class='column2'>Period</th>");
            out.println("  <th class='column3'>Group</th>");
            out.println(" <th class='column4'>Room</th>");
            out.println(" <th class='column5'>Day</th>");

            out.println(" </tr>");
            out.println(" </thead>");
            out.println("<tbody>");

            String user = (String) request.getSession().getAttribute("uname");
            String dept = (String) request.getSession().getAttribute("dept");
            String year = request.getParameter("year");
            String semester = request.getParameter("semester");
            String yearr = (String) request.getSession().getAttribute("year");
            String semesterr = (String) request.getSession().getAttribute("semester");

            System.setProperty("JAVA_BIN", "C:\\Program Files\\Java\\jdk1.8.0_191\\bin");
            System.setProperty("PROLOGDIR", "C:\\Users\\reslab\\Coherent\\ErgoAI\\XSB\\config\\x64-pc-windows\\bin");
            System.setProperty("FLORADIR", "C:\\Users\\reslab\\Coherent\\ErgoAI\\Ergo");
            FloraSession session = new FloraSession();

            String fileName = "C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr";
//HttpSession session = request.getSession(true);
// load the program into module main

            if (session.loadFile(fileName, "main")) {
                out.println("Example loaded successfully!");
            } else {
                out.println("Error loading the example!");
            }

            /* load data files */
            String command = "%r.";
            out.println("Query:" + command + user + dept);
            Iterator<FloraObject> classroomObjs = session.ExecuteQuery(command);
            /* Printing out the classroom names and information about their kids */
            /*while (classroomObjs.hasNext()) {
             FloraObject classroomObj = classroomObjs.next();
             System.out.println("Classroom:" + classroomObj);
             }*/

            /*command = "?_: Classroom [inDepartment -> ?RN]@main.";
             System.out.println("Query:" + command);
             classroomObjs = session.ExecuteQuery(command);
             /* Printing out the classroom names */
            /*while (classroomObjs.hasNext()) {
             Object classroomObj = classroomObjs.next();
             System.out.println("Room number: " + classroomObj);
             }*/
            /* Example of executeQuery with two arguments */
            Vector<String> vars = new Vector<String>();
            vars.add("?Year");
            vars.add("?Semester");
            vars.add("?Course");
            vars.add("?GN");
            vars.add("?Room");
            vars.add("?Day");
            vars.add("?Period");

            String query = "?Year=" + yearr + ",?Semester=" + semesterr + ", %generateOneByOne(?Year,?Semester,?Course,?GN,?Room,?Day,?Period).";

            Iterator<HashMap<String, FloraObject>> allmatches
                    = session.ExecuteQuery(query, vars);
            out.println(query);

            while (allmatches.hasNext()) {
                HashMap<String, FloraObject> firstmatch = allmatches.next();
                Object YearObj = firstmatch.get("?Year");
                Object SemesterObj = firstmatch.get("?Semester");
                Object CourseObj = firstmatch.get("?Course");
                Object GNObj = firstmatch.get("?GN");
                Object RoomObj = firstmatch.get("?Room");
                Object DayObj = firstmatch.get("?Day");
                Object PeriodObj = firstmatch.get("?Period");

                /*out.println("Year:" + YearObj + " SEMESTER: " + SemesterObj
                 + "Course:" + CourseObj + "Group:" + GNObj
                 + "room:" + RoomObj + "Day:" + DayObj + "period:" + PeriodObj);
                
                 */
                out.println(" <tr>");

                out.println("<td class='column1'>" + CourseObj + "</td>");
                out.println("<td class='column2'>" + PeriodObj + "</td>");
                out.println("<td class='column3'>" + GNObj + "</td>");
                out.println("<td class='column3'>" + RoomObj + "</td>");
                out.println("<td class='column4'>" + DayObj + "</td>");

                out.println(" </tr>");

                //---------------------
                String courses = CourseObj.toString();
                String rooms = RoomObj.toString();
                String days = DayObj.toString();
                String periods = PeriodObj.toString();
                String years = YearObj.toString();
                String semesters = SemesterObj.toString();
                String groups = GNObj.toString();

                String sql = "INSERT INTO `timetable`(`year`,`semester`,`course`,`room`, `day`,`period`,`user`,`department`,`groupNo`) VALUES (?,?,?,?,?,?,?,?,?)";

                pstm = conn.prepareStatement(sql);
                pstm.setString(1, years);
                pstm.setString(2, semesters);
                pstm.setString(3, courses);
                pstm.setString(4, rooms);
                pstm.setString(5, days);
                pstm.setString(6, periods);
                pstm.setString(7, user);
                pstm.setString(8, dept);
                pstm.setString(9, groups);

                pstm.executeUpdate();

//            //add each item to the array list
//            timeTableAdapter.add(new TimeTableAdapter((String)CourseObj, 
//                    (String)RoomObj, (String)PeriodObj, (String)DayObj));
                //switch case use 
                pstm.close();

            }

            out.println("</tbody>");
            out.println("</table>");
            out.println("</div>");
            out.println("</div>");
            out.println("</div>");
            out.println("</div>");
            out.println("<div class='footer' >");
            out.println("<button type='submit' class='btn btn--radius-2 btn--blue-2' onClick='window.print()'> PRINT</button>");

            out.println("</div>");
            out.println("</div>");
            out.println("</div>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(time.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(time.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(time.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(time.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
