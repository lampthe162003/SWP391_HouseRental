/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Comment_Blog;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class DAOComment {
    public void addComment(int postId, int commenterId, String content){
        try {
            String stmSql = "insert into Post_Comments(Post_ID,Commenter_ID,Comment_Date,Content) values (?,?,?,?)";
            Date now = new Date();
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            String date = f.format(now);
            java.sql.Date date2 = java.sql.Date.valueOf(date);
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, postId);
            ps.setInt(2, commenterId);
            ps.setDate(3, date2);
            ps.setString(4, content);
            ps.executeQuery();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    public List<Comment_Blog> getListComment(int postId){
        try {
            List<Comment_Blog> lsC = new ArrayList<>();
            String stmSql = "select a.Fullname,a.Profile_Picture,pc.Comment_Date,pc.Content,pc.Id,pc.Commenter_ID from Account as a inner join Post_Comments as pc on a.Id = pc.Commenter_ID where pc.Post_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, postId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Comment_Blog cb = new Comment_Blog(rs.getString(1), rs.getString(2), rs.getDate(3), rs.getString(4),rs.getInt(5),rs.getInt(6));
                lsC.add(cb);
            }
            return lsC;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
    public void deleteCommentBlog(int id){
        try {
            String stmSql = "delete from Post_Comments where Id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
