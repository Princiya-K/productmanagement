package taskproduct.com;




import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
@WebServlet("/customer-signup" )
public class CusSignUp extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try
		{
			
			String cname=req.getParameter("uname");
			int cage=Integer.parseInt(req.getParameter("uage"));
			String cemail=req.getParameter("uemail");
			String cpwd=req.getParameter("upwd");
			Long ccont=Long.parseLong(req.getParameter("ucont"));
			
			
			CusDTO c =new CusDTO(cname,cage,cemail,cpwd,ccont);
			
			  CusDAO dao=new CusDAO();
			
			@SuppressWarnings("unused")
			int res=dao.signUp(c);
			 
			RequestDispatcher rs=req.getRequestDispatcher("cus-login.jsp");
			rs.forward(req, resp);
			
		}catch(Exception e)
			{
			e.printStackTrace();
			}

		}
}
