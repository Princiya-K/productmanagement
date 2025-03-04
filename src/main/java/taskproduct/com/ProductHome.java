package taskproduct.com;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ProductHome")
public class ProductHome extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);  // Get existing session
        if (session == null || session.getAttribute("email") == null) {
            response.sendRedirect("cus-login.jsp"); // Redirect if user is not logged in
            return;
        }

        try {
            // Database connection setup
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/products", "root", "root");

            // SQL Query to fetch products
            String query = "SELECT p_id, p_name, p_brand, p_cost FROM products";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            // Store ResultSet in request scope
            request.setAttribute("resultset", rs);

            // Forward to products.jsp
            request.getRequestDispatcher("viewproduct.jsp").forward(request, response);

            // Close resources (No need to close ResultSet since JSP will process it)
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
