/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.House;
import entity.House_Category;
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
public class DAOHouse {

    public void insertHouse(int houseOwnerId, int categoryId, String price, int districtId, String address, String description, String title) {
        try {
            String stmSql = "insert into House(House_Owner_ID,Category_ID,Price,District_ID,Full_Address,Description,Rating,Added_Date,Title) values(?,?,?,?,?,?,?,?,?)";
            Date now = new Date();
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            String date = f.format(now);
            java.sql.Date date2 = java.sql.Date.valueOf(date);
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, houseOwnerId);
            ps.setInt(2, categoryId);
            ps.setString(3, price);
            ps.setInt(4, districtId);
            ps.setString(5, address);
            ps.setString(6, description);
            ps.setFloat(7, 0);
            ps.setDate(8, date2);
            ps.setString(9, title);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public List<House> getListHouse() {
        List<House> listHouse = new ArrayList<>();
        String sql = "SELECT * FROM House as a, House_Images as b, Districts as c, House_Details as d\n"
                + "WHERE a.Id = b.House_ID AND a.District_ID = c.Id AND a.Id = d.House_ID";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                House h = new House();
                h.setId(rs.getInt("ID"));
                h.setCategory_ID(rs.getInt("Category_ID"));
                h.setPrice(rs.getString("Price"));
                h.setFull_Adress(rs.getString("Full_Address"));
                h.setDescription(rs.getString("Description"));
                h.setRating(rs.getFloat("Rating"));
                h.setAdded_Date(rs.getDate("Added_Date"));
                h.setTitle(rs.getString("Title"));
                h.setDistrict(rs.getString("District"));
                h.setImage(rs.getString("Image"));
                h.setArea(rs.getInt("Area"));
                listHouse.add(h);
            }
            return listHouse;
        } catch (Exception e) {

        }
        return null;
    }

    public List<House> searchByCategoryIDPaging(int index, int categoryID) {
        List<House> listHouse = new ArrayList();
        String sql = "SELECT * FROM \n"
                + "(SELECT ROW_NUMBER() Over (Order by id asc) as r, [Id]\n"
                + "      ,[Category_ID]\n"
                + "      ,[Price]\n"
                + "      ,[District_ID]\n"
                + "      ,[Full_Address]\n"
                + "      ,[Description]\n"
                + "      ,[Rating]\n"
                + "      ,[Added_Date]\n"
                + "      ,[Title]\n"
                + "  FROM [SWP391_HouseRentalSystem].[dbo].[House]\n"
                + "  WHERE Category_ID = ?)as X\n"
                + "  WHERE r BETWEEN ?*6 - 5 AND ?*6";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryID);
            ps.setInt(2, index);
            ps.setInt(3, index);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                House h = new House();
                h.setId(rs.getInt("ID"));
                h.setCategory_ID(rs.getInt("Category_ID"));
                h.setPrice(rs.getString("Price"));
                h.setFull_Adress(rs.getString("Full_Address"));
                h.setDescription(rs.getString("Description"));
                h.setRating(rs.getFloat("Rating"));
                h.setAdded_Date(rs.getDate("Added_Date"));
                h.setTitle(rs.getString("Title"));
                listHouse.add(h);
            }
            return listHouse;
        } catch (Exception ex) {

        }
        return null;
    }

    public int totalByCategoryId(int cid) {
        String query = "SELECT COUNT (*) FROM [SWP391_HouseRentalSystem].[dbo].[House] WHERE Category_ID = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<House> searchByDistrictIdPaging(int index, int districtID) {
        List<House> listHouse = new ArrayList();
        String sql = "SELECT * FROM \n"
                + "(SELECT ROW_NUMBER() Over (Order by id asc) as r, [Id]\n"
                + "      ,[Category_ID]\n"
                + "      ,[Price]\n"
                + "      ,[District_ID]\n"
                + "      ,[Full_Address]\n"
                + "      ,[Description]\n"
                + "      ,[Rating]\n"
                + "      ,[Added_Date]\n"
                + "      ,[Title]\n"
                + "  FROM [SWP391_HouseRentalSystem].[dbo].[House]\n"
                + "  WHERE District_ID = ?)as X\n"
                + "  WHERE r BETWEEN ?*6 - 5 AND ?*6";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, districtID);
            ps.setInt(2, index);
            ps.setInt(3, index);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                House h = new House();
                h.setId(rs.getInt("ID"));
                h.setCategory_ID(rs.getInt("Category_ID"));
                h.setPrice(rs.getString("Price"));
                h.setFull_Adress(rs.getString("Full_Address"));
                h.setDescription(rs.getString("Description"));
                h.setRating(rs.getFloat("Rating"));
                h.setAdded_Date(rs.getDate("Added_Date"));
                h.setTitle(rs.getString("Title"));
                listHouse.add(h);
            }
            return listHouse;
        } catch (Exception ex) {

        }
        return null;
    }

    public int totalByDistrictId(int did) {
        String query = "SELECT COUNT (*) FROM [SWP391_HouseRentalSystem].[dbo].[House] WHERE District_ID = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, did);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<House> searchByAddressPaging(int index, String txt) {
        List<House> listHouse = new ArrayList();
        String sql = "SELECT * FROM \n"
                + "(SELECT ROW_NUMBER() Over (Order by id asc) as r, [Id]\n"
                + "      ,[Category_ID]\n"
                + "      ,[Price]\n"
                + "      ,[District_ID]\n"
                + "      ,[Full_Address]\n"
                + "      ,[Description]\n"
                + "      ,[Rating]\n"
                + "      ,[Added_Date]\n"
                + "      ,[Title]\n"
                + "  FROM [SWP391_HouseRentalSystem].[dbo].[House]\n"
                + "  WHERE Full_Address like ?)as X\n"
                + "  WHERE r BETWEEN ?*6 - 5 AND ?*6";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + txt + "%");
            ps.setInt(2, index);
            ps.setInt(3, index);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                House h = new House();
                h.setId(rs.getInt("ID"));
                h.setCategory_ID(rs.getInt("Category_ID"));
                h.setPrice(rs.getString("Price"));
                h.setFull_Adress(rs.getString("Full_Address"));
                h.setDescription(rs.getString("Description"));
                h.setRating(rs.getFloat("Rating"));
                h.setAdded_Date(rs.getDate("Added_Date"));
                h.setTitle(rs.getString("Title"));
                listHouse.add(h);
            }
            return listHouse;
        } catch (Exception ex) {

        }
        return null;
    }

    public int totalByAddress(String address) {
        String query = "SELECT COUNT (*) FROM [SWP391_HouseRentalSystem].[dbo].[House] WHERE Full_Address like ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, address);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<House> searchByPricePaging(int index, String price) {
        List<House> listHouse = new ArrayList();
        String sql = "SELECT * FROM \n"
                + "(SELECT ROW_NUMBER() Over (Order by id asc) as r, [Id]\n"
                + "      ,[Category_ID]\n"
                + "      ,[Price]\n"
                + "      ,[District_ID]\n"
                + "      ,[Full_Address]\n"
                + "      ,[Description]\n"
                + "      ,[Rating]\n"
                + "      ,[Added_Date]\n"
                + "      ,[Title]\n"
                + "  FROM [SWP391_HouseRentalSystem].[dbo].[House]\n"
                + "  WHERE Price like ?)as X\n"
                + "  WHERE r BETWEEN ?*6 - 5 AND ?*6";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + price + "%");
            ps.setInt(2, index);
            ps.setInt(3, index);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                House h = new House();
                h.setId(rs.getInt("ID"));
                h.setCategory_ID(rs.getInt("Category_ID"));
                h.setPrice(rs.getString("Price"));
                h.setFull_Adress(rs.getString("Full_Address"));
                h.setDescription(rs.getString("Description"));
                h.setRating(rs.getFloat("Rating"));
                h.setAdded_Date(rs.getDate("Added_Date"));
                listHouse.add(h);
            }
            return listHouse;
        } catch (Exception ex) {

        }
        return null;
    }

    public int totalByPrice(String price) {
        String query = "SELECT COUNT (*) FROM [SWP391_HouseRentalSystem].[dbo].[House] WHERE Price like ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, price);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public static void main(String[] args) {
        DAOHouse dao = new DAOHouse();
        List<House> house = dao.getListHouse();
        for (House h : house) {
            System.out.println(h);
        }
    }
}
