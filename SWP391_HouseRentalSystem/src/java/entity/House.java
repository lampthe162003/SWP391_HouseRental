/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Date;

/**
 *
 * @author Thang
 */
public class House {
    private int Id,House_Owener_ID,Category_ID,District_ID;
    private String Price,Full_Adress,Description,Title;
    private String Price,Full_Adress,Description,Title;
    private float Rating;
    private Date Added_Date;

    public House() {
    }

    public House(int Id, int House_Owener_ID, int Category_ID, int District_ID, String Price, String Full_Adress, String Description, String Title, float Rating, Date Added_Date) {
        this.Id = Id;
        this.House_Owener_ID = House_Owener_ID;
        this.Category_ID = Category_ID;
        this.District_ID = District_ID;
        this.Price = Price;
        this.Full_Adress = Full_Adress;
        this.Description = Description;
        this.Title = Title;
        this.Title = Title;
        this.Rating = Rating;
        this.Added_Date = Added_Date;
    }


    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public int getHouse_Owener_ID() {
        return House_Owener_ID;
    }

    public void setHouse_Owener_ID(int House_Owener_ID) {
        this.House_Owener_ID = House_Owener_ID;
    }

    public int getCategory_ID() {
        return Category_ID;
    }

    public void setCategory_ID(int Category_ID) {
        this.Category_ID = Category_ID;
    }

    public int getDistrict_ID() {
        return District_ID;
    }

    public void setDistrict_ID(int District_ID) {
        this.District_ID = District_ID;
    }

    public String getPrice() {
        return Price;
    }

    public void setPrice(String Price) {
        this.Price = Price;
    }

    public String getFull_Adress() {
        return Full_Adress;
    }

    public void setFull_Adress(String Full_Adress) {
        this.Full_Adress = Full_Adress;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public float getRating() {
        return Rating;
    }

    public void setRating(float Rating) {
        this.Rating = Rating;
    }

    public Date getAdded_Date() {
        return Added_Date;
    }

    public void setAdded_Date(Date Added_Date) {
        this.Added_Date = Added_Date;
    }

    

    
}
