/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author julia
 */
public class Conexion {
    Connection con;
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String user = "system";
    String pass = "admin";
    public Connection conectar(){
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
             con = DriverManager.getConnection(url, user, pass);
        } catch(Exception e){
        
        }
        return con;
    }
}
