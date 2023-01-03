<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Insert title here</title>
   </head>
       <style>
    .content{ 
		max-width: max-content;
		margin: auto;
		padding: 0;
		font-size: 31px;
 	 }
</style>
   <body>
   <div class="content">
      <b>View | <a href="index.html">Upload</a></b><br/><br/>
      <form action="viewImage.jsp" method="post">
         <input type="text" name="id" required="required" placeholder="enter image id.."/><br/><br/>
         <input type="submit"/>
      </form>
      </div>
   </body>
</html>