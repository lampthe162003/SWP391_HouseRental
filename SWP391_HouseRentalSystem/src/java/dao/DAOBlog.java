/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Blog;
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
public class DAOBlog {

    public void postBlog(int posterId, String topic, String content, String image) {
        try {
            String stmSql = "insert into Blog_Posts(Poster_ID,Post_Time,Topic,Content,Like_Count,[Image]) values(?,?,?,?,?,?)";
            Date now = new Date();
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            String date = f.format(now);
            java.sql.Date date2 = java.sql.Date.valueOf(date);
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, posterId);
            ps.setDate(2, date2);
            ps.setString(3, topic);
            ps.setString(4, content);
            ps.setInt(5, 0);
            ps.setString(6, image);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    //

    public int countBlog() {
        try {
            String stmSql = "select count(*) from Blog_Posts";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Have error in countBlog!");
        }
        return 0;
    }

    public List<Blog> getListBlog(int first, int last) {
        try {
            String stmSql = "select * from (select ROW_NUMBER() over (order by id asc) as r, * from Blog_Posts ) as x where r between ? and ?";
            List<Blog> lsB = new ArrayList<>();
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, first);
            ps.setInt(2, last);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt(2), rs.getInt(3), rs.getDate(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8));
                lsB.add(b);
            }
            return lsB;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public Blog getBlogFollowId(int id) {
        try {
            String stmSql = "select * from Blog_Posts where id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt(1), rs.getInt(2), rs.getDate(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getString(7));
                return b;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public void editBlog(int idB, int posterId, String topic, String content, String image){
        try {
            String stmSql = "update Blog_Posts set Poster_ID = ?, Post_Time = ?, Topic = ?, [Content] = ?,Image = ? where Id = ?";
            Date now = new Date();
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            String date = f.format(now);
            java.sql.Date date2 = java.sql.Date.valueOf(date);
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, posterId);
            ps.setDate(2, date2);
            ps.setString(3, topic);
            ps.setString(4, content);
            ps.setString(5, image);
            ps.setInt(6, idB);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    public void deleteCommentsBlog(int id){
        try {
            String stmSql = "delete from Post_Comments where Post_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    public void deleteBlog(int id){
        try {
            String stmSql = "delete from Blog_Posts where Id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
