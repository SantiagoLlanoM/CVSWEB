package Negocio;

import Entidades.Administrador;
import Entidades.Propietario;
import Entidades.Usuario;
import javax.swing.JOptionPane;


public class Controlador {
    
    Administrador usuarioAdministrador;
    
    public Controlador(){
        usuarioAdministrador=new Administrador("admin","1234");
    }
    
    public String ingresar(String correo,String password) {

        String tipoLogin="";

        if (correo.equals(usuarioAdministrador.getUser()) && password.equals(usuarioAdministrador.getPassword())) {
            tipoLogin="ADMINISTRADOR";
        } else if (Usuario.loguearUsuario(correo, password)) {
            tipoLogin="USUARIO";
            
        } else if (Propietario.loguearpropietario(correo, password))  {
            tipoLogin="PROPIETARIO";
        } else {
            tipoLogin="ERROR";
        }

           return tipoLogin;
    }
    
    
}
