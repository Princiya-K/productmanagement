package taskproduct.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deletecustomer")
public class DeleteCustomer extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        try {
        	
            // Validate request parameter
            String customerName = req.getParameter("customer_name");
            if (customerName == null || customerName.trim().isEmpty()) {
                out.println("<h3 style='color:red;'>Error: Customer name is required!</h3>");
                return;
            }

            // Call DAO to delete the customer
            CustomerDAO customerDAO = new CustomerDAO();
            int rowsDeleted = customerDAO.delete_Customer(customerName);

            // Display result message
            
            
            
            if (rowsDeleted > 0) {
                out.println("<h3 style='color: white; background-color: green; padding: 10px; border-radius: 5px; "
                            + "box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2); display: inline-block;'>"
                            + rowsDeleted + " customer(s) deleted successfully.</h3>");
            } else {
                out.println("<h3 style='color: white; background-color: orange; padding: 10px; border-radius: 5px; "
                            + "box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2); display: inline-block;'>"
                            + "No customer found with name: " + customerName + "</h3>");
            }
        } catch (SQLException e) {
            out.println("<h3 style='color: white; background-color: red; padding: 10px; border-radius: 5px; "
                    + "box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2); display: inline-block;'>"
                    + "⚠ Database Error: Unable to delete customer. Please try again later.</h3>");
        e.printStackTrace();
    } catch (Exception e) {
        out.println("<h3 style='color: white; background-color: darkred; padding: 10px; border-radius: 5px; "
                    + "box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2); display: inline-block;'>"
                    + "⚠ Unexpected Error: " + e.getMessage() + "</h3>");
        e.printStackTrace();
    } finally {
        out.close();
    }
    }}















































