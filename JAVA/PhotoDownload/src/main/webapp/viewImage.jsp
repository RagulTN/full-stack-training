<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<html>
   <head>
      <title>View Image</title>
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
      <%
         String id = request.getParameter("id");
         %>
      <img src="getImage.jsp?id=<%=id%>" width="400px"/>
      </div>
   </body>
</html>