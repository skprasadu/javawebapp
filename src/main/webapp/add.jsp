<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Implicit Guru JSP1</title>
</head>
<body>

<% int num1=10;int num2=20;
int c=num1+num2;
int d=num1*num2;
out.println("num1 is " +num1);
out.println("num2 is "+num2);
out.println("sum is "+c);
out.println("multiply is "+d);
%>
</body>
</html>