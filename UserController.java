import java.sql.Connection;
import java.sql.PreparedStatement;

public class UserController {
    public void registerUser(User user) {
        try {
            DatabaseConnector connector = new DatabaseConnector();
            Connection connection = connector.connect();
            String query = "INSERT INTO users (username, password) VALUES (?, ?)";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.executeUpdate();
            System.out.println("User registered successfully!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
