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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import java.sql.Connection;

/**
 *
 * @author Pamilerin
 */
public class room extends HttpServlet {

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
            String r_id = request.getParameter("roomNo");

            String Faculty = request.getParameter("faculty");
            String Department = request.getParameter("department");

            String Capacity = request.getParameter("capacity");

            //query
            String query = "SELECT * FROM `schedules`.`room` WHERE `room_id` = ?";
            try {

                pstm = conn.prepareStatement(query);
                pstm.setString(1, r_id);
                rs = pstm.executeQuery();
                //check if the course has been registered before
                if (rs.next()) {

                    out.println("This room exists!");
                    rs.close();
                    pstm.close();
                    return;
                } //if not then register it
                else if (!rs.next()) {

                    String sql = "INSERT INTO `room`(`room_id`,  `faculty`,`department`, `capacity`, `user`)"
                            + " VALUES (?,?,?,?,?)";

                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, r_id);

                    pstm.setString(2, Faculty);
                    pstm.setString(3, Department);

                    pstm.setString(4, Capacity);
                    pstm.setString(5, id);
                    pstm.executeUpdate();
                    data.add(r_id + ":Classroom" + " " + "[" + " " + " " + "roomNumber->" + "'" + r_id + "'" + "," + " "
                            + "location->" + "'" + Faculty + "'" + "," + " " + "inDepartment->" + Department + "," + " " + "capacity->" + Capacity + "" + "].");
                    writeToFile(data, "C:/Users/Pamilerin/Downloads/pamthesis/src/java/timetable1/classroom_instances.flr");
                    request.setAttribute("alertMsg", "inserted successfully");
                    response.sendRedirect("roomlist.jsp");
                } //if not registered prompt the user this error msg
                else {
                    request.setAttribute("alertMsg", "invalid room id");

                }
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null, "Error: " + e);
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
