/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author win
 */
public class DAOAccount extends DBContext {

   public Account Login(String email, String password) {
        String sql = "SELECT * FROM Account WHERE Email = ? and Password = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, email);
            pre.setString(2, password);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getBoolean(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getInt(11),
                        rs.getString(12));
            }
        } catch (Exception e) {
            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public Account getAccount(String email, String password) {
        try {
            String stmSql = "select * from Account where Email = ? and Password = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getBoolean(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getInt(10),
                        rs.getInt(11),
                        rs.getString(12));
                return a;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public ArrayList<Account> getAll() {
        ArrayList<Account> list = null;
        try {
            Connection connection = new DBContext().getConnection();
            connection.setAutoCommit(false);
            String sql = "select * from Account";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                if (list == null) {
                    list = new ArrayList();
                }
                Account account = new Account();
                account.setId(rs.getInt(1));
                account.setFullname(rs.getString(2));
                account.setGender(rs.getBoolean(3));
                account.setAddress(rs.getString(4));
                account.setEmail(rs.getString(5));
                account.setPassword(rs.getString(6));
                account.setPhone_Number(rs.getString(7));
                account.setRole_ID(rs.getInt(8));
                account.setStatus(rs.getInt(9));
                account.setSecure_Question_ID(rs.getInt(10));
                account.setSecure_Answer_ID(rs.getInt(11));
                account.setProfile_Picture(rs.getString(12));
                list.add(account);
            }
            connection.commit();
            rs.close();
            stm.close();
        } catch (Exception e) {
            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, e);
        }

        return list;
    }

    public void update(Account account) {
        try {
            conn.setAutoCommit(false);
            String sql = "UPDATE Account\n"
                    + "SET Fullname = ?,\n"
                    + "[Password] = ?,\n"
                    + "Role_ID = ?,\n"
                    + "Email = ?,\n"
                    + "Phone_Number = ?,\n"
                    + "Gender = ?,\n"
                    + "[Address] = ?,\n"
                    + "[Status] = ?";
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        DAOAccount dao = new DAOAccount();
        Account acc = dao.Login("TrungHieu@gmail.com", "123");
        System.out.println(acc);
    }
    ////test

}
