/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author lenovo ideapad
 */
public class koneksi {
    
    public static java.sql.Connection con;
    public static Statement stm;
    public void konek(){
    
        try{String url = "jdbc:mysql://localhost/bayarspp";
            String user = "root";
            String pass = "";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,user,pass);
            stm = con.createStatement();
            System.out.println("Koneksi Database Berhasil");
        } catch(Exception e){
            System.out.println("koneksi gagal di " + e.getMessage());
        }
    
    }
    
}
