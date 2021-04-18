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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author reslab
 */
public class save extends HttpServlet {
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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           String depts = (String) request.getSession().getAttribute("dept");
          String user = (String) request.getSession().getAttribute("uname");
            String yearrs = (String) request.getSession().getAttribute("year");
            String semesterrs = (String) request.getSession().getAttribute("semester");
            
             String courses = request.getParameter("courses");
                String rooms = request.getParameter("rooms");
                String days = request.getParameter("days");
                String periods = request.getParameter("periods");
                String years = request.getParameter("years");
                String semesters = request.getParameter("semesters");
                String groups = request.getParameter("groups");
             String sql = "INSERT INTO `timetable`(`year`,`semester`,`course`,`room`, `day`,`period`,`user`,`department`,`groupNo`) VALUES (?,?,?,?,?,?,?,?,?)";

                        pstm = conn.prepareStatement(sql);
                        pstm.setString(1, years);
                        pstm.setString(2, semesters);
                        pstm.setString(3, courses);
                        pstm.setString(4, rooms);
                        pstm.setString(5, days);
                        pstm.setString(6, periods);
                        pstm.setString(7, user);
                        pstm.setString(8, depts);
                        pstm.setString(9, groups);

                        pstm.executeUpdate();

//            //add each item to the array list
//            timeTableAdapter.add(new TimeTableAdapter((String)CourseObj, 
//                    (String)RoomObj, (String)PeriodObj, (String)DayObj));
                        //switch case use 
                         response.sendRedirect("view.jsp");
                    pstm.close();
             
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
      } catch (SQLException ex) {
          Logger.getLogger(save.class.getName()).log(Level.SEVERE, null, ex);
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
      } catch (SQLException ex) {
          Logger.getLogger(save.class.getName()).log(Level.SEVERE, null, ex);
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
