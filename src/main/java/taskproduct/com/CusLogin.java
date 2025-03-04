package taskproduct.com;




import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/customer-login")
public class CusLogin extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cemail = req.getParameter("uemail");
        String cpwd = req.getParameter("upwd");
       

        CusDAO dao = new CusDAO();
        int res = 0;
        
        try {
            res = dao.login(cemail, cpwd); // Perform the login using the DAO
        } catch (Exception e) {
            e.printStackTrace();
        }

        
        
        if (res == 1) {
            // Successful login
           
        	HttpSession s=req.getSession();
        	s.setAttribute("cemail", cemail);
        	s.setAttribute("cpwd", cpwd);

         
            req.getRequestDispatcher("product.jsp").forward(req, resp);
            
//             Check if login count exists in the session
            
        }else {
        	
        	resp.getWriter().println(
        		    "<div style='"
        		    + "display: flex; justify-content: center; align-items: center; height: 100vh;'" // Centers vertically & horizontally
        		    + "'>"
        		    + "<div style='"
        		    + "color: red; font-size: 20px; font-weight: bold; text-align: center; "
        		    + "background: #f8d7da; padding: 15px; border-radius: 10px; "
        		    + "box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2); width: 300px; "
        		    + "border: 2px solid #721c24;'"
        		    + ">"
        		    + "❌ Login Failed! Please try again."
        		    + "</div></div>"
        		);

        	
        	//resp.getWriter().println("<p style='color: red; font-size: 18px; font-weight: bold; text-align: center; background: #ffe6e6; padding: 10px; border-radius: 5px;'>Login Failed!!!</p>");

        }
    }
}