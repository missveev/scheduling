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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pamilerin
 */
public class updateRoom extends HttpServlet {

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
            if(request.getParameter("edit")!=null)
			{
				
				 String r_id = request.getParameter("roomNo");

            String Faculty = request.getParameter("faculty");
            String Department = request.getParameter("dept");

            String Capacity = request.getParameter("capacity");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedules?", "root", "");
            PreparedStatement st = null;
			st=conn.prepareStatement("UPDATE `room` SET `room_id`= ?,`faculty`= ?,`department`=?,`capacity`=?  WHERE `room_id`= '" + r_id + "'");
			st.setString(1,r_id);
			st.setString(2,Faculty);
			st.setString(3,Department);
			st.setString(4,Capacity);
			
			st.executeUpdate();
			 out.println( "This course has been updated!");
                request.setAttribute("alertMsg", "updated successfully");
                response.sendRedirect("roomlist.jsp");
			st.close();
			conn.close();
			return;
		}
		 catch (Exception e)
		{
            //out.println("course="+course_id);
            out.println( "Error: " + e);
        }
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
