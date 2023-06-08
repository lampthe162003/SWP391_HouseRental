/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.House_Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class DAOCategory {
    public List<House_Category> getListCategory(){
        try {
            String stmSql = "select * from House_Category";
            List<House_Category> lsC = new ArrayList<>();
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ResultSet rs  = ps.executeQuery();
            while(rs.next()){
                House_Category c = new House_Category(rs.getInt(1), rs.getString(2));
                lsC.add(c);
            }
            return lsC;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
    public static void main(String[] args) {
        DAOCategory dao = new DAOCategory();
        List<House_Category> list = dao.getListCategory();
        for (House_Category house_Category : list) {
            System.out.println(house_Category);
        }
    }
}
