/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Pamilerin
 */
public class dbconnect {
       Connection conn; 
    
    public static Connection DBConnect(){
       
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedules?","root","");
            //System.out.println("Connected!");
            return conn;
        } catch (Exception e) {
            //System.out.println("Error type: " + e);
            return null;
        }
    
}
}
