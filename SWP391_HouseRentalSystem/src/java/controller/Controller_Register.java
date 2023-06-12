/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DAOAnswer;
import dao.DAOCheck;
import dao.DAOQuestion;
import dao.DAORole;
import entity.Answer;
import entity.Question;
import entity.Role;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.regex.Pattern;

/**
 *
 * @author ADMIN
 */
public class Controller_Register extends HttpServlet {

    public static int i = 0;

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
            out.println("<title>Servlet Controller_Register</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controller_Register at " + request.getContextPath() + "</h1>");
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
        DAORole dR = new DAORole();
        List<Question> lsQ = dQ.getListQuestion();
        List<Role> lsR = dR.getListRole();
        request.setAttribute("lsR", lsR);
        request.setAttribute("lsQ", lsQ);
        request.getRequestDispatcher("registration.jsp").forward(request, response);
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
        String submit = request.getParameter("signup");
        DAOQuestion dQ = new DAOQuestion();
        List<Question> lsQ = dQ.getListQuestion();
        if (submit == null) {
            String email, password, repassword, fullname, phone, address, picture, gender;
            int idQ, answerId, roleId;
            email = request.getParameter("email");
            password = request.getParameter("pass");
            repassword = request.getParameter("repass");
            fullname = request.getParameter("fullname");
            gender = request.getParameter("gender");
            phone = request.getParameter("phonenumber");
            address = request.getParameter("adress");
            picture = request.getParameter("file");
            if (request.getParameter("role") != null) {
                roleId = Integer.parseInt(request.getParameter("role"));
                request.setAttribute("roleId", roleId);
            }
            idQ = Integer.parseInt(request.getParameter("question"));
            DAOAnswer dA = new DAOAnswer();
            DAORole dR = new DAORole();
            List<Role> lsR = dR.getListRole();
            List<Answer> lsA = dA.getListAnswer(idQ);
            request.setAttribute("lsR", lsR);
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            request.setAttribute("repassword", repassword);
            request.setAttribute("fullname", fullname);
            request.setAttribute("phone", phone);
            request.setAttribute("address", address);
            request.setAttribute("gender", gender);
            request.setAttribute("picture", picture);
            request.setAttribute("idQ", idQ);
            request.setAttribute("lsQ", lsQ);
            request.setAttribute("lsA", lsA);
            request.getRequestDispatcher("registration.jsp").forward(request, response);
        } else {
            String email, password, repassword, fullname, phone, address, picture;
            int questionId, answerId, roleId;
            Boolean gender;
            lsQ = dQ.getListQuestion();
            request.setAttribute("lsQ", lsQ);
            request.setAttribute("errorE", "Email invalid!");
            email = request.getParameter("email");
            password = request.getParameter("pass");
            repassword = request.getParameter("repass");
            fullname = request.getParameter("fullname");
            gender = request.getParameter("gender").equals("1");
            roleId = Integer.parseInt(request.getParameter("role"));
            phone = request.getParameter("phonenumber");
            address = request.getParameter("adress");
            picture = request.getParameter("file");
            questionId = Integer.parseInt(request.getParameter("question"));
            answerId = Integer.parseInt(request.getParameter("answer"));
            Pattern e = Pattern.compile("^[a-zA-Z][a-zA-Z0-9]+@[a-zA-Z]+(\\.[a-zA-Z]+){1,2}$");
            DAOCheck check = new DAOCheck();
            if (e.matcher(email).find()) {
                if (check.checkEmail(email)) {
                    request.setAttribute("alertE", "Email already exists!");
                    request.getRequestDispatcher("registration.jsp").forward(request, response);
                } else {
                    if (!password.equals(repassword)) {
                        request.setAttribute("alertP", "The entered passwords do not match. Try again!");
                        request.getRequestDispatcher("registration.jsp").forward(request, response);
                    } else {
                        Pattern f = Pattern.compile("^[a-zA-Z\\s]+$");
                        if (f.matcher(fullname).find()) {
                            check.addAccount(fullname, gender, address, email, password, phone, roleId, questionId, answerId, picture);
                            response.sendRedirect("Login.jsp");
                        } else {
                            request.setAttribute("alertF", "Full name must start with letter!");
                            request.getRequestDispatcher("registration.jsp").forward(request, response);
                        }
                    }
                }
            } else {
                request.setAttribute("alertE", "Email invalid!");
                request.getRequestDispatcher("registration.jsp").forward(request, response);
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
