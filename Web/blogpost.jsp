<%@page import="java.sql.*" %>
<%
try{

String title=request.getParameter("title");
String topic=request.getParameter("topic");
String content=request.getParameter("content");
String author=request.getParameter("author");
String date=request.getParameter("date");

Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","");

PreparedStatement ps=con.prepareStatement("insert into blog values (?,?,?,?,?)");
                ps.setString(1,topic);		
                ps.setString(2,title);
		ps.setString(3,author);
                ps.setString(4,date);
		ps.setString(5,content);


int i=ps.executeUpdate();
		if(i>0)
		{%>
		 Successfully added!!

<% RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
		   rd.include(request, response);
 }
else{out.print("Sorry... There is some issue");}
}catch(Exception ex){System.out.print(ex);}
 %>
