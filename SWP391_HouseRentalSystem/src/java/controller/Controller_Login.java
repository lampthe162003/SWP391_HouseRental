/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DAOAccount;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
public class Controller_Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
            String id = request.getParameter("id");
            if(id!=null){
                DAOAccount a = new DAOAccount();
                a.openAccount(Integer.parseInt(id));
            }
            response.sendRedirect("login.jsp");
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
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        DAOAccount dao = new DAOAccount();
        Account acc = dao.Login(email, password);
        if (acc == null) {
            request.setAttribute("errorMess", "Incorrect account or password!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            if (acc.getStatus() == 1) {
                HttpSession session = request.getSession();
                session.setAttribute("acc", acc);
                response.sendRedirect("home");
            } else {
                request.setAttribute("errorMess", "You need to verify your account via email!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }
            HttpSession session = request.getSession();
            session.setAttribute("acc", acc);
            
            if (acc.getRole_ID() != 1) {
                response.sendRedirect("home");
            }
            else {
                response.sendRedirect("admin-home");
            }
        }
    }
}
/**
 * Returns a short description of the servlet.
 *
 * @return a String containing servlet description
 */
