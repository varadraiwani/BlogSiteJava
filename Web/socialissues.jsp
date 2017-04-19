<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 
        <title>Write Blog</title>
        
        <style>
            
            
            body{background-color: #000;
    margin: 20;
    padding: 0;}
            
           #f1{background-color:#000;
    margin: 10;
    padding: 0;
    font-size: 20px;
    color: #ffc119
            }  
            
     #p1{font-size: 30px;
    color: #ffc119} 
     
     #a1{color:#000;
       margin-top:0; margin-left:0;
       background-color:#000;
       color:#ffc119;
   }             
   #a1:hover, #a1:active {color:#fff;}
            </style>
    </head>
    <body>
        <a id='a1' href="Home.jsp"> <b> HOME </b> </a> <br><br>
        <p id="p1"><b>MY BLOG ON SOCIAL ISSUES</b></p><br><br><br>
        <form id="f1" method="post" action="blogpost.jsp">
            <label>Title<br></label> <input name="title" type="text"><br><br>
                <label>Author<br></label> <input name="author" type="text"><br><br>
                 <label>Date<br></label> <input name="date" type="date"><br><br>
                  <label>Topic<br></label> <input name="topic" type="text" value="social issues"><br><br>
            <label for="content">Content<br></label>
            <textarea name = "content" columns="20" rows="20" style="width:700px"></textarea><br><br>
            <input type="Submit" value="Post Blog" >
        </form>
    </body>
</html>
