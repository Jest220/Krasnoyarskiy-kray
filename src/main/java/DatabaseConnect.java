import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnect {
    private static String url = "jdbc:mysql://localhost:3306";
    private static String username = "root";
    private static String password = "root";
    private static Connection connection;
    public static Connection getConnection() {
        if (connection != null) {
            return connection;
        }
        else {
            connection = connect();
            return connection;
        }
    }

    private static Connection connect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            return con;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
}
