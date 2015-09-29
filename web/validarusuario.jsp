<%-- 
    Document   : validarusuario
    Created on : 20/09/2015, 07:02:03 PM
    Author     : Santiago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%!
          String tipoDocumento;
          int documento;
          String nombre;
          String apellido;
          int telefono;
          int celular;
          String correo;
          String contrasena;
          String confirmarpass;
          
        %>
    </head>
    <body>
        <%
                String tipoDocumento = (String) comboTipodocumento.getSelectedItem();
                int documento = Integer.parseInt(textoDocumento.getText());
                String apellido = textoApellidos.getText();
                String nombre = textoNombre.getText();
                int telefono = Integer.parseInt(textoTelefono.getText());
                long celular = Long.parseLong(textoCelular.getText());
                String correo = textoMail.getText();
                String contrasena = textoPass.getText();
                String confirmarpass = textoConfirmarpass.getText();
                if (!contrasena.equals(confirmarpass)) {
                    JOptionPane.showMessageDialog(null, "No coinciden las contraseñas",
                            "Error", JOptionPane.ERROR_MESSAGE);
                }
                String genero = (String) comboGenero.getSelectedItem();

                if (textoMail.getText().matches("^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\\.[a-zA-Z]{2,4}$") && (textoPass.getText().length() == 8)) {

                    if (!editando) {
                        Usuario us = new Usuario(tipoDocumento, documento, apellido,
                                nombre, telefono, celular, correo, genero, contrasena);
                        Usuario.usuarios.add(us); //Agregar al array

                        JOptionPane.showMessageDialog(null, "Se ha Registrado con exito, Inice Sesion para acceder",
                                "Informacion", JOptionPane.INFORMATION_MESSAGE);
                        new LoginFrame();
                        dispose(); //Me cierro yo
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
                    if (textoMail.getText().matches("^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\\.[a-zA-Z]{2,4}$")) {
                        labelmail.setForeground(Color.BLACK);
                    } else {
                        labelmail.setForeground(Color.RED);
                    }
                    if (textoPass.getText().length() == 8) {
                        labelpass.setForeground(Color.BLACK);
                        labelconfirmarpass.setForeground(Color.BLACK);
                    } else {
                        labelpass.setForeground(Color.RED);
                        labelconfirmarpass.setForeground(Color.RED);
                    }

                }
            }
        );
        

        %>
    </body>
</html>
