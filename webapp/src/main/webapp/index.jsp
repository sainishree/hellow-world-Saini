<h1> Hello, Welcome DXC Gear </h1> 
<h2> Completed DevOps CI/CD pipeline integration with kubernetes </h2>
<h2> Below files are modified in last 30 mins </h2>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.io.*, java.net.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Reading Text File</title>
</head>
<body>
<%
String fileName = "/WEB-INF/publish.out";
InputStream ins = application.getResourceAsStream(fileName);
try
{
if(ins == null)
{
response.setStatus(response.SC_NOT_FOUND);
}
else
{
BufferedReader br = new BufferedReader((new InputStreamReader(ins)));
String data;
while((data= br.readLine())!= null)
{
<font size="4" color="red">
out.println(data+"<br>");
</font>
}
}
}
catch(IOException e)
{
out.println(e.getMessage());
}
%>
%</body>
%</html>

