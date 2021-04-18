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
public class upCourse extends HttpServlet {

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
				
				String c_id = request.getParameter("subcode");
        String c_title = request.getParameter("subdescription");
        String c_prerequisite = request.getParameter("prerequisite");
        String c_language = request.getParameter("language");
        int c_c_unit =Integer.parseInt(request.getParameter("cUnit"));
        String c_lecture_hour = request.getParameter("lechr");
        String c_lab_hour = request.getParameter("labhr");
        int c_ects = Integer.parseInt(request.getParameter("ects"));
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedules?", "root", "");
            PreparedStatement st = null;
			st=conn.prepareStatement("UPDATE `course` SET `course_id`= ?,`course_title`= ?,`course_prerequisite`=?,`course_language`=? ,`course_credit_unit`= ? `lecture_hour`= ?,`lab_hour`= ?,`ects`= ? WHERE `course_id`= '" + c_id + "'");
			st.setString(1,c_id);
			st.setString(2,c_title);
			st.setString(3,c_prerequisite);
			st.setString(4,c_language);
			st.setInt(5,c_c_unit);
			st.setString(6,c_lecture_hour);
			st.setString(7,c_lab_hour);
			st.setInt(8,c_ects);
			st.executeUpdate();
			 out.println( "This course has been updated!");
                request.setAttribute("alertMsg", "updated successfully");
                response.sendRedirect("courselist.jsp");
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
