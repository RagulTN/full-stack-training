<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add two Numbers</title>
</head>
<body>
<%
 String num1 = request.getParameter("num1");
 String num2 = request.getParameter("num1");
 int num11 = Integer.parseInt(num1);
 int num22 = Integer.parseInt(num2);
 int add = num11 + num22;
 String s = Integer.toString(add);                                                                
 %>
 <%=s %>
</body>
</html>