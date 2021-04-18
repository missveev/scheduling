
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pamilerin
 */
public class call extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String year = request.getParameter("year");
            String semester = request.getParameter("semester");
            String uname = request.getParameter("username");
            String dept = request.getParameter("department");
            request.getSession().setAttribute("uname", uname);
            request.getSession().setAttribute("dept", dept);
            request.getSession().setAttribute("year", year);
            request.getSession().setAttribute("semester", semester);
            List c_data = new ArrayList();
            List r_data = new ArrayList();
            List cp_data = new ArrayList();
            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedules?", "root", "");
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("Select * from course where department='" + dept + "'");

                while (rs.next()) {
                    String id = rs.getString("course_id");
                    String name = rs.getString("course_title");
                    String prerequisite = rs.getString("course_prerequisite");
                    String language = rs.getString("course_language");
                    String creditUnit = rs.getString("course_credit_unit");
                    String lecturehr = rs.getString("lecture_hour");
                    String labhr = rs.getString("lab_hour");
                    String ects = rs.getString("ects");

                    c_data.add(id + ":Course" + " " + "[" + " " + " " + "courseCode->" + "'" + id + "'" + "," + " "
                            + "courseName->" + "'" + name + "'" + "," + " " + "hasPrerequisite->" + prerequisite + "," + " " + "instructionLanguage->" + language + "," + " " + "credits->" + creditUnit + ", " + " " + " lecture_hours->" + lecturehr + "," + " " + "lab_hours->" + labhr + "," + " " + "ects->" + ects + " " + "].");

                }
                rs = st.executeQuery("Select * from room where department='" + dept + "'");
                while (rs.next()) {
                    String id = rs.getString("room_id");
                    //String name=rs.getString("room_name");
                    String faculty = rs.getString("faculty");
                    String department = rs.getString("department");
                    String capacity = rs.getString("capacity");

                    r_data.add(id + ":Classroom" + " " + "[" + " " + " " + "roomNumber->" + id + "," + " "
                            + "location->" + " '" + faculty + "'" + "," + " " + "inDepartment->" + " '" + department + "'" + "," + " " + "capacity->" + capacity + "" + "].");

                }
                rs = st.executeQuery("select * from opencourse  where  department='" + dept + "'");
                while (rs.next()) {
                    String c_group = rs.getString("groupNo");
                    String c_id = rs.getString("courseCode");
                    String c_maxStd = rs.getString("maxStudent");
                    String c_year = rs.getString("year");
                    String c_program = rs.getString("program");
                    String c_semester = rs.getString("semester");
                    cp_data.add("request_" + c_id + "_" + c_group + ":CourseOpeningRequest" + " " + "[" + " " + " " + "groupNumber->" + c_group + "," + " "
                            + "ofCourse->" + c_id + "," + " " + "maxStudentSize->" + c_maxStd + "," + " " + "year->" + c_year + "," + " " + "forProgram ->" + c_program + " " + "," + " " + "semester->" + c_semester + " " + "].");

                }

                writeToFile(cp_data, "C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/course_opening_requests.flr");

                writeToFile(r_data, "C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/classroom_instances.flr");

                writeToFile(c_data, "C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/course_instances.flr");
                String delete = "DELETE FROM `timetable` WHERE `year` = '" + year + "' and `year` = '" + semester + "' and `department` = '" + dept + "'";

                pstm = conn.prepareStatement(delete);
                pstm.executeUpdate();
                pstm.close();
                rs.close();
                st.close();
                //out.println("<a href='time'> data saved click here to view timetable</a>");
                response.sendRedirect("delTime");

            } catch (Exception e) {
                out.println(e);
            }

        }
    }

    private static void writeToFile(java.util.List list, String path) {
        BufferedWriter out = null;
        try {
            File file = new File(path);
            out = new BufferedWriter(new FileWriter(file, false));
            for (Object s : list) {
                out.write(s.toString());
                //reArrange(s.split(","));
                out.newLine();

            }
            out.close();
        } catch (IOException e) {
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
        processRequest(request, response);
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
        processRequest(request, response);
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
