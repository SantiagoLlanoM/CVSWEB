<%-- 
    Document   : CrearUsuario
    Created on : 20/09/2015, 06:17:05 PM
    Author     : Santiago
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="javafx.scene.control.ComboBox"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%!
            String tipoDocumento;
            String documento;
            String apellido;
            String nombre;
            String telefono;
            String celular;
            String correo;
            String genero;
            String contrasena;
            String confirmarcontrasena;
            boolean editando;

        %>

    </head>
    <body>
        <form action="validarusuario.jsp" method="POST">
            <table border="0" cellspacing="3" align="center">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Tipo Documento</td>
                        <td><select name="combotipodocumento" size="2">
                                <option value="1">Cedula</option>
                                <option value="2">Tarjeta Identidad</option>
                                <option value="3">Pasaporte</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Documento</td>
                        <td><input type="text" name="f_documento" value="" /></td>
                    </tr>
                    <tr>
                        <td>Apellido</td>
                        <td> <input type="text" name="f_apellido" value="" /></td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td> <input type="text" name="f_nombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Telefono</td>
                        <td> <input type="text" name="f_telefono" value="" /></td>
                    </tr>
                    <tr>
                        <td>Celular</td>
                        <td> <input type="text" name="f_nombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Correo</td>
                        <td> <input type="text" name="f_correo" value="" /></td>
                    </tr>
                    <tr>
                        <td>Contrasena</td>
                        <td> <input type="text" name="f_confirmarcontrasena" value="" /></td>
                    </tr>
                    <tr>
                        <td>Confirmar Contrasena</td>
                        <td> <input type="text" name="f_confirmarcontrasena" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Crear Usuario" /></td>
                        <td><input type="reset" value="Restablecer" /></td>
                    </tr>                    
                </tbody>
            </table>

        </form>

        <%
/*
                tipoDocumento=request.getParameter("combotipodocumento");
                documento = request.getParameter("f_documento");
                apellido = request.getParameter("f_apellido");
                nombre = request.getParameter("f_nombre");
                telefono = request.getParameter("f_telefono");
                celular = request.getParameter("f_celular");
                correo = request.getParameter("f_correo");
                genero = request.getParameter("f_genero");
                contrasena = request.getParameter("f_contrasena");
                confirmarcontrasena = request.getParameter("f_confirmarcontrasena");
                if (!contrasena.equals(confirmarcontrasena)) {
                    JOptionPane.showMessageDialog(null, "Se ha Registrado con exito, Inice Sesion para acceder",
                            "Informacion", JOptionPane.INFORMATION_MESSAGE);

                }

                if (correo.matches("^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\\.[a-zA-Z]{2,4}$") && (contrasena.length() == 8)) {

                    if (!editando) {
                        Usuario us = new Usuario(tipoDocumento, documento, apellido,
                                nombre, telefono, celular, correo, genero, contrasena);
                        Usuario.usuarios.add(us); //Agregar al array

                        JOptionPane.showMessageDialog(null, "Se ha Registrado con exito, Inice Sesion para acceder",
                                "Informacion", JOptionPane.INFORMATION_MESSAGE);
                        response.sendRedirect("index.jsp");
                        
                    } else {
                        Usuario.usuarioLogueado.tipoDocumento = tipoDocumento;
                        Usuario.usuarioLogueado.documento = documento;
                        Usuario.usuarioLogueado.apellido = apellido;
                        Usuario.usuarioLogueado.nombre = nombre;
                        Usuario.usuarioLogueado.telefono = telefono;
                        Usuario.usuarioLogueado.celular = celular;
                        Usuario.usuarioLogueado.correo = correo;
                        Usuario.usuarioLogueado.genero = genero;
                        Usuario.usuarioLogueado.contrasena = contrasena;

                        //Cambiar todos
                        JOptionPane.showMessageDialog(null, "Usuario modificado",
                                "Informacion", JOptionPane.INFORMATION_MESSAGE);
                    }
                } else {
                    JOptionPane.showMessageDialog(null, "Campos Incorrectos",
                            "Informacion", JOptionPane.ERROR_MESSAGE);

                }
            }
*/
        %>

    </body>





</html>
