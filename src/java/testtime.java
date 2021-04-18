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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.flora2.API.FloraObject;
import net.sf.flora2.API.FloraSession;

/**
 *
 * @author Pamilerin
 */
public class testtime extends HttpServlet {
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
            String yearr=request.getParameter("year");
         String semesterr= request.getParameter("semester");
            /* TODO output your page here. You may use following sample code. */
             List c_data = new ArrayList();
            List r_data = new ArrayList();
            List cp_data = new ArrayList();
            try {
                    
                    Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedules?","root","");
                    Statement st = conn.createStatement();
                    ResultSet rs = st.executeQuery("Select * from course");
                    
                    while (rs.next()) {
                            String id = rs.getString("course_id");
                            String name = rs.getString("course_title");
                            String prerequisite = rs.getString("course_prerequisite");
                            String language = rs.getString("course_language");
                            String creditUnit=rs.getString("course_credit_unit");
                            String lecturehr=rs.getString("lecture_hour");
                            String labhr= rs.getString("lab_hour");
                            String ects=rs.getString("ects");
                           
                            c_data.add(id + ":Course" + " "+"["+" "+ " "+"courseCode->"+ "'"+id+"'" +"," +" "+ 
                            "courseName->" + "'"+name + "'"+","+ " "+"hasPrerequisite->" + prerequisite +","+ " "+ "instructionLanguage->"  + language +","+ " "+"credits->" + creditUnit +", "+ " "+" lecture_hours->" + lecturehr+","+ " "+ "lab_hours->"  + labhr +","+ " "+"ects->" + ects +" "+"]." );

                    }
                    rs = st.executeQuery("Select * from room");
                    while(rs.next())
                    {
                        String id=rs.getString("room_id");
                        //String name=rs.getString("room_name");
                        String faculty=rs.getString("faculty");
                        String department=rs.getString("department");
                        String capacity=rs.getString("capacity");
                        
                     r_data.add(id + ":Classroom" + " "+"["+" "+ " "+"roomNumber->"+id+"," +" "+ 
                            "location->" +faculty +","+ " "+"inDepartment->" +" '"+department+"'"+","+ " "+ "capacity->"  + capacity +""+ "]." );
 
                    }
                    rs=st.executeQuery("select * from opencourse");
                    while(rs.next())
                    {
                        String c_group=rs.getString("groupNo");
                        String c_id=rs.getString("courseCode");
                        String c_maxStd=rs.getString("maxStudent");
                        String c_year=rs.getString("year");
                        String c_program=rs.getString("program");
                        String c_semester=rs.getString("semester");
                        cp_data.add("request_"+c_id+"_"+c_group + ":CourseOpeningRequest" + " "+"["+" "+ " "+"groupNumber->"+c_group +"," +" "+ 
                            "ofCourse->" +c_id+","+ " "+"maxStudentSize->" + c_maxStd +","+ " "+ "year->"  + c_year +","+ " "+"forProgram ->" + c_program +" "+ ","+ " "+"semester->" + c_semester +" "+ "]." );

                    }
                     writeToFile(cp_data, "C:/Users/Pamilerin/Downloads/pamthesis/src/java/timetable1/course_opening_requests.flr");
                    
                     writeToFile(r_data, "C:/Users/Pamilerin/Downloads/pamthesis/src/java/timetable1/classroom_instances.flr");
                   
                     writeToFile(c_data, "C:/Users/Pamilerin/Downloads/pamthesis/src/java/timetable1/course_instances.flr");
                    
                    rs.close();
                    st.close();
		
                
            } catch (Exception e) {
                    
                out.println(e);
            }
            
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
            
        }
    }
    }
      
    

    private static void writeToFile(java.util.List list, String path) {
            BufferedWriter out = null;
            try {
                    File file = new File(path);
                    out = new BufferedWriter(new FileWriter(file, false));
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
         try {
             processRequest(request, response);
         } catch (SQLException ex) {
             Logger.getLogger(testtime.class.getName()).log(Level.SEVERE, null, ex);
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
             Logger.getLogger(testtime.class.getName()).log(Level.SEVERE, null, ex);
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
