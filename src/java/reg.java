/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author Pamilerin
 */
public class reg extends HttpServlet {

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
            String c_id = request.getParameter("username");

            String pwd = request.getParameter("password");
            String dept = request.getParameter("department");

            String query = "SELECT * FROM `schedules`.`users` WHERE `username` = ?";
            try {

                pstm = conn.prepareStatement(query);
                pstm.setString(1, c_id);
                rs = pstm.executeQuery();
                //check if the course has been registered before
                if (rs.next()) {

                    JOptionPane.showMessageDialog(null, "This room exists!");
                    rs.close();
                    pstm.close();
                    return;
                } //if not then register it
                else if (!rs.next()) {

                    String sql = "INSERT INTO `users`(`username`,  `password`,`department`)"
                            + " VALUES (?,?,?)";

                    pstm = conn.prepareStatement(sql);
                    pstm.setString(1, c_id);

                    pstm.setString(2, pwd);
                    pstm.setString(3, dept);

                    pstm.executeUpdate();
                    request.setAttribute("alertMsg", "inserted successfully");
                    response.sendRedirect("login.jsp");
                } //if not registered prompt the user this error msg
                else {
                    request.setAttribute("alertMsg", "invalid room id");

                }
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null, "Error: " + e);
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
