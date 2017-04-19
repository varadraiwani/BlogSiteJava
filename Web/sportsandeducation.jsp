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
            </style>
    </head>
    <body><p id="p1"><b>MY BLOG ON SPORTS AND EDUCATION</b></p><br><br><br>
        <form id="f1" method="post" action="blogpost.jsp">
            <label>Title<br></label> <input name="title" type="text"><br><br>
                <label>Author<br></label> <input name="author" type="text"><br><br>
                 <label>Date<br></label> <input name="date" type="date"><br><br>
                  <label>Topic<br></label> <input name="topic" type="text" value="sports and education"><br><br>
            <label for="content">Content<br></label>
            <textarea name = "content" columns="20" rows="20" style="width:700px"></textarea><br><br>
            <input type="Submit" value="Post Blog" >
        </form>
    </body>
</html>
