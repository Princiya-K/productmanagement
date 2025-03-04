package taskproduct.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteProduct")
public class DeleteProduct extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        try {
            // Validate request parameter
            String pIdStr = req.getParameter("pId");
            if (pIdStr == null || pIdStr.isEmpty()) {
                out.println("<h3 style='color:red;'>Error: Product ID is required!</h3>");
                return;
            }

            // Convert to integer
            int pid = Integer.parseInt(pIdStr);

            // Call DAO to delete the product
            ProductDAO productDAO = new ProductDAO();
            int rowsDeleted = productDAO.delete_Product(pid);

            // Display result message
            if (rowsDeleted > 0) {
                out.println("<h3 style='color: white; background-color: green; padding: 10px; border-radius: 5px; "
                            + "box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2); display: inline-block;'>"
                            + "✅ " + rowsDeleted + " product(s) deleted successfully.</h3>");
            } else {
                out.println("<h3 style='color: white; background-color: orange; padding: 10px; border-radius: 5px; "
                            + "box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2); display: inline-block;'>"
                            + "⚠ No product found with ID: " + pid + "</h3>");
            }

            } catch (NumberFormatException e) {
                out.println("<h3 style='color: white; background-color: darkred; padding: 10px; border-radius: 5px; "
                            + "box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2); display: inline-block;'>"
                            + "❌ Invalid Product ID! Please enter a valid number.</h3>");
            } catch (SQLException e) {
                out.println("<h3 style='color: white; background-color: red; padding: 10px; border-radius: 5px; "
                            + "box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2); display: inline-block;'>"
                            + "⚠ Database Error: " + e.getMessage() + "</h3>");
                e.printStackTrace();
            } catch (Exception e) {
                out.println("<h3 style='color: white; background-color: darkred; padding: 10px; border-radius: 5px; "
                            + "box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2); display: inline-block;'>"
                            + "❌ Unexpected Error: " + e.getMessage() + "</h3>");
                e.printStackTrace();
            } finally {
                out.close();
            }
    }}











//
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

//@SuppressWarnings("serial")
//@WebServlet("/deleteProduct")
//public class DeleteProduct extends HttpServlet {
//	
//	
//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		
//	 try {
//		int pid=Integer.parseInt(req.getParameter("pId"));
//		
//		
//		ProductDAO p1 = new ProductDAO();
//		
//	     
//		@SuppressWarnings("unused")
//			int res = p1.delete_Product(pid);
//			resp.getWriter().println(res+"rows has been deleted");
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//		e.printStackTrace();
//		}
//	}
//
//}
