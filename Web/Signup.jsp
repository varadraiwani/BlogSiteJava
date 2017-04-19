<%@page import="java.sql.*" %>
<%
try{

String name=request.getParameter("uname");
		String pass=request.getParameter("upassword");
                String dob=request.getParameter("dob");
                String sex=request.getParameter("gender");
                String email=request.getParameter("email");

Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","");

PreparedStatement ps=con.prepareStatement("insert into emp values (?,?,?,?,?)");
		ps.setString(1, name);
		ps.setString(2, pass);
                ps.setString(3, sex);
		ps.setString(4, dob);
                ps.setString(5, email);
		


int i=ps.executeUpdate();
		if(i>0)
		{%>
		 //Successfully signed up!!

<%
 RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
 rd.include(request,response);
 }
}catch(Exception ex){System.out.print(ex);}
 %>
