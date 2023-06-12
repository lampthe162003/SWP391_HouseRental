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
public class Controller_Home extends HttpServlet {

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

        request.getSession().setAttribute("searchSession", 1);
        DAOCategory daoc = new DAOCategory();
        DAODistricts daod = new DAODistricts();
        DAOHouse daoh = new DAOHouse();

        int index = 1;

        List<House> listh = daoh.getListHouse(index);
        List<House_Category> listc = daoc.getListCategory();
        List<Districts> litsd = daod.getListDistricts();

        int count = daoh.totalHouse();
        int size = 3;
        int endPage = count / size;
        if (count % size != 0) {
            endPage++;
        }

        request.setAttribute("endPage", endPage);
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
