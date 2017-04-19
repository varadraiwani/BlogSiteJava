
import java.io.*;
import java.sql.*;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LoginServlet")

public class LoginServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("user");
		String pass=request.getParameter("password");
		
		Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","");
		PreparedStatement ps=con.prepareStatement("select * from emp where name=? and password=?");
		ps.setString(1, name);
		ps.setString(2, pass);
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			out.print("Welcome   "+rs.getString("name"));
                        HttpSession session=request.getSession();
	  session.setAttribute("user", name);
                        RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
		   rd.include(request, response);
		}
		else
		{
		  out.print("Invalid user name or password!!!");
                  RequestDispatcher rd=request.getRequestDispatcher("index.html");
		   rd.include(request, response);	  
		}
		
		
		
		}
		catch(Exception ex)
		{
		  ex.printStackTrace();	
		}
		
	}

}
