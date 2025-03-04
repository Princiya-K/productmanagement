package taskproduct.com;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateProduct")
public class UpdateProduct extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int pId = Integer.parseInt(request.getParameter("pid"));
            String pName = request.getParameter("pname");
            String pBrand = request.getParameter("pbrand");
            double pCost = Double.parseDouble(request.getParameter("pcost"));

            ProductDTO product = new ProductDTO(pId, pName, pBrand, pCost);
            ProductDAO dao = new ProductDAO();
            int result = dao.updateProduct(product);

//            if (result > 0) {
//                response.sendRedirect("updateProduct.jsp?update=success");
//            } else {
//                response.sendRedirect("viewproduct.jsp?update=failure");
//            }
            
            if (result > 0) {
                response.sendRedirect("updateProduct.jsp?update=success&pid=" + pId + "&pname=" + pName + "&pbrand=" + pBrand + "&pcost=" + pCost);
            } else {
                response.sendRedirect("updateProduct.jsp?update=failure&pid=" + pId + "&pname=" + pName + "&pbrand=" + pBrand + "&pcost=" + pCost);
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("updateProduct.jsp?update=error");
        }
    }
}
