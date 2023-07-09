/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Districts;
import entity.House;
import entity.House_Category;
import entity.House_Details;
import entity.House_Directions;
import entity.House_Images;
import entity.House_Ratings;
import entity.InforOwner;
import entity.NewsPostHouse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;

/**
 *
 * @author ADMIN
 */
public class DAOHouse {
//    public List<House> getAllHouse(String districtId, String categoryID, String minPrice, String maxPrice, String minArea, String maxArea, String orderBy) {
//        List<House> list = new ArrayList<>();
//        String sql = "SELECT a.Id, a.Category_ID, a.Price, a.District_ID, a.Full_Address, a.Description, a.Rating, a.Added_Date, a.Title, b.Image, c.Area "
//                + "FROM House AS a "
//                + "JOIN House_Images AS b ON a.Id = b.House_ID "
//                + "JOIN House_Details AS c ON a.Id = c.House_ID "
//                + "WHERE 1=1 ";
//
//        List<Object> parameters = new ArrayList<>();
//        if (districtId != null && !districtId.isEmpty()) {
//            sql += " AND a.District_ID = ?";
//            parameters.add(Integer.parseInt(districtId));
//        }
//        if (categoryID != null && !categoryID.isEmpty()) {
//            sql += " AND a.Category_ID = ?";
//            parameters.add(Integer.parseInt(categoryID));
//        }
//        if (minArea != null && !minArea.isEmpty() && maxArea != null && !maxArea.isEmpty()) {
//            sql += " AND c.Area BETWEEN ? AND ?";
//            parameters.add(Integer.parseInt(minArea));
//            parameters.add(Integer.parseInt(maxArea));
//        }
//        if (minPrice != null && !minPrice.isEmpty() && maxPrice != null && !maxPrice.isEmpty()) {
//            sql += " AND a.Price BETWEEN ? AND ?";
//            parameters.add(Integer.parseInt(minPrice));
//            parameters.add(Integer.parseInt(maxPrice));
//        }
//        if (orderBy != null && !orderBy.isEmpty()) {
//            sql += " ORDER BY a.Id DESC";
//        }
//
//        try ( Connection conn = new DBContext().getConnection();  PreparedStatement ps = conn.prepareStatement(sql)) {
//            for (int i = 0; i < parameters.size(); i++) {
//                ps.setObject(i + 1, parameters.get(i));
//            }
//
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                House h = new House();
//                h.setId(rs.getInt(1));
//                h.setCategoryid(rs.getInt(2));
//                h.setPrice(rs.getString(3));
//                h.setDistrictid(rs.getInt(4));
//                h.setFulladdress(rs.getString(5));
//                h.setText(rs.getString(6));
//                h.setRating(rs.getFloat(7));
//                h.setAddDate(rs.getDate(8));
//                h.setTitle(rs.getString(9));
//                h.setImg(rs.getString(10));
//                h.setArea(rs.getInt(11));
//                list.add(h);
//            }
//        } catch (Exception e) {
//            Logger.getLogger(DAOAccount.class.getName()).log(Level.SEVERE, null, e);
//        }
//        return list;
//    }
//    public List<House> getAllNewHouse() {
//        List<House> list = new ArrayList<>();
//        String sql = " SELECT TOP 5 a.[Id]"
//                + "      , a.[Category_ID]\n"
//                + "      ,a.[Price]\n"
//                + "      ,a.[District_ID]\n"
//                + "      ,a.[Full_Address]\n"
//                + "      ,a.[Description]\n"
//                + "      ,a.[Rating]\n"
//                + "      ,a.[Added_Date]\n"
//                + "      ,a.[Title]\n"
//                + "	 ,b.[Image]\n"
//                + "      ,c.[Area]\n"
//                + "FROM House AS a\n"
//                + "JOIN House_Images AS b ON a.Id = b.House_ID\n"
//                + "JOIN House_Details AS c ON a.Id =c.House_ID\n"
//                + "ORDER BY a.Id DESC";
//        try {
//            Connection conn = new DBContext().getConnection();
//            PreparedStatement ps = conn.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                House h = new House();
//                h.setId(rs.getInt(1));
//                h.setCategoryid(rs.getInt(2));
//                h.setPrice(rs.getString(3));
//                h.setDistrictid(rs.getInt(4));
//                h.setFulladdress(rs.getString(5));
//                h.setText(rs.getString(6));
//                h.setRating(rs.getFloat(7));
//                h.setAddDate(rs.getDate(8));
//                h.setTitle(rs.getString(9));
//                h.setImg(rs.getString(10));
//                h.setArea(rs.getInt(11));
//                list.add(h);
//            }
//
//        } catch (Exception e) {
//            System.out.println("gg");
//        }
//        return list;
//    }
//    public List<House_Category> getAllCategory() {
//        List<House_Category> list = new ArrayList<>();
//        String sql = "Select * from House_Category";
//        try {
//            Connection conn = new DBContext().getConnection();
//            PreparedStatement ps = conn.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                House_Category h = new House_Category(rs.getInt(1), rs.getString(2));
//                list.add(h);
//            }
//            return list;
//        } catch (Exception e) {
//            System.out.println("gg");
//        }
//        return null;
//    }
//    public List<Districts> getAllDistrict() {
//        List<Districts> list = new ArrayList<>();
//        String sql = "Select * from Districts";
//        try {
//            Connection conn = new DBContext().getConnection();
//            PreparedStatement ps = conn.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Districts d = new Districts(rs.getInt(1), rs.getString(2));
//                list.add(d);
//            }
//            return list;
//        } catch (Exception e) {
//            System.out.println("gg");
//        }
//        return null;
//    }
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
    public List<House_Category> getListCategory(){
        try {
            String stmSql = "select * from House_Category";
            List<House_Category> lsC = new ArrayList<>();
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ResultSet rs  = ps.executeQuery();
            while(rs.next()){
                House_Category c = new House_Category(rs.getInt(1), rs.getString(2));
                lsC.add(c);
            }
            return lsC;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
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
    public void insertHouse(int houseOwnerId, int categoryId, Float price, int districtId, String address, String description, String title) {
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
            ps.setFloat(3, price);
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
    }

    public List<House_Images> getListHouseImageByHouseId(int houseId) {
        try {
            List<House_Images> lsHouseImage = new ArrayList<>();
            String stmSql = "select * from House_Images where House_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, houseId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                House_Images hi = new House_Images(rs.getInt(1), rs.getInt(2), rs.getString(3));
                lsHouseImage.add(hi);
            }
            return lsHouseImage;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public House getHouseById(int id) {
        try {
            String stmSql = "select * from House where id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                //int Id, int House_Owener_ID, int Category_ID, int District_ID, String Price, String Full_Adress, String Description, String Title, float Rating, Date Added_Date
                House h = new House(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(5), rs.getFloat(4), rs.getString(6), rs.getString(7), rs.getString(10), rs.getFloat(8), rs.getDate(9));
                return h;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public House_Details getHouseDetailById(int id) {
        try {
            String stmSql = "select * from House_Details where House_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                House_Details hd = new House_Details(rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getInt(7));
                return hd;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public House_Directions getHouseDirectionById(int id) {
        try {
            String stmSql = "select hdi.* from House_Directions as hdi inner join House_Details as hd on hd.House_Direction_ID = hdi.Id where hd.House_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                House_Directions hdi = new House_Directions(rs.getInt(1), rs.getString(2));
                return hdi;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public Districts getDistrictById(int id) {
        try {
            String stmSql = "select d.* from House as h inner join Districts as d on h.District_ID = d.Id where h.Id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Districts d = new Districts(rs.getInt(1), rs.getString(2));
                return d;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public House_Category getHouseCategoryById(int id) {
        try {
            String stmSql = "select hc.* from House as h inner join House_Category as hc on h.Category_ID = hc.Id where h.Id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                House_Category hc = new House_Category(rs.getInt(1), rs.getString(2));
                return hc;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public InforOwner getInforOfOwner(int id) {
        try {
            String stmSql = "select a.Id,a.Fullname,a.[Address],a.Email,a.Phone_Number,a.Profile_Picture from House as h inner join Account as a on h.House_Owner_ID = a.Id where h.Id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                InforOwner io = new InforOwner(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                return io;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<NewsPostHouse> getNewListPost(int id) {
        try {
            String stmSql = "select top(5) Id,Title,Price from House where id != ? order by Id desc";
            List<NewsPostHouse> lsH = new ArrayList<>();
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                NewsPostHouse h = new NewsPostHouse(rs.getInt(1), rs.getString(2), rs.getString(3), getFirstImageHouse(rs.getInt(1)));
                System.out.println(rs.getString(2));
                lsH.add(h);
            }
            return lsH;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public String getFirstImageHouse(int id) {
        try {
            String stmSql = "select top(1) hi.Image from House as h inner join House_Images as hi on h.Id = hi.House_ID where h.Id = ? order by hi.Id asc";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return "";
    }
    public void deleteHouseRating(int House_ID, int Voter_ID){
        try {
            String stmSql = "delete from House_Ratings where House_ID = ? and Voter_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, House_ID);
            ps.setInt(2, Voter_ID);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    public boolean checkExistHouseRating(int House_ID, int Voter_ID) {
        try {
            String stmSql = "select * from House_Ratings where House_ID = ? and Voter_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, House_ID);
            ps.setInt(2, Voter_ID);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }
    public House_Ratings getHouseRating(int House_ID, int Voter_ID) {
        try {
            String stmSql = "select * from House_Ratings where House_ID = ? and Voter_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, House_ID);
            ps.setInt(2, Voter_ID);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                House_Ratings hr = new House_Ratings(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getFloat(4));
                return hr;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
    public void insertHouseRating(int House_ID, int Voter_ID, float Rating){
         try {
            String stmSql = "insert into House_Ratings(House_ID,Voter_ID,Rating) values (?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, House_ID);
            ps.setInt(2, Voter_ID);
            ps.setFloat(3, Rating);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    public boolean checkExistFavouriteHouse(int houseId, int userId){
        try {
            String stmSql = "select * from Favourite_House where User_ID = ? and House_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, userId);
            ps.setInt(2, houseId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }
    public void deleteFavouriteHouse(int houseId, int userId){
        try {
            String stmSql = "delete from Favourite_House where User_ID = ? and House_ID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, userId);
            ps.setInt(2, houseId);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    public void insertFavouriteHouse(int houseId, int userId){
        try {
            String stmSql = "insert into Favourite_House(User_ID,House_ID) values(?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(stmSql);
            ps.setInt(1, userId);
            ps.setInt(2, houseId);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
