/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.Personal;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utils.ConexionDB;

/**
 *
 * @author JC
 */
@WebServlet(name = "ServletCRUD", urlPatterns = {"/ServletCRUD"})
public class ServletCRUD extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
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
        processRequest(request, response);
        
        String op=request.getParameter("op");
        
        if(op.equals("listar")){
            try{
                PreparedStatement sta=ConexionDB.getConexion()
                        .prepareStatement("select * from personal");               

                ResultSet rs=sta.executeQuery();
               
                ArrayList<Personal> lista=new ArrayList<>();
                
                while (rs.next()) {                    
                    Personal e=new Personal(rs.getInt(1), rs.getString(2), rs.getString(3), 
                                            rs.getString(4), rs.getString(5), rs.getString(6),
                                            rs.getString(7),rs.getString(8),rs.getString(9),
                                            rs.getString(10),rs.getString(11),rs.getString(12),
                                            rs.getString(13),rs.getString(14),rs.getString(15));                    
                    lista.add(e);
                }
             
                request.setAttribute("lista", lista);
                

                request.getRequestDispatcher("buscar_personal.jsp").forward(request, response);
                
            }
            catch(Exception e){
                System.out.println("error: "+e);
            }      
        }
        
        else if(op.equals("nuevo")){
            try{
                int Id=Integer.parseInt(request.getParameter("txtId"));
                String Nom1=request.getParameter("txtNom1");
                String Nom2=request.getParameter("txtNom2");
                String Pat=request.getParameter("txtPat");
                String Mat=request.getParameter("txtMat");
                String Fecha=request.getParameter("txtFecha");
                String sexo=request.getParameter("txtSexo");
                String Tel=request.getParameter("txtTel");
                String Correo=request.getParameter("txtCorreo");
                String Estado=request.getParameter("txtEstado");
                String NomP=request.getParameter("txtNomP");
                String NomM=request.getParameter("txtNomM");
                String Hijos=request.getParameter("txtHijos");
                String Area=request.getParameter("txtArea");
                String Puesto=request.getParameter("txtPuesto");
                
                //es para preparar la consulta q voy a ejecutar
                //observaciones: preparecall es para procesos almacenados, estaba mal. debe ser prepareStatement 
                PreparedStatement sta=ConexionDB.getConexion()
                        .prepareStatement("insert into personal value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                
                //insertando a cada signo de interrogacion
                sta.setInt(1, Id);
                sta.setString(2, Nom1);
                sta.setString(3, Nom2);
                sta.setString(4, Pat);              
                sta.setString(5, Mat);
                sta.setString(6, Fecha);
                sta.setString(7, sexo);
                sta.setString(8, Tel);
                sta.setString(9, Correo);
                sta.setString(10, Estado);              
                sta.setString(11, NomP);
                sta.setString(12, NomM);
                sta.setString(13, Hijos);
                sta.setString(14, Area);
                sta.setString(15, Puesto);
                
                //para insertar 
                sta.executeUpdate();                            
                
                //redirijo a listado.jsp
                request.getRequestDispatcher("legajo.jsp").forward(request, response);
                
            }
            catch(Exception e){
                System.out.println("error: "+e);
            }
            
        
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
        processRequest(request, response);
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
