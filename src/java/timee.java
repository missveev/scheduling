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
import java.util.HashMap;
import java.util.Iterator;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import net.sf.flora2.API.FloraObject;
import net.sf.flora2.API.FloraSession;
import timetable1.timetable;

/**
 *
 * @author Pamilerin
 */
public class timee extends HttpServlet {
     PreparedStatement pstm;
    ResultSet rs;
    Connection conn = connect.DBConnect();

 public String [][] dataUse = new String[6][10];
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
           
                               String user= request.getParameter("username");
				String dept=request.getParameter("department");
                                String yearr=(String)request.getSession().getAttribute("year");
                                String semesterr= (String)request.getSession().getAttribute("semester");
                                
                                System.setProperty("JAVA_BIN", "C:\\Program Files\\Java\\jdk1.8.0_191\\bin");
        System.setProperty("PROLOGDIR", "C:\\Users\\Pamilerin\\Flora-2\\XSB\\config\\x64-pc-windows\\bin");
        System.setProperty("FLORADIR", "C:\\Users\\Pamilerin\\Flora-2\\flora2");
                               FloraSession session = new FloraSession();
        
        String fileName = "C:/Users/Pamilerin/Downloads/pamthesis/src/java/timetable1/generate_meeting_times8c.flr";
//HttpSession session = request.getSession(true);
// load the program into module main

        if (session.loadFile(fileName, "main")) {
            out.println("file loaded successfully!");
        } else {
            out.println("Error loading the file!");
        }
   
 /* load data files */
        String command = "%r.";
        out.println("Query:" + command);
        Iterator<FloraObject> classroomObjs = session.ExecuteQuery(command);
       
      Vector<String> vars = new Vector<String>();
        vars.add("?Year");
        vars.add("?Semester");
        vars.add("?Course");
        vars.add("?GN");
        vars.add("?Room");
        vars.add("?Day");
        vars.add("?Period");
                
      
        String query= "?Year="+yearr+",?Semester="+semesterr+", %generateOneByOne(?Year,?Semester,?Course,?GN,?Room,?Day,?Period).";
        
        Iterator<HashMap<String, FloraObject>> allmatches
                = session.ExecuteQuery(query, vars);
        System.out.println(query);
        
       
        
        while (allmatches.hasNext()) {
            HashMap<String, FloraObject> firstmatch = allmatches.next();
            Object YearObj = firstmatch.get("?Year");
            Object SemesterObj = firstmatch.get("?Semester");
            Object CourseObj= firstmatch.get("?Course");
            Object GNObj= firstmatch.get("?GN");
            Object RoomObj= firstmatch.get("?Room");
            Object DayObj= firstmatch.get("?Day");
            Object PeriodObj= firstmatch.get("?Period");
            
            //This is where you will work, Okay Sunday! Yes SIR.
        out.println("Year:" + YearObj + " SEMESTER: " + SemesterObj +
                    "Course:" + CourseObj + "Group:" + GNObj
            + "room:" + RoomObj + "Day:" + DayObj + "period:" + PeriodObj);
			
			
//            //add each item to the array list
//            timeTableAdapter.add(new TimeTableAdapter((String)CourseObj, 
//                    (String)RoomObj, (String)PeriodObj, (String)DayObj));
           
            //switch case use 
            String day = DayObj.toString().toUpperCase();
            int index; //denotes the position of the each day in the array(x-axis).
            String p = PeriodObj.toString();
            int period = (Integer.parseInt(p)) - 1;//(y-axis)
            String course = CourseObj.toString();
            String room = RoomObj.toString();
            String join = course + "/" + room;
            
            switch(day){
                case "MONDAY":
                    index = 0;
                    dataUse[index][period] = join; 
                    break;
                case "TUESDAY":
                    index = 1;
                    dataUse[index][period] = join;
                    break;
                case "WEDNESDAY":
                    index = 2;
                    dataUse[index][period] = join;
                    break;
                case "THURSDAY":
                
                    index = 3;
                    dataUse[index][period] = join;
                    break;
                case "FRIDAY":
                    index = 4;
                    dataUse[index][period] = join;
                    break;
                default:
                    out.println("This '" + day + "' does not exit");
                    break;
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(timee.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(timee.class.getName()).log(Level.SEVERE, null, ex);
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
