/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Messages;
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
public class DAOMessages {
    public void insertMessages(int senderId, int receiverId, String inbox){
        try {
            String stmSql = "insert into Messages(Sender_ID,Receiver_ID,Sent_Date,Content,Status,Deleted_By_Sender,Deleted_By_Receiver) values(?,?,?,?,?,?,?)";
            Date now = new Date();
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            String date1 = f.format(now);
            java.sql.Date date2 = java.sql.Date.valueOf(date1);
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, senderId);
            ps.setInt(2, receiverId);
            ps.setDate(3, date2);
            ps.setString(4, inbox);
            ps.setBoolean(5, false);
            ps.setBoolean(6, false);
            ps.setBoolean(7, false);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    public List<Messages> getListMessages(int senderId, int receiverId){
        try {
            String stmSql = "select * from Messages where (Sender_ID = ? and Receiver_ID = ?) or (Sender_ID = ? and Receiver_ID = ?)";
            List<Messages> lsM = new ArrayList<>();
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, senderId);
            ps.setInt(4, senderId);
            ps.setInt(2, receiverId);
            ps.setInt(3, receiverId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Messages m = new Messages(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDate(4), rs.getString(5), rs.getBoolean(6), rs.getBoolean(7),rs.getBoolean(8));
                lsM.add(m);
            }
            return lsM;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
}
