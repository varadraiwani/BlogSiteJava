<html>
    <head>
        <title>Message(s) </title>
        <style>
            
            
            body{background-color: #000;
    margin: 20;
    padding: 0;}
           
            
            .p1{font-size: 23px;
    color: #ffc119;}
 
            #p2{color:#fff;
                padding-top:10px;        }
            
             a:link, a:visited {
    background-color: #f44336;
    color: white;
    margin-left: 0px; 
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}


a:hover, a:active {
    background-color: red;
}             
        
        </style>
    </head>

    <body>
<%@page import="java.sql.*" %>
<a href="composeMessage.jsp">COMPOSE MESSAGE</a><br><br><br>
<p class='p1'>RECEIVED MESSAGES</p><br><br>
<%
try{
    session=request.getSession(false);
	   String name1 =(String) session.getAttribute("user");
Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","");

PreparedStatement ps=con.prepareStatement("select * from messages where toPerson=?");
		ps.setString(1,name1);

ResultSet rs=ps.executeQuery();
		while(rs.next())
                {
                    out.println("<p class='p1'>"+"From:<t>"+rs.getString("from"));%><br><br>
                <% out.println(rs.getString("message")+"</p>");%><br>
                <p id="p2">_________________________________________________________________________________________________________________________________________________________________</p>

<br> <br> <br>
<%
 
 }
}catch(Exception ex){System.out.print(ex);}
 %>
 </body>
</html>