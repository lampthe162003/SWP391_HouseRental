package controller.admin;


import dao.DAOAccount;
import entity.Account;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;


public class UpdateUserAdminController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String accountId = request.getParameter("Id");
        String password = request.getParameter("Password");
        String fullname = request.getParameter("Fullname");
        String role = request.getParameter("Role_ID");
        String email = request.getParameter("Email");
        String phone = request.getParameter("Phone_Number");
        String gender = request.getParameter("Gender");
        String address = request.getParameter("Address");
        String status = request.getParameter("Status");
        Account account = new Account();
        account.setId(Integer.parseInt(accountId));
        account.setEmail(email);
        account.setPassword(password);
        account.setFullname(fullname);
        account.setRole_ID(Integer.parseInt(role));
        if (gender.equals("1")) {
            account.setGender(true);
        } else {
            account.setGender(false);
        }
        account.setStatus(Integer.parseInt(status));
        account.setAddress(address);
        account.setPhone_Number(phone);
        DAOAccount daoAccount = new DAOAccount();
        daoAccount.updateAccount(account);
    }
}
