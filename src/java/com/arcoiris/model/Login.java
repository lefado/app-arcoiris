/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.arcoiris.model;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author mason
 */
public class Login {

    private String user;       
    private String password;
    private String password_MD5;
    private String name;
    private String lastname;

    Connect cx = new Connect();

    public Login() {

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

    public String getPassword_MD5() {
        return password_MD5;
    }

    public void setPassword_MD5(String password_MD5) {
        this.password_MD5 = password_MD5;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }


    //METODOS Y OPERACIONES
    public boolean UserValidation(Login l) throws SQLException, ClassNotFoundException {
        boolean flag = false;
        cx.on();
        String user = l.getUser();
        String pass = l.getPassword();
        String com = "SELECT * FROM USERS WHERE USER='"+ user+"'"+" AND PASSWORD='"+pass+"'";
        ResultSet rs = cx.getQuery(com);

        while (rs.next()) {
            flag=true;
        }
        
        cx.off();        
        return flag;
    }
    
    
    public int UserRegistration(Login l) throws SQLException, ClassNotFoundException {                    
        
        String com = "INSERT INTO USERS (user,password,password_MD5,name,lastname)"
                + //Consulta SQL
                " VALUES ('" + l.getUser()+ "','" + l.getPassword() + "','" + "default" + "','"
                + l.getName() + "','" + l.getLastname() + "')";
        System.out.println("Consulta registrarSesion = "+com);
        int res = cx.execQuery(com); 
        return res;
    }
}
