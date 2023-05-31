/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ADMIN
 */
public class DBContext {

    public Connection getConnection() throws Exception {
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance  + ";databaseName=" + dbName;
        if ((instance == null) || instance.trim().isEmpty()) {
            url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
        }
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }
    private final String dbName = "SWP391_HouseRentalSystem";
    private final String portNumber = "1433";
    private final String instance = "";
    private final String userID = "sa";
    private final String password = "1231";
//    private final String serverName = "DESKTOP-B08T7A9\\TRANHUNG";
//    private final String dbName = "SWP391_HouseRentalSystem";
//    private final String portNumber = "1433";
//    private final String instance = "";
//    private final String userID = "sa";
//    private final String password = "123";

//    private final String serverName = "Hayashi";
//    private final String dbName = "SWP391_HouseRentalSystem";
//    private final String portNumber = "1433";
//    private final String instance = "";
//    private final String userID = "HayashiHayate";
//    private final String password = "TodakaHyasumi1";
}
