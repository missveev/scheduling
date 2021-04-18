/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package timetable1;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Vector;
import net.sf.flora2.API.FloraObject;
import net.sf.flora2.API.FloraSession;

/**
 *
 * @author Pamilerin
 */

    import java.util.*;
import net.sf.flora2.API.*;
import net.sf.flora2.API.util.*;

public class timetable2 {

String[] days = { "Monday", "Tuesday", "Wednesday", "Thrusday", "Friday" };
	String[] cols = { "8:30-9:20 1", "9:30-10:20 2", "10:30-11:20 3", "11:30-12:20  4", "12:30-13:20  5",
			"13:30-14:20  6", "14:30-15:20  7", "15:30-16:20  8" };
    public static void main(String[] args) {
        System.setProperty("JAVA_BIN", "C:\\Program Files\\Java\\jdk1.8.0_191\\bin");
        System.setProperty("PROLOGDIR", "C:\\Users\\Pamilerin\\Coherent\\ErgoAI\\XSB\\config\\x64-pc-windows\\bin");
        System.setProperty("FLORADIR", "C:\\Users\\Pamilerin\\Coherent\\ErgoAI\\Ergo");
// create a new session for a running instance of the engine
        FloraSession session = new FloraSession();
        System.out.println("Engine session started");

        String fileName = "C:/Users/Pamilerin/Downloads/pamthesis/src/java/timetable1/generate_meeting_times8c.flr";

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
                
        String year="2019";
        String semester="SPRING";
        String query= "?Year="+year+",?Semester="+semester+",%generateOneByOne(?Year,?Semester,?Course,?GN,?Room,?Day,?Period).";
        
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
        }

       
// quit the system
        session.close();
        System.exit(0);
    }
       
}


