package kalkulatorwydatkow.tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DbConnector {
    public static Connection getConnection() throws SQLException {
        Properties connectionProps = new Properties();
        connectionProps.put("user", Config.dbUser);
        connectionProps.put("password", Config.dbPassword);

        Connection conn = DriverManager.getConnection(
                "jdbc:mysql://" + Config.dbHost + ":" + Config.dbPort + "/" + Config.dbDatabase, connectionProps);

        System.out.println("Połączono z bazą danych");
        return conn;
    }
}
