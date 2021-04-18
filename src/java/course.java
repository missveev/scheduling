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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author Pamilerin
 */
public class course extends HttpServlet {

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
        boolean status = false;
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            List data = new ArrayList();
            String name = request.getParameter("username");
            //String dept=(String ) session.getAttribute("department");
            String c_id = request.getParameter("subcode");
            String c_title = request.getParameter("subdescription");
            String c_prerequisite = request.getParameter("prerequisite");
            String c_language = request.getParameter("language");
            int c_c_unit = Integer.parseInt(request.getParameter("cUnit"));
            String c_lecture_hour = request.getParameter("lechr");
            String c_lab_hour = request.getParameter("labhr");
            int c_ects = Integer.parseInt(request.getParameter("ects"));
            String c_dept = request.getParameter("department");
            //query
            String query = "SELECT * FROM `schedules`.`course` WHERE `course_id` = ?";
            try {

                pstm = conn.prepareStatement(query);
                pstm.setString(1, c_id);
                rs = pstm.executeQuery();
                //check if the course has been registered before
                if (rs.next()) {

                    out.println("This course exists!");
                    rs.close();
                    pstm.close();
                    return;
                } //if not then register it
                else if (!rs.next()) {

                    String sql = "INSERT INTO `course`(`course_id`, `course_title`,"
                            + " `course_prerequisite`, `course_language`,`course_credit_unit`,"
                            + " `lecture_hour`, `lab_hour`, `ects`,`department`, `user`)"
                            + " VALUES (?,?,?,?,?,?,?,?,?,?)";
                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, c_id);
                    pstm.setString(2, c_title);
                    pstm.setString(3, c_prerequisite);
                    pstm.setString(4, c_language);
                    pstm.setString(5, String.valueOf(c_c_unit));
                    pstm.setString(6, c_lecture_hour);
                    pstm.setString(7, c_lab_hour);
                    pstm.setString(8, String.valueOf(c_ects));
                    pstm.setString(9, c_dept);
                    pstm.setString(10, name);
                    pstm.executeUpdate();

                    data.add(c_id + ":Course" + " " + "[" + " " + " " + "courseCode->" + "'" + c_id + "'" + "," + " "
                            + "courseName->" + "'" + c_title + "'" + "," + " " + "hasPrerequisite->" + c_prerequisite + "," + " " + "instructionLanguage->" + c_language + "," + " " + "credits->" + c_c_unit + " "
                            + "," + " " + "lecture_hours->" + c_lecture_hour + " " + "," + " " + "lab_hours->" + c_lab_hour + " " + "," + " " + "ects->" + c_ects + " " + "].");
                    writeToFile(data, "C:/Users/Pamilerin/Downloads/pamthesis/src/java/timetable1/course_instances.flr");

                    request.setAttribute("alertMsg", "inserted successfully");
                    response.sendRedirect("courselist.jsp");

                } //if not registered prompt the user this error msg
                else {
                    request.setAttribute("alertMsg", "invalid course id");

                }
            } catch (Exception e) {
                out.println("Error: " + e);
            }
        }
    }

    private static void writeToFile(java.util.List list, String path) throws IOException, IOException {
        BufferedWriter out = null;
        try {
            File file = new File(path);
            out = new BufferedWriter(new FileWriter(file, true));
            for (Object s : list) {
                out.write(s.toString());
                //reArrange(s.split(","));
                out.newLine();

            }
            out.close();
        } catch (IOException ex) {
            Logger.getLogger(course.class.getName()).log(Level.SEVERE, null, ex);
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
