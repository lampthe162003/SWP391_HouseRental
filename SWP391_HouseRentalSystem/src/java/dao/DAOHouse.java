/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.House;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hayashi
 */
public class DAOHouse {

    public void insert(House house) {
        try {
            Connection connection = new DBContext().getConnection();
            String sql = "INSERT INTO House([Id]\n"
                    + "      ,[House_Owner_ID]\n"
                    + "      ,[Category_ID]\n"
                    + "      ,[Price]\n"
                    + "      ,[District_ID]\n"
                    + "      ,[Full_Address]\n"
                    + "      ,[Description]\n"
                    + "      ,[Rating]\n"
                    + "      ,[Added_Date])"
                    + "VALUES"
                    + "(?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, house.getId());
            stm.setInt(2, house.getHouse_Owener_ID());
            stm.setInt(3, house.getCategory_ID());
            stm.setString(4, house.getPrice());
            stm.setInt(5, house.getDistrict_ID());
            stm.setString(6, house.getFull_Adress());
            stm.setString(7, house.getText());
            stm.setFloat(8, house.getRating());
            stm.setDate(9, house.getAdded_Date());
            stm.executeUpdate();
            connection.commit();
        } catch (Exception ex) {
            Logger.getLogger(DAOHouse.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void update(House house) {
        try {
            Connection connection = new DBContext().getConnection();
            String sql = "UPDATE House\n"
                    + "SET Category_ID = ?,\n"
                    + "	Price = ?,\n"
                    + "	District_ID = ?,\n"
                    + "	Full_Address = ?,\n"
                    + "	[Description] = ?\n"
                    + "WHERE [Id] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, house.getCategory_ID());
            stm.setString(2, house.getPrice());
            stm.setInt(3, house.getDistrict_ID());
            stm.setString(4, house.getFull_Adress());
            stm.setString(5, house.getText());
            stm.setInt(6, house.getId());
            stm.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOHouse.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public House get(House house) {
        House getHouse = null;
        try {
            Connection connection = new DBContext().getConnection();
            String sql = "SELECT * from House\n"
                    + "where Id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                if (getHouse == null) {
                    getHouse = new House();
                }
                getHouse.setId(rs.getInt(1));
                getHouse.setHouse_Owener_ID(rs.getInt(2));
                getHouse.setCategory_ID(rs.getInt(3));
                getHouse.setPrice(rs.getString(4));
                getHouse.setDistrict_ID(rs.getInt(5));
                getHouse.setFull_Adress(rs.getString(6));
                getHouse.setText(rs.getString(7));
                getHouse.setRating(rs.getFloat(8));
                getHouse.setAdded_Date(rs.getDate(9));
            }
        } catch (Exception ex) {
            Logger.getLogger(DAOHouse.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return getHouse;
    }
    
    public void delete(House house) {
        try {
            Connection connection = new DBContext().getConnection();
            String sql = "DELETE from House WHERE [Id] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, house.getId());
            stm.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DAOHouse.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
