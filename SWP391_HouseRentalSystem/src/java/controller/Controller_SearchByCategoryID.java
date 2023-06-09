    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DAOCategory;
import dao.DAOHouse;
import entity.House;
import entity.House_Category;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Trung Hieu
 */
public class Controller_SearchByCategoryID extends HttpServlet {

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

//        DAOHouse dao = new DAOHouse();
        DAOCategory daoc = new DAOCategory();

        int categoryId = Integer.parseInt(request.getParameter("category_id"));
//        int index = Integer.parseInt(request.getParameter("index"));

//        List<House> listHouse = dao.searchByCategoryIDPaging(index, categoryId);
        List<House_Category> listc = daoc.getListCategory();

//        int count = dao.totalByCategoryId(categoryId);
//        int size = 6;
//        int endPage = count / size;
//        if (count % size != 0) {
//            endPage++;
//        }
//        request.setAttribute("endPage", endPage);
//        request.setAttribute("list_house", listHouse);
        request.setAttribute("list_category", listc);
        request.setAttribute("categoryId", categoryId);
        request.getRequestDispatcher("home1.jsp").forward(request, response);
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
        
        DAOHouse dao = new DAOHouse();
        DAOCategory daoc = new DAOCategory();

        int categoryId = Integer.parseInt(request.getParameter("category_id"));
        int index = Integer.parseInt(request.getParameter("index"));

        List<House> listHouse = dao.searchByCategoryIDPaging(index, categoryId);
        List<House_Category> listc = daoc.getListCategory();

        int count = dao.totalByCategoryId(categoryId);
        int size = 6;
        int endPage = count / size;
        if (count % size != 0) {
            endPage++;
        }
        request.setAttribute("endPage", endPage);
        request.setAttribute("list_house", listHouse);
        request.setAttribute("list_category", listc);
        request.getRequestDispatcher("home1.jsp").forward(request, response);
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
