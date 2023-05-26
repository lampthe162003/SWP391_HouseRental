/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author ADMIN
 */
public class DAOChange {
    public void changePassword(String email, String password){
        try {
                String stmSql = "update Account set Password = ? where Email = ?";
                Connection conn = new DBContext().getConnection();
                PreparedStatement ps = conn.prepareStatement(stmSql);
                ps.setString(1, email);
                ps.setString(2, password);
                ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
