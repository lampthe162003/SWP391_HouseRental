/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.DAOBlog;
import entity.Account;
<<<<<<< HEAD
=======
<<<<<<<< HEAD:SWP391_HouseRentalSystem/src/java/controller/Controller_Detail_Blog.java
import entity.Blog;
========
>>>>>>>> 0b685f84d3fcf180c8c1322eaf3ddfeb23f26af6:SWP391_HouseRentalSystem/src/java/controller/Controller_Post_Blog.java
>>>>>>> 0b685f84d3fcf180c8c1322eaf3ddfeb23f26af6
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
<<<<<<< HEAD
import java.sql.Date;
=======
<<<<<<<< HEAD:SWP391_HouseRentalSystem/src/java/controller/Controller_Detail_Blog.java
========
import java.sql.Date;
>>>>>>>> 0b685f84d3fcf180c8c1322eaf3ddfeb23f26af6:SWP391_HouseRentalSystem/src/java/controller/Controller_Post_Blog.java
>>>>>>> 0b685f84d3fcf180c8c1322eaf3ddfeb23f26af6

/**
 *
 * @author ADMIN
 */
<<<<<<< HEAD
public class Controller_Post_Blog extends HttpServlet {
=======
<<<<<<<< HEAD:SWP391_HouseRentalSystem/src/java/controller/Controller_Detail_Blog.java
public class Controller_Detail_Blog extends HttpServlet {
========
public class Controller_Post_Blog extends HttpServlet {
>>>>>>>> 0b685f84d3fcf180c8c1322eaf3ddfeb23f26af6:SWP391_HouseRentalSystem/src/java/controller/Controller_Post_Blog.java
>>>>>>> 0b685f84d3fcf180c8c1322eaf3ddfeb23f26af6
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
<<<<<<< HEAD
=======
<<<<<<<< HEAD:SWP391_HouseRentalSystem/src/java/controller/Controller_Detail_Blog.java
            out.println("<title>Servlet Controller_Detail_Blog</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controller_Detail_Blog at " + request.getContextPath () + "</h1>");
========
>>>>>>> 0b685f84d3fcf180c8c1322eaf3ddfeb23f26af6
            out.println("<title>Servlet Controller_Post_Blog</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controller_Post_Blog at " + request.getContextPath () + "</h1>");
<<<<<<< HEAD
=======
>>>>>>>> 0b685f84d3fcf180c8c1322eaf3ddfeb23f26af6:SWP391_HouseRentalSystem/src/java/controller/Controller_Post_Blog.java
>>>>>>> 0b685f84d3fcf180c8c1322eaf3ddfeb23f26af6
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
<<<<<<< HEAD
        request.getRequestDispatcher("postblog.jsp").include(request, response);
=======
<<<<<<<< HEAD:SWP391_HouseRentalSystem/src/java/controller/Controller_Detail_Blog.java
        int idBlog = Integer.parseInt(request.getParameter("id"));
        DAOBlog blog = new DAOBlog();
        Blog b = blog.getBlogFollowId(idBlog);
        request.setAttribute("b", b);
        request.getRequestDispatcher("detailblog.jsp").forward(request, response);
========
        processRequest(request, response);
>>>>>>>> 0b685f84d3fcf180c8c1322eaf3ddfeb23f26af6:SWP391_HouseRentalSystem/src/java/controller/Controller_Post_Blog.java
>>>>>>> 0b685f84d3fcf180c8c1322eaf3ddfeb23f26af6
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account a = (Account)session.getAttribute("acc");
        String title, image, content;
        int posterId = a.getId();
        title = request.getParameter("title");
        image = request.getParameter("imageblog");
        content = request.getParameter("content");
        DAOBlog blog = new DAOBlog();
        blog.postBlog(posterId, title, content, image);
<<<<<<< HEAD
        response.sendRedirect("listblog");
=======
        System.out.println("Success Post Blog!");
>>>>>>> 0b685f84d3fcf180c8c1322eaf3ddfeb23f26af6
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
<<<<<<< HEAD
    }// </editor-fold>

=======
    }// </editor-fold> edit 2
//hehehe
>>>>>>> 0b685f84d3fcf180c8c1322eaf3ddfeb23f26af6
}
