package taskproduct.com;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/addproduct")
public class AddProduct extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int pid=Integer.parseInt(req.getParameter("pId"));
		String pname=req.getParameter("pName");
		String pbrand=req.getParameter("pBrand");
		Double pcost=Double.parseDouble(req.getParameter("pCost"));
		
		ProductDTO p = new ProductDTO(pid,pname,pbrand,pcost);
		
		ProductDAO p1 = new ProductDAO();
		
	      try {
			@SuppressWarnings("unused")
			int res = p1.save_Product(p);
			
			resp.getWriter().println(
				    "<div style='"
				    + "display: flex; justify-content: center; align-items: center; height: 100vh;'" // Centers vertically & horizontally
				    + "'>"
				    + "<div style='"
				    + "color: green; font-size: 20px; font-weight: bold; text-align: center; "
				    + "background: #d4edda; padding: 15px; border-radius: 10px; "
				    + "box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2); width: 300px; "
				    + "border: 2px solid #155724;'"
				    + ">"
				    + "✅ " + res + " row has been added successfully!"
				    + "</div></div>"
				);
			
//			resp.getWriter().println("<p style='color: green; font-size: 18px; font-weight: bold; text-align: center; background: #f0f8ff; padding: 10px; border-radius: 5px;'>" + res + " row has been added!</p>");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	      
	}

	
	
}