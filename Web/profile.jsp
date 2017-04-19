<html>
    <head>
        <title>PROFILE</title>
        <style>
        body{background-color: #000;
    margin: 20;
    padding: 0;}  
           
        #p2{font-size: 23px;
    color: #ffc119;}
           
        #a1{color:#000;
       margin-top:0; margin-left:1200;
       font-size:18;
       background-color:#000;
       color:#ffc119;
   }             
   #a1:hover, #a1:active {color:#fff;}
        </style>
        
        <%@page import="java.sql.*" %>
        <a id='a1' href="Home.jsp"> <b> HOME </b> </a> <br><br>
<%
try{
 session=request.getSession(false);
	   String name =(String) session.getAttribute("user");
Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","");

PreparedStatement ps=con.prepareStatement("select * from emp where name=?");
ps.setString(1, name);		

ResultSet rs=ps.executeQuery();
		if(rs.next())
                    {%>
    <p id="p2"> <b><u>PROFILE DETAILS</u></b><br><br><br><br>  <%out.println("Name: "+rs.getString("name")+"<br> ");%><br>
                         <% out.println("Password: "+rs.getString("password"));%><br><br>
    <% out.println("Gender: "+rs.getString("sex"));%><br><br>
    <% out.println("D.O.B: "+rs.getString("dob"));%><br><br>
    <% out.println("Email: "+rs.getString("email"));%><br><br>
    </p>
  <%                      
 }
}catch(Exception ex){System.out.print(ex);}
 %>
 </html>