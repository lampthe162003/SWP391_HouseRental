/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.DBConnect;

/**
 *
 * @author win
 */
public class DAOAccount extends DBConnect {

//    public int addAccount(Account acc) {
//        int n = 0;
//        String sql = "INSERT INTO [dbo].[Account]\n"
//                + "           ([Fullname]\n"
//                + "           ,[Gender]\n"
//                + "           ,[Address]\n"
//                + "           ,[Email]\n"
//                + "           ,[Password]\n"
//                + "           ,[Phone_Number]\n"
//                + "           ,[Role_ID]\n"
//                + "           ,[Status])\n"
//                + "           ,[Secure_Question_ID])\n"
//                + "           ,[Secure_Answer_ID])\n"
//                + "           ,[Profile_Picture])\n"
//                + "     VALUES(?,?,?,?,?,?,?,?,?,?,?)";
//        try {
//            PreparedStatement pre = conn.prepareStatement(sql);
//            // set parameter ?
//            pre.setString(1, acc.getFullname());
//            pre.setBoolean(2, acc.isGender());
//            pre.setString(3, acc.getAddress());
//            pre.setString(4, acc.getEmail());
//            pre.setString(5, acc.getPassword());
//            pre.setString(6, acc.getPhone_Number());
//            pre.setInt(7, acc.getRole_ID());
//            pre.setInt(8, acc.getStatus());
//            pre.setInt(9, acc.getSecure_Question_ID());
//            pre.setInt(10, acc.getSecure_Answer_ID());
//            pre.setString(11, acc.getProfile_Picture());
//            // run
//            n = pre.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return n;
//    }

//    public int updateAccount(Account acc) {
//        int n = 0;
//        String sql = "UPDATE [dbo].[Account]\n"
//                + "   SET [Fullname] = ?\n"
//                + "      ,[Gender] = ?\n"
//                + "      ,[Address] = ?\n"
//                + "      ,[Password] = ?\n"
//                + "      ,[Phone_Number] = ?\n"
//                + "      ,[Role_ID] = ?\n"
//                + "      ,[Status] = ?\n"
//                + "      ,[Secure_Question_ID] = ?\n"
//                + "      ,[Secure_Answer_ID] = ?\n"
//                + "      ,[Profile_Picture] = ?\n"
//                + " WHERE [Email] = ?";
//
//        try {
//            PreparedStatement pre = conn.prepareStatement(sql);
//            pre.setString(1, acc.getFullname());
//            pre.setBoolean(2, acc.isGender());
//            pre.setString(3, acc.getAddress());
//            pre.setString(4, acc.getEmail());
//            pre.setString(5, acc.getPassword());
//            pre.setString(6, acc.getPhone_Number());
//            pre.setInt(7, acc.getRole_ID());
//            pre.setInt(8, acc.getStatus());
//            pre.setInt(9, acc.getSecure_Question_ID());
//            pre.setInt(10, acc.getSecure_Answer_ID());
//            pre.setString(11, acc.getProfile_Picture());
//            // RUN
//            n = pre.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return n;
//    }

    public Vector<Account> getAll() {
        Vector<Account> vector = new Vector<Account>();
        String sql = "select * from Account";
        ResultSet rs = this.getData(sql);
        try {
            while (rs.next()) {
                String Fullname = rs.getString(1);
                Boolean Gender = rs.getBoolean(2);
                String Address = rs.getString(3);
                String Email = rs.getString(4);
                String Password = rs.getString(5);
                String Phone_Number = rs.getString(6);
                int Role_ID = rs.getInt(7);
                int Status = rs.getInt(8);
                int Secure_Question_ID = rs.getInt(9);
                int Secure_Answer_ID = rs.getInt(10);
                String Profile_Picture = rs.getString(11);
                // create object
                Account acc = new Account(Role_ID, Fullname, Address, Email, Password, Phone_Number, true, Role_ID,
                        Status, Secure_Question_ID, Secure_Answer_ID, Profile_Picture);
                vector.add(acc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }

    public Vector<Account> getAll(String sql) {
        Vector<Account> vector = new Vector<Account>();
        // String sql = "select * from Account";
        ResultSet rs = this.getData(sql);
        try {
            while (rs.next()) {
                String Fullname = rs.getString(1);
                Boolean Gender = rs.getBoolean(2);
                String Address = rs.getString(3);
                String Email = rs.getString(4);
                String Password = rs.getString(5);
                String Phone_Number = rs.getString(6);
                int Role_ID = rs.getInt(7);
                int Status = rs.getInt(8);
                int Secure_Question_ID = rs.getInt(9);
                int Secure_Answer_ID = rs.getInt(10);
                String Profile_Picture = rs.getString(11);
                // create object
                Account acc = new Account(Role_ID, Fullname, Address, Email, Password, Phone_Number, true, Role_ID,
                        Status, Secure_Question_ID, Secure_Answer_ID, Profile_Picture);
                vector.add(acc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }

    public int removeAccount(int email) {
        int n = 0;
        String sql = "delete from Account where Email=" + email;
        try {
            Statement state = conn.createStatement();
            ResultSet rs1 = this.getData("select * from Account where Email=" + email);
            if (rs1.next()) {
                n = -1;
            } else {
                n = state.executeUpdate(sql);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;
    }

    public Account Login(String email, String password) {
        String sql = "SELECT * FROM Account WHERE Email = ? and Password = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, email);
            pre.setString(2, password);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7),
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

    public void signup(String fullname, int gender, String adress, String email, String password, String phonenumbers, int roleid, int status, int squestion, int aquestion, String img) {
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([Fullname]\n"
                + "           ,[Gender]\n"
                + "           ,[Address]\n"
                + "           ,[Email]\n"
                + "           ,[Password]\n"
                + "           ,[Phone_Number]\n"
                + "           ,[Role_ID]\n"
                + "           ,[Status]\n"
                + "           ,[Secure_Question_ID]\n"
                + "           ,[Secure_Answer_ID]\n"
                + "           ,[Profile_Picture])\n"
                + "     VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, fullname);
            ps.setInt(2, gender);
            ps.setString(3, adress);
            ps.setString(4, email);
            ps.setString(5, password);
            ps.setString(6, phonenumbers);
            ps.setInt(7, roleid);
            ps.setInt(8, status);
            ps.setInt(9, squestion);
            ps.setInt(10, aquestion);
            ps.setString(11, img);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        DAOAccount dao = new DAOAccount();
        dao.signup("Thang", 1, "Ha Noi", "thang@gmail.com", "abc123", "9999999999", 1, 1, 1, 1, "NULL");
        
    }
    ////test
}
