package controller.admin;

import dao.DAOAccount;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteUserAdminController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("Id"));
        DAOAccount accountdb = new DAOAccount();
        accountdb.deleteAccount(id);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("./view/admin/admin-home.jsp").forward(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAOAccount accountdb = new DAOAccount();
        int id = Integer.parseInt(request.getParameter("Id"));
        accountdb.deleteAccount(id);
        request.getRequestDispatcher("./view/admin/admin-list-account.jsp").forward(request, response);
    }
}
