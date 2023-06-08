
package dao;

import context.DBContext;
import entity.House;
<<<<<<< HEAD
import entity.House_Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
=======
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSet;
>>>>>>> 90e3d30b067123f7946a4726c630f29c237f669e
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
<<<<<<< HEAD
import java.util.List;
=======
import java.util.logging.Level;
import java.util.logging.Logger;
>>>>>>> 90e3d30b067123f7946a4726c630f29c237f669e

/**
 *
 * @author ADMIN
 */
public class DAOHouse {

<<<<<<< HEAD
=======
  

>>>>>>> 90e3d30b067123f7946a4726c630f29c237f669e
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

<<<<<<< HEAD
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
=======
    public int getHouseId() {
        try {
            String stmSql = "select top(1) Id from House order by Id desc";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
>>>>>>> 90e3d30b067123f7946a4726c630f29c237f669e
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
<<<<<<< HEAD
=======
            System.out.println(e.getMessage());
>>>>>>> 90e3d30b067123f7946a4726c630f29c237f669e
        }
        return 0;
    }

<<<<<<< HEAD
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
=======
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

    

>>>>>>> 90e3d30b067123f7946a4726c630f29c237f669e
}
