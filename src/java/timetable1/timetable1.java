/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package timetable1;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import net.sf.flora2.API.FloraObject;
import net.sf.flora2.API.FloraSession;
import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author Pamilerin
 */
public class timetable1 extends HttpServlet {
	  PreparedStatement pstm;
    ResultSet rs;
  //  Connection conn= connect.DBConnect();
    private String year,semester;
    public String [][] dataUse = new String[7][10];

    public String[][] getDataUse() {
        return dataUse;
    }

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
            String year= request.getParameter("year");
			String semester=request.getParameter("semester");
			
			 System.setProperty("JAVA_BIN", "C:\\Program Files\\Java\\jdk1.8.0_191\\bin");
        System.setProperty("PROLOGDIR", "C:\\Users\\Pamilerin\\Coherent\\ErgoAI\\XSB\\config\\x64-pc-windows\\bin");
        System.setProperty("FLORADIR", "C:\\Users\\Pamilerin\\Coherent\\ErgoAI\\Ergo");
// create a new session for a running instance of the engine
        FloraSession session = new FloraSession();
        System.out.println("Engine session started");

        String fileName = "C:/Users/Pamilerin/Downloads/TTG_SPOG/ttg modified/MainClass/src/timetable1/generate_meeting_times8c.flr";

// load the program into module main
        if (session.loadFile(fileName, "main")) {
            System.out.println("Example loaded successfully!");
        } else {
            System.out.println("Error loading the example!");
        }
   
 /* load data files */
        String command = "%r.";
        System.out.println("Query:" + command);
        Iterator<FloraObject> classroomObjs = session.ExecuteQuery(command);
        /* Printing out the classroom names and information about their kids */
        /*while (classroomObjs.hasNext()) {
            FloraObject classroomObj = classroomObjs.next();
            System.out.println("Classroom:" + classroomObj);
        }*/
        
        /*command = "?_: Classroom [inDepartment -> ?RN]@main.";
        System.out.println("Query:" + command);
        classroomObjs = session.ExecuteQuery(command);
        /* Printing out the classroom names */
        /*while (classroomObjs.hasNext()) {
            Object classroomObj = classroomObjs.next();
            System.out.println("Room number: " + classroomObj);
        }*/
        /* Example of executeQuery with two arguments */
        
        
        Vector<String> vars = new Vector<String>();
        vars.add("?Year");
        vars.add("?Semester");
        vars.add("?Course");
        vars.add("?GN");
        vars.add("?Room");
        vars.add("?Day");
        vars.add("?Period");
                
       
        String query= "?Year="+year+",?Semester="+semester+", %generateOneByOne(?Year,?Semester,?Course,?GN,?Room,?Day,?Period).";
        
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
          System.out.println("Year:" + YearObj + " SEMESTER: " + SemesterObj +
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
                    JOptionPane.showMessageDialog(null, "This '" + day + "' does not exit");
                    break;
            }
            //--------------------
            
            data.add(String.format("%20s %20s %20s %20s %20s %20s %20s \r\n", YearObj, SemesterObj, CourseObj,
                    GNObj, RoomObj, DayObj, PeriodObj ));
            writeToFile(data, "C:/Users/Pamilerin/Downloads/TTG_SPOG/ttg modified/MainClass/src/timetable1/timegen.flr");
        }
        

// quit the system
        session.close();
        System.exit(0);
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
