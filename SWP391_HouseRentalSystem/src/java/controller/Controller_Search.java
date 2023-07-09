/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DAOCategory;
import dao.DAODistricts;
import dao.DAOHouse;
import entity.Districts;
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
public class Controller_Search extends HttpServlet {

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
        request.getSession().setAttribute("searchSession", 2);
        DAOHouse daoh = new DAOHouse();
        DAOCategory daoc = new DAOCategory();
        DAODistricts daod = new DAODistricts();

        int categoty_id = Integer.parseInt(request.getParameter("category_id"));
        int district_id = Integer.parseInt(request.getParameter("district_id"));
        int index = 0;

        List<House> listh = daoh.searchHouse(categoty_id, district_id, index);
        List<House_Category> listc = daoc.getListCategory();
        List<Districts> litsd = daod.getListDistricts();

        int count = daoh.totalSearchHouse(categoty_id, district_id);
        int size = 3;
        int endPage = count / size;
        if (count % size != 0) {
            endPage++;
        }
        request.setAttribute("endPage", endPage);
        request.setAttribute("categoty_id", categoty_id);
        request.setAttribute("district_id", district_id);
        request.setAttribute("list_house", listh);
        request.setAttribute("list_category", listc);
        request.setAttribute("list_districts", litsd);
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
        processRequest(request, response);

        request.getSession().setAttribute("searchSession", 2);
        DAOHouse daoh = new DAOHouse();

        int categoty_id = Integer.parseInt(request.getParameter("category_id"));
        int district_id = Integer.parseInt(request.getParameter("district_id"));

        int index = Integer.parseInt(request.getParameter("index"));

        List<House> listh = daoh.searchHouse(categoty_id, district_id, index);

        int count = daoh.totalSearchHouse(categoty_id, district_id);
        int size = 3;
        int endPage = count / size;
        if (count % size != 0) {
            endPage++;
        }
        request.setAttribute("endPage", endPage);
        request.setAttribute("categoty_id", categoty_id);
        request.setAttribute("district_id", district_id);
        request.setAttribute("list_house", listh);
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
