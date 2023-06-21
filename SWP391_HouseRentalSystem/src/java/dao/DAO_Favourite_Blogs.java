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
public class DAO_Favourite_Blogs {
    public boolean checkExistFavouriteBlog(int blogId, int userId){
        try {
            String stmSql = "select * from Favourite_Blogs where BlogId = ? and UserID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, blogId);
            ps.setInt(2, userId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return false;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return true;
    }
    public void insertFavouriteBlog(int blogId, int userId){
        try {
            String stmSql = "insert into Favourite_Blogs(BlogId,UserID) values(?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, blogId);
            ps.setInt(2, userId);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    public void deleteFavouriteBlog(int blogId, int userId){
        try {
            String stmSql = "delete from Favourite_Blogs where BlogId = ? and UserID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, blogId);
            ps.setInt(2, userId);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
