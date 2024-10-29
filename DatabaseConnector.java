import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnector {
    public Connection connect() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "password");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
