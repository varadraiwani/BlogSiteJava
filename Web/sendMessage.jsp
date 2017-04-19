<%@page import="java.sql.*" %>
<%
try{
session=request.getSession(false);
	   String from =(String) session.getAttribute("user");

String author=request.getParameter("author");
String content=request.getParameter("content");

Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","");

PreparedStatement ps=con.prepareStatement("insert into messages values (?,?,?)");
                ps.setString(1,author);		
                ps.setString(2,from);
		
		ps.setString(3,content);


int i=ps.executeUpdate();
		if(i>0)
		{%>
                <p style="color:#ffc119;">Successfully sent</p>
<% RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
		   rd.include(request, response);
 }
else{out.print("Sorry... There is some issue");}
}catch(Exception ex){System.out.print(ex);}
 %>
