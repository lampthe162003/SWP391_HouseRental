
package dao;

import context.DBContext;
import entity.House;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

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

    public int getHouseId() {
        try {
            String stmSql = "select top(1) Id from House order by Id desc";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return 0;
    }

    public void insertHouseDetail(int houseId, int nBedroom, int nBathroom, int area, int nPool, int houseDirectionId) {
        try {
            String stmSql = "insert into House_Details(House_ID,Number_Of_Bedrooms,Number_Of_Bathrooms,Area,Pool,House_Direction_ID) values (?,?,?,?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, houseId);
            ps.setInt(2, nBedroom);
            ps.setInt(3, nBathroom);
            ps.setInt(4, area);
            ps.setInt(5, nPool);
            ps.setInt(6, houseDirectionId);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void insertImages(int houseId, String image) {
        try {
            String stmSql = "insert into House_Images(House_ID,Image) values (?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, houseId);
            ps.setString(2, image);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

//    public void insert(House house) {
//        try {
//            Connection connection = new DBContext().getConnection();
//            String sql = "INSERT INTO House([Id]\n"
//                    + "      ,[House_Owner_ID]\n"
//                    + "      ,[Category_ID]\n"
//                    + "      ,[Price]\n"
//                    + "      ,[District_ID]\n"
//                    + "      ,[Full_Address]\n"
//                    + "      ,[Description]\n"
//                    + "      ,[Rating]\n"
//                    + "      ,[Added_Date])"
//                    + "VALUES"
//                    + "(?, ?, ?, ?, ?, ?, ?, ?, ?)";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setInt(1, house.getId());
//            stm.setInt(2, house.getHouse_Owener_ID());
//            stm.setInt(3, house.getCategory_ID());
//            stm.setString(4, house.getPrice());
//            stm.setInt(5, house.getDistrict_ID());
//            stm.setString(6, house.getFull_Adress());
//            stm.setString(7, house.getDescription());
//            stm.setFloat(8, house.getRating());
//            stm.setDate(9, house.getAdded_Date());
//            stm.executeUpdate();
//            connection.commit();
//        } catch (Exception ex) {
//            Logger.getLogger(DAOHouse.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//
//    public void update(House house) {
//        try {
//            Connection connection = new DBContext().getConnection();
//            String sql = "UPDATE House\n"
//                    + "SET Category_ID = ?,\n"
//                    + "	Price = ?,\n"
//                    + "	District_ID = ?,\n"
//                    + "	Full_Address = ?,\n"
//                    + "	[Description] = ?\n"
//                    + "WHERE [Id] = ?";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setInt(1, house.getCategory_ID());
//            stm.setString(2, house.getPrice());
//            stm.setInt(3, house.getDistrict_ID());
//            stm.setString(4, house.getFull_Adress());
//            stm.setString(5, house.getDescription());
//            stm.setInt(6, house.getId());
//            stm.executeUpdate();
//        } catch (Exception ex) {
//            Logger.getLogger(DAOHouse.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//
//    public House get(House house) {
//        House getHouse = null;
//        try {
//            Connection connection = new DBContext().getConnection();
//            String sql = "SELECT * from House\n"
//                    + "where Id = ?";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            ResultSet rs = stm.executeQuery();
//            while (rs.next()) {
//                if (getHouse == null) {
//                    getHouse = new House();
//                }
//                getHouse.setId(rs.getInt(1));
//                getHouse.setHouse_Owener_ID(rs.getInt(2));
//                getHouse.setCategory_ID(rs.getInt(3));
//                getHouse.setPrice(rs.getString(4));
//                getHouse.setDistrict_ID(rs.getInt(5));
//                getHouse.setFull_Adress(rs.getString(6));
//                getHouse.setDescription(rs.getString(7));
//                getHouse.setRating(rs.getFloat(8));
//                getHouse.setAdded_Date(rs.getDate(9));
//            }
//        } catch (Exception ex) {
//            Logger.getLogger(DAOHouse.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        
//        return getHouse;
//    }
//    
//    public void delete(House house) {
//        try {
//            Connection connection = new DBContext().getConnection();
//            String sql = "DELETE from House WHERE [Id] = ?";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setInt(1, house.getId());
//            stm.executeUpdate();
//        } catch (Exception ex) {
//            Logger.getLogger(DAOHouse.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
    }

    

}
