package org.outman.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBUtils {
    private static String user;
    private static String password;
    private static String url;
    private static String driver;

    static {
        try {
            Properties props = new Properties();
            props.load(DBUtils.class.getClassLoader().getResourceAsStream(
                    "db.properties"));
            user = props.getProperty("user");
            password = props.getProperty("password");
            url = props.getProperty("url");
            driver = props.getProperty("driver");
        } catch (IOException e) {
            e.printStackTrace();
        }

        if (driver != null) {
            try {
                Class.forName(driver);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    public static Connection openConnection() throws SQLException {
        return DriverManager.getConnection(url, user, password);
    }

    public static void main(String[] args) throws Exception {
        System.out.println(openConnection());
    }
}
