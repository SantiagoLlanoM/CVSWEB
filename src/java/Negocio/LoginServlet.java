/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Coord. Sistemas LIMA
 */
public class LoginServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String s_nombre;
        String s_clave;
        
        s_nombre=(String)request.getParameter("f_nombre");
            s_clave=(String)request.getParameter("f_clave");
            
            Controlador controlador1 =new Controlador();
            String respLogin= controlador1.ingresar(s_nombre, s_clave);
            
            if(respLogin.equals("ADMINISTRADOR")){
                response.sendRedirect("index.jsp");
            }else if(respLogin.equals("PROPIETARIO")){
                response.sendRedirect("index.jsp");
            }else if(respLogin.equals("USUARIO")){
                response.sendRedirect("index.jsp");
            }else{
                request.getSession().setAttribute("loginInvalido", "true");
                response.sendRedirect("Login.jsp");
            }
                
            
    }


}
