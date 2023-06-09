/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DAODistricts;
import dao.DAOHouse;
import entity.Districts;
import entity.House;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Trung Hieu
 */
public class Controller_SearchByDistrict extends HttpServlet {

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

        DAOHouse dao = new DAOHouse();
        DAODistricts daod = new DAODistricts();

        int districtsId = Integer.parseInt(request.getParameter("districts_id"));
        int index = Integer.parseInt(request.getParameter("index"));

        List<House> listHouse = dao.searchByDistrictIdPaging(index, districtsId);
        List<Districts> listd = daod.getListDistricts();

        int count = dao.totalByDistrictId(districtsId);
        int size = 6;
        int endPage = count / size;
        if (count % size != 0) {
            endPage++;
        }
        request.setAttribute("endPage", endPage);
        request.setAttribute("list_house", listHouse);
        request.setAttribute("list_districts", listd);
        request.setAttribute("districtsId", districtsId);
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
        DAODistricts daod = new DAODistricts();

        int districtsId = Integer.parseInt(request.getParameter("districts_id"));
        int index = Integer.parseInt(request.getParameter("index"));

        List<House> listHouse = dao.searchByDistrictIdPaging(index, districtsId);
        List<Districts> listd = daod.getListDistricts();

        int count = dao.totalByDistrictId(districtsId);
        int size = 6;
        int endPage = count / size;
        if (count % size != 0) {
            endPage++;
        }
        request.setAttribute("endPage", endPage);
        request.setAttribute("list_house", listHouse);
        request.setAttribute("list_districts", listd);
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
