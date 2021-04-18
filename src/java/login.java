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
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Pamilerin
 */
@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {

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
         String username= request.getParameter("username");
         String password= request.getParameter("password");
         String department= request.getParameter("department");
         
       
        //connect db= new connect();
        Connection conn = connect.DBConnect();
       PreparedStatement ps = conn.prepareStatement("select username, password, department from users where username=? and password=? and department=?");
			ps.setString(1, username);
			ps.setString(2, password);
                        ps.setString (3, department);
			ResultSet rs = ps.executeQuery();
                        while (rs.next()) {
                            out.print("welcome, "+ username);
                            HttpSession session= request.getSession(true);
                            
                            session.setAttribute("username", username);
                            session.setAttribute("department", department);
                            session.setMaxInactiveInterval(900);
							 out.println("<script src='https://cdnjs.cloudfare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script'>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal{'WELCOME','successfull!','success'};");
			   out.println("});");
			   out.println("</script>");
			response.sendRedirect("home.jsp");
			return;
		}
                        while (!rs.next()) {
                             out.println("<script src='https://cdnjs.cloudfare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script'>");
				out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal{'oops','invalid username!','error'};");
			   out.println("});");
			   out.println("</script>");
                            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			out.println("<font color=red>Either user name or password is wrong.</font>");
			rd.include(request, response);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
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
