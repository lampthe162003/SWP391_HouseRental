/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DAOAnswer;
import dao.DAOChange;
import dao.DAOCheck;
import dao.DAOQuestion;
import entity.Answer;
import entity.Question;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/**
 *
 * @author ADMIN
 */
public class Controller_Forgot_Password extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controller_Forgot_Password</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controller_Forgot_Password at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        DAOQuestion dQ = new DAOQuestion();
        List<Question> lsQF = dQ.getListQuestion();
        request.setAttribute("lsQF", lsQF);
        request.setAttribute("ha", "Hello");
        request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
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
        String email, newPass, confirmPass, forgot;
        int idQ, idA;
        forgot = request.getParameter("forgot");
        email = request.getParameter("email");
        newPass = request.getParameter("newPass");
        confirmPass = request.getParameter("confirmPass");
        idQ = Integer.parseInt(request.getParameter("question"));
        DAOAnswer a = new DAOAnswer();
        DAOQuestion q = new DAOQuestion();
        DAOCheck check = new DAOCheck();
        DAOChange change = new DAOChange();
        List<Question> lsQF = new ArrayList<>();
        List<Answer> lsA = new ArrayList<>();
        lsQF = q.getListQuestion();
        request.setAttribute("lsQF", lsQF);
        if (forgot == null) {
            lsQF = q.getListQuestion();
            lsA = a.getListAnswer(idQ);
            request.setAttribute("email", email);
            request.setAttribute("newPass", newPass);
            request.setAttribute("confirmPass", confirmPass);
            request.setAttribute("idQ", idQ);
            request.setAttribute("lsQ", lsQF);
            request.setAttribute("lsA", lsA);
            request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
        } else {
            Pattern e = Pattern.compile("^[a-zA-Z][a-zA-Z0-9]+@[a-zA-Z]+(\\.[a-zA-Z]+){1,2}$");
            idA = Integer.parseInt(request.getParameter("answer"));
            if (check.checkEmail(email)&&e.matcher(email).find()) {
                if (!newPass.equals(confirmPass)) {
                    request.setAttribute("alertP", "The entered passwords do not match. Try again!");
                    request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
                } else {
                    if (check.checkSecure(email, idQ, idA)) {
                        change.changePassword(email, newPass);
                        response.sendRedirect("login");
                    } else {
                        request.setAttribute("alertS", "The security answer is not correct!");
                        request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
                    }
                }
            } else {
                request.setAttribute("errorE", "Email does not exist or invalid!");
                request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
            }
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
