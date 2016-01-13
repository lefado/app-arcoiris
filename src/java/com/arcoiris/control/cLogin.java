/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.arcoiris.control;

import com.arcoiris.model.Login;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.scene.control.Alert;
import javafx.scene.web.WebEvent;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mason
 */
public class cLogin extends HttpServlet {

    Login l = new Login();

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

        String user = request.getParameter("f_user");
        String pass = request.getParameter("f_pass");

        System.out.println("get user " + user + " aaaa " + pass);
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

        String user = request.getParameter("f_user");
        String pass = request.getParameter("f_pass");
        String sign = request.getParameter("f_sign");

        if (sign.contains("sign_in")) {
            signIn(user, pass, response);

        } else if (sign.contains("sign_up")) {
            response.sendRedirect("registration.jsp");;
        } else if (sign.contains("registration")) {

            try {
                signUp(request, response);
                signSesion(request);

            } catch (SQLException ex) {
                Logger.getLogger(cLogin.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(cLogin.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    protected void signIn(String user, String pass, HttpServletResponse response) throws IOException {

        l.setPassword(pass);
        l.setUser(user);

        boolean flag = false;
//        try {
//            flag = l.UserValidation(l);   UNCOMMENT
            flag = true; //DISABLE USER VALIDATION

//        } catch (SQLException ex) {
//            Logger.getLogger(cLogin.class.getName()).log(Level.SEVERE, null, ex);
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(cLogin.class.getName()).log(Level.SEVERE, null, ex);
//        }

        if (!flag) {
            System.out.println("NO VALIDO");
            response.sendRedirect("login.jsp");
        } else {
            System.out.println("VALIDO");
            response.sendRedirect("home.jsp");
        }
    }

    protected void signSesion(HttpServletRequest request) {
        
        //VARIABLES EN SESION
        HttpSession sesionOK = request.getSession();
        sesionOK.setAttribute("iduser", sesionOK.getId());
        sesionOK.setAttribute("user", request.getParameter("f_user"));
        sesionOK.setAttribute("state", 1);
        sesionOK.setAttribute("ip", request.getRemoteAddr());
        /////////////////////
    }

    protected void signUp(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException, ClassNotFoundException {
        String user = request.getParameter("f_user");
        String pass = request.getParameter("f_pass");
        String name = request.getParameter("f_name");
        String lastname = request.getParameter("f_lastname");

        l.setPassword(pass);
        l.setUser(user);
        
        boolean flag = false;       
//        flag = l.UserValidation(l);  UNCOMMENT
        flag = false;

        if (flag) {
            System.out.println("USER ALREADY EXIST");
            response.sendRedirect("registration.jsp");
        } else {
            l.setLastname(lastname);
            l.setName(name);
            //int r = l.UserRegistration(l);  UNCOMMENT
//            System.out.println("Registration " + r);
            response.sendRedirect("login.jsp");
        }
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
