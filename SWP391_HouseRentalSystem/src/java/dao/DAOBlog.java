/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author ADMIN
 */
public class DAOBlog {
    public void postBlog(int posterId, String topic, String content, String image){
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
}
