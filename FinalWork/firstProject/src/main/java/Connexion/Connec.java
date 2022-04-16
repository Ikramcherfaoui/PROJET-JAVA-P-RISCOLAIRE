/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Connexion;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Connec {
    java.sql.Connection conn ;
	Statement stmt ;
	public Connec() {
		
		try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        
        }catch (java.lang.ClassNotFoundException e){
        System.err.print("ClassNotFoundException: ");
        System.err.println(e.getMessage());
        }
		try {
                    /*içi il faut mettre le nom du user et le mot 
                     de passe de votre base de donnée*/
			String user = "root"; 
	        String password = "190501Ikram";
	        String url;
	        url = "jdbc:mysql://localhost:3306/prescolaire";
	        
	         conn = DriverManager.getConnection(url, user, password);
	         stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		} catch(SQLException e){
                    System.err.println(e.getMessage());
		}
		
		
	}
	
	public Statement getStmt() {
        return stmt;
    }
 
    public java.sql.Connection getCon() {
        return conn;
    }
    
    public void seConnecter() {
    	Connec con = new Connec();
    	stmt = con.getStmt();
    	conn = con.getCon();
    	
    }
    
    public void closeConnexion(){
    try {
    conn.close();
    
    }catch(SQLException e){
        System.err.println(e.getLocalizedMessage()+" ==> erreur dans close");
    
    }
    
    
    
    }
}
