/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Pamilerin
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author AFOLABI
 */
public class connect {
    
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
