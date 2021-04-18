/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.awt.HeadlessException;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author Pamilerin
 */
public class Opencourse extends HttpServlet {

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

            List data = new ArrayList();
            //variables
            String id = request.getParameter("username");
            String dept = request.getParameter("department");
            String c_id = request.getParameter("course_id");
            String c_group = request.getParameter("group");
            String c_maxStd = request.getParameter("maxStd");
            String c_program = request.getParameter("program");
            String c_year = request.getParameter("year");
            String c_semester = request.getParameter("semester");
            String c_cgroup = request.getParameter("course_id").concat("G").concat(request.getParameter("group"));
            //query
            String query = "SELECT * FROM `schedules`.`opencourse` WHERE `courseCode` = ? and `group` = ? and `year` = ? and `semester` = ?";
            try {

                pstm = conn.prepareStatement(query);
                pstm.setString(1, c_id);
                pstm.setString(2, c_group);
                pstm.setString(3, c_year);
                pstm.setString(4, c_semester);
                rs = pstm.executeQuery();
                //check if the course has been registered before
                if (rs.next()) {

                    JOptionPane.showMessageDialog(null, "This course exists!");
                    rs.close();
                    pstm.close();
                    return;
                } //if not then register it
                else if (!rs.next()) {

                    String sql = "INSERT INTO `opencourse` (`groupNo`, "
                            + "`courseCode`, `maxStudent`, `year`,`program`, `semester`,`department`,`user`,`courseGroup`)"
                            + " VALUES (?,?,?,?,?,?,?,?,?)";

                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, c_group);
                    pstm.setString(2, c_id);
                    pstm.setString(3, c_maxStd);
                    pstm.setString(4, c_year);
                    pstm.setString(5, c_program);
                    pstm.setString(6, c_semester);
                    pstm.setString(7, dept);
                    pstm.setString(8, id);
                    pstm.setString(9, c_cgroup);
                    pstm.executeUpdate();
                    data.add("request_" + c_id + "_" + c_group + ":CourseOpeningRequest" + " " + "[" + " " + " " + "groupNumber->" + "'" + c_group + "'" + "," + " "
                            + "ofCourse->" + "'" + c_id + "'" + "," + " " + "maxStudentSize->" + c_maxStd + "," + " " + "year->" + c_year + "," + " " + "forProgram ->" + c_program + " " + "," + " " + "semester->" + c_semester + " " + "].");
                    writeToFile(data, "C:/Users/Pamilerin/Downloads/pamthesis/src/java/timetable1/course_opening_requests.flr");
                    rs.close();
                    pstm.close();

                    out.println("Inserted Successfully!");
                    request.setAttribute("alertMsg", "inserted successfully");
                    response.sendRedirect("opencourse.jsp");
                } //if not registered prompt the user this error msg
                else {
                    out.println("Not Inserted!");
                }
            } catch (HeadlessException | SQLException e) {
                out.println("Error: " + e);
            }
        }

    }

    private static void writeToFile(java.util.List list, String path) {
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
