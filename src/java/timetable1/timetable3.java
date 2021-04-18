/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*package timetable1;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import mainclass.TimeTable;
import net.sf.flora2.API.FloraObject;
import net.sf.flora2.API.FloraSession;
import source.Connectivity;

/**
 *
 * @author Pamilerin
 */

   
/*
public class timetable3 {
    PreparedStatement pstm;
    ResultSet rs;
    Connection conn = Connectivity.DBConnect() ;

    private String year,semester;

public timetable3(String year, String semester) {
    
    //this.course = course;
      
        this.year = year;
        this.semester = semester;
}

    private timetable3() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   
 public String getYear() {
        return year;
    }

    public String getSemester() {
        return semester;
    }

 /*public String getCourse()
    {
        return course;
    }*/
/*
	
	public  void generate() throws IOException, SQLException {
		 List data = new ArrayList();
		String g_year =this.getYear();
		
		String g_semester =this.getSemester();
                
                //String g_course=this.getCourse();
		
		
		
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
/*
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
        /*
        
        Vector<String> vars = new Vector<String>();
        vars.add("?Year");
        vars.add("?Semester");
        vars.add("?Course");
        vars.add("?GN");
        vars.add("?Room");
        vars.add("?Day");
        vars.add("?Period");
                
        String year=g_year;
        String semester=g_semester;
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
            
            
            System.out.println("Year:" + YearObj + " SEMESTER: " + SemesterObj +"Course:" +CourseObj +"Group:" + GNObj
            +"room:"+RoomObj +"Day:"+ DayObj +"period:"+PeriodObj);
            
           
            data.add(String.format("%20s %20s %20s %20s %20s %20s %20s \r\n", YearObj, SemesterObj, CourseObj,
                    GNObj, RoomObj, DayObj, PeriodObj ));
            writeToFile(data, "C:/Users/Pamilerin/Downloads/TTG_SPOG/ttg modified/MainClass/src/timetable1/timegen.flr");
        }

// quit the system
        session.close();
        System.exit(0);
    }
        public void call() throws IOException, SQLException {
        generate();
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
    
}*/