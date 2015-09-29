package Entidades;

import java.util.ArrayList;

public class Administrador {

    private String user;
    private String password;

    public static Administrador admin = new Administrador("admin", "1234");

    public Administrador(String user, String password) {
        this.user = user;
        this.password = password;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
    

}
