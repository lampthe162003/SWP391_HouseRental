/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Districts;
import entity.House_Directions;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class DAODirections {

    public List<House_Directions> getListDirections() {
        try {
            String stmSql = "select * from House_Directions";
            List<House_Directions> lsDR = new ArrayList<>();
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                House_Directions d = new House_Directions(rs.getInt(1), rs.getString(2));
                lsDR.add(d);
            }
            return lsDR;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
}
