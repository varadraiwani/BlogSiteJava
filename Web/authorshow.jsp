<html>
    <head>
        <title>blogs by author</title>
        <style>
            
            
            body{background-color: #000;
    margin: 20;
    padding: 0;}
           
            
            .p1{font-size: 23px;
    color: #ffc119;}
 
            #p2{color:#fff;
                padding-top:10px;        }
        
        </style>
    </head>

    <body>
<%@page import="java.sql.*" %>
<%
try{
String key=request.getParameter("textbox");

Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","");

PreparedStatement ps=con.prepareStatement("select * from blog where author=?");
		ps.setString(1,key);

ResultSet rs=ps.executeQuery();
		while(rs.next())
                {
                   out.println("<p class='p1'>"+"Title:<t>"+rs.getString("title"));%><br>
                   <% out.println("<p class='p1'>"+"Author:<t>"+rs.getString("author"));%><br>
                   <% out.println("<p class='p1'>"+"Date:<t>"+rs.getString("date"));%><br><br>
                <% out.println(rs.getString("content")+"</p>");%><br>
                <p id="p2">_________________________________________________________________________________________________________________________________________________________________</p>

<br> <br> <br>
<%
 
 }
}catch(Exception ex){System.out.print(ex);}
 %>
    </body>
</html>