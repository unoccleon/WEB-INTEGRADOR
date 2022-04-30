package utils;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author JC
 */
public class ConexionDB {
    
    public static java.sql.Connection getConexion(){
        Connection con=null;
        

        try{
            Class.forName("com.mysql.jdbc.Driver");
            String cadena="jdbc:mysql://localhost/ino?user=root&password=";
            con=DriverManager.getConnection(cadena);
            System.out.println("Conexion Satisfactoria");  
                    
        }
        catch(Exception e){
            System.out.println("Error de Conexion "+e);
        }
        
        return con;
        
    }                 
    
    public static void main(String[] args) {
        getConexion();
    }
    
}
