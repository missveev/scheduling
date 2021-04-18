package timetable1;

import java.util.*;
import net.sf.flora2.API.*;
import net.sf.flora2.API.util.*;

public class flogicbasicsExample {

    public static void main(String[] args) {
        System.setProperty("JAVA_BIN", "C:\\Program Files\\Java\\jdk1.8.0_191\\bin");
        System.setProperty("PROLOGDIR", "C:\\Users\\Pamilerin\\Coherent\\ErgoAI\\XSB\\config\\x64-pc-windows\\bin");
        System.setProperty("FLORADIR", "C:\\Users\\Pamilerin\\Coherent\\ErgoAI\\Ergo");
// create a new session for a running instance of the engine
        FloraSession session = new FloraSession();
        System.out.println("Engine session started");

        String fileName = "C:/Users/Pamilerin/Documents/NetBeansProjects/timetable1/src/timetable1/flogic_basics";

// load the program into module basic_mod
        if (session.loadFile(fileName, "basic_mod")) {
            System.out.println("Example loaded successfully!");
        } else {
            System.out.println("Error loading the example!");
        }
        /* Running queries from flogic_basics.flr */
 /* Query for persons */
        String command = "?X:person@basic_mod.";
        System.out.println("Query:" + command);
        Iterator<FloraObject> personObjs = session.ExecuteQuery(command);
        /* Printing out the person names and information about their kids */
        while (personObjs.hasNext()) {
            FloraObject personObj = personObjs.next();
            System.out.println("Person name:" + personObj);
        }
        command = "person[instances -> ?X]@basic_mod.";
        System.out.println("Query:" + command);
        personObjs = session.ExecuteQuery(command);
        /* Printing out the person names */
        while (personObjs.hasNext()) {
            Object personObj = personObjs.next();
            System.out.println("Person Id: " + personObj);
        }
        /* Example of executeQuery with two arguments */
        Vector<String> vars = new Vector<String>();
        vars.add("?X");
        vars.add("?Y");

        Iterator<HashMap<String, FloraObject>> allmatches
                = session.ExecuteQuery("?X[believes_in -> ?Y]@basic_mod.", vars);
        System.out.println("Query:?X[believes_in -> ?Y]@basic_mod.");
        while (allmatches.hasNext()) {
            HashMap<String, FloraObject> firstmatch = allmatches.next();
            Object Xobj = firstmatch.get("?X");
            Object Yobj = firstmatch.get("?Y");
            System.out.println(Xobj + " believes in: " + Yobj);
        }
// quit the system
        session.close();
        System.exit(0);
    }
}
