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
public class department extends HttpServlet {

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
            String c_id = request.getParameter("department");
            String c_group = request.getParameter("faculty");

            //query
            String query = "SELECT * FROM `schedules`.`department` WHERE `department` = ?";
            try {

                pstm = conn.prepareStatement(query);
                pstm.setString(1, c_id);
                rs = pstm.executeQuery();
                //check if the course has been registered before
                if (rs.next()) {

                    JOptionPane.showMessageDialog(null, "This course exists!");
                    rs.close();
                    pstm.close();
                    return;
                } //if not then register it
                else if (!rs.next()) {

                    String sql = "INSERT INTO `department` (`department`, "
                            + "`faculty`)"
                            + " VALUES (?,?)";

                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, c_group);
                    pstm.setString(2, c_id);
                    pstm.executeUpdate();

                    rs.close();
                    pstm.close();

                    out.println("Inserted Successfully!");
                    request.setAttribute("alertMsg", "inserted successfully");
                    response.sendRedirect("deptlist.jsp");
                } //if not registered prompt the user this error msg
                else {
                    out.println("Not Inserted!");
                }
            } catch (HeadlessException | SQLException e) {
                out.println("Error: " + e);
            }
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
