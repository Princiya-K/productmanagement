package taskproduct.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CusDAO {
    
    static Connection con;
    static PreparedStatement pst;
    static ResultSet rs;

    public static Connection GetConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/products?user=root&password=root");
    }
    
    public int signUp(CusDTO c) throws SQLException {
        con = null;
        pst = null;
        try {
            con = GetConnection();
            String query = "INSERT INTO customer (cname, cage, cemail, cpwd, ccontact) VALUES (?, ?, ?, ?, ?)";
            pst = con.prepareStatement(query);
            pst.setString(1, c.getC_name());
            pst.setInt(2, c.getC_age());
            pst.setString(3, c.getC_email());
            pst.setString(4, c.getC_pwd());
            pst.setLong(5, c.getC_cont());
            
            return pst.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pst != null) pst.close();
            if (con != null) con.close();
        }
        return 0;
    }

    public int login(String cemail, String cpwd) throws SQLException, ClassNotFoundException {
        con = null;
        pst = null;
        rs = null;
        try {
            con = GetConnection();
            String query = "SELECT * FROM customer WHERE cemail = ? AND cpwd = ?";
            pst = con.prepareStatement(query);
            pst.setString(1, cemail);
            pst.setString(2, cpwd);
            rs = pst.executeQuery();

            if (rs.next()) {
                return 1; // Login successful
            } else {
                return 0; // Login failed
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (rs != null) rs.close();
            if (pst != null) pst.close();
            if (con != null) con.close();
        }
        return 0;
    }
    
    
    
}