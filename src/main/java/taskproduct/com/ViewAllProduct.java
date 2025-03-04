package taskproduct.com;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@SuppressWarnings("serial")
@WebServlet("/viewproduct")
public class ViewAllProduct extends HttpServlet {
   

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
        	
            ProductDAO dao = new ProductDAO();
            
           
            ResultSet rs = (ResultSet) dao.viewAllProducts();

            // Set the list of products as a request attribute
            req.setAttribute("resultset",rs);
            
          req.getRequestDispatcher("viewproduct.jsp").forward(req, res);
      
            
        } catch (Exception e) {
            e.printStackTrace();
            res.getWriter().println("Error retrieving product data.");
        }
    }
}