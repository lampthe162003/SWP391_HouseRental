/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ADMIN
 */
public class DAO_Favourite_House {
    public void insertFavouriteHouse(int houseId, int userId){
        try {
            String stmSql = "insert into Favourite_House(User_ID,House_ID) values(?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, userId);
            ps.setInt(2, houseId);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    public boolean checkExistFavouriteHouse(int houseId, int userId){
        try {
            String stmSql = "select * from Favourite_House where User_ID = ? and House_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, userId);
            ps.setInt(2, houseId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }
    public void deleteFavouriteHouse(int houseId, int userId){
        try {
            String stmSql = "delete from Favourite_House where User_ID = ? and House_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, userId);
            ps.setInt(2, houseId);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
