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
      <%
         String message = request.getParameter("message");
         if(message != null){
         out.print(message);
         }
         %>
   <br><br>
   <a href="index.html">Index</a>
   </div>
   </body>
</html>