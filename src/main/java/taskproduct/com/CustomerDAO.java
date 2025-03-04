package taskproduct.com;

import java.sql.*;

public class CustomerDAO {

    // Get Database Connection
    public static Connection GetConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/products", "root", "root");
    }

    // Delete Customer by Name (Deletes Only One)
    public int delete_Customer(String cname) throws Exception {
        String query = "DELETE FROM customer WHERE cname = ? LIMIT 1"; // Ensures only one row is deleted

        try (Connection con = GetConnection();
             PreparedStatement pst = con.prepareStatement(query)) {

            pst.setString(1, cname);
            return pst.executeUpdate(); // Returns number of rows deleted
        }
    }
}
