<%-- 
    Document   : Validar
    Created on : 20/09/2015, 06:17:05 PM
    Author     : Santiago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <%!
        String s_nombre;
        String s_clave;
        %>
    </head>
    <body>
        <%
            s_nombre=request.getParameter("f_nombre");
            s_clave=request.getParameter("f_clave");
            if (s_nombre.equals("admin")&& s_clave.equals("1234"))
            { 
                response.sendRedirect("index.jsp");
                
            }
            
       %>    
    </body>
</html>
