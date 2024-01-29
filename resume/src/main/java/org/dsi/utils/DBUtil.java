package org.dsi.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DBUtil {
    private static Connection connection = null;

    public static Connection getConnection () {
        if (connection != null) {
            return connection;
        }

        try {
            String driver = "org.postgresql.Driver";
            String url = "jdbc:postgresql://127.0.0.1:5432/resume-app";
            String username = "postgres";
            String password = "postgres";

            Class.forName(driver);
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return connection;
    }

    public static void closeConnection(Connection con) {
        if (con == null) {
            return;
        }

        try {
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
