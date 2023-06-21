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
                House h = new House(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(5), rs.getString(4), rs.getString(6), rs.getString(7), rs.getString(10), rs.getFloat(8), rs.getDate(9));
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

}
