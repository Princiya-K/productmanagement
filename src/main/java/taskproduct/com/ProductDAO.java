package taskproduct.com;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    
    // Get Database Connection
    public static Connection GetConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/products", "root", "root");
    }

    // Save Product
    public int save_Product(ProductDTO p) throws Exception {
        Connection con = null;
        PreparedStatement pst = null;
        int res = 0;

        try {
            con = GetConnection();
            String query = "INSERT INTO product VALUES (?, ?, ?, ?)";
            pst = con.prepareStatement(query);
            pst.setInt(1, p.getPid());
            pst.setString(2, p.getPname());
            pst.setString(3, p.getPbrand());
            pst.setDouble(4, p.getPcost());
            res = pst.executeUpdate();
        } finally {
            closeResources(con, pst, null);
        }
        return res;
    }

    // Delete Product
    public int delete_Product(int pid) throws Exception {
        Connection con = null;
        PreparedStatement pst = null;
        int res = 0;

        try {
            con = GetConnection();
            String query = "DELETE FROM product WHERE p_id=?";
            pst = con.prepareStatement(query);
            pst.setInt(1, pid);
            res = pst.executeUpdate();
        } finally {
            closeResources(con, pst, null);
        }
        return res;
    }
    
    public ResultSet viewAllProducts() throws Exception {
        
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        
            con = GetConnection();
            String query = "SELECT * FROM product";
            pst = con.prepareStatement(query);
            rs = pst.executeQuery();

       
        return rs;
    }

    
    // Update Product
    public int updateProduct(ProductDTO product) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement pst = null;
        int rowsUpdated = 0;

        try {
            con = GetConnection();
            String sql = "UPDATE product SET p_name = ?, p_brand = ?, p_cost = ? WHERE p_id = ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, product.getPname());
            pst.setString(2, product.getPbrand());
            pst.setDouble(3, product.getPcost());
            pst.setInt(4, product.getPid());
            rowsUpdated = pst.executeUpdate();
        } finally {
            closeResources(con, pst, null);
        }
        return rowsUpdated;
    }

    // Close Resources to Prevent Memory Leaks
    private void closeResources(Connection con, PreparedStatement pst, ResultSet rs) {
        try {
            if (rs != null) rs.close();
            if (pst != null) pst.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
