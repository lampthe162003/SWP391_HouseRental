/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Districts;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class DAODistricts {
    public List<Districts> getListDistricts(){
        try {
            String stmSql = "select * from Districts";
            List<Districts> lsD = new ArrayList<>();
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ResultSet rs  = ps.executeQuery();
            while(rs.next()){
                Districts d = new Districts(rs.getInt(1), rs.getString(2));
                lsD.add(d);
            }
            return lsD;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
}
