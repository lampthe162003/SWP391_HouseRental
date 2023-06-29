/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.admin;

import dao.DAOAccount;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Controller_Admin_Update_User extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        int id = Integer.parseInt(request.getParameter("Id"));
        String fullname = request.getParameter("Fullname");
        String email = request.getParameter("Email");
        String password = request.getParameter("Password");
        int roleId = Integer.parseInt(request.getParameter("Role"));
        boolean gender = request.getParameter("Gender").equals("1");
        String phoneNumber = request.getParameter("Phone_Number");
        int status = Integer.parseInt(request.getParameter("Status"));
        
        Account account = new Account();
        account.setId(id);
        account.setFullname(fullname);
        account.setEmail(email);
        account.setPassword(password);
        account.setRoleID(roleId);
        account.setGender(gender);
        account.setPhoneNumber(phoneNumber);
        account.setStatus(status);
        
        DAOAccount daoAcc = new DAOAccount();
        daoAcc.updateAccount(account);
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
