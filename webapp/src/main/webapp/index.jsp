<h1> Hello, Welcome DXC Gear </h1>
<h2> Completed DevOps CI/CD pipeline integration with kubernetes </h2>
<h2> Below files are modified in last 5 mins </h2>
<%@ page import = "java.io.*,java.util.*" %>


<html>
   <head>
<style type="text/css">
.custom {
	font-family: Courier;
	color: red;
	font-size:20px;
}
</style>
      <title>Hello, Welcome DXC Gear</title>
   </head>
   
   <body>
      <center>
         <%
            // Set refresh, autoload time as 10 seconds
            response.setIntHeader("Refresh", 10);
            
            // Get current time
            Calendar calendar = new GregorianCalendar();
            String am_pm;
            
            int hour = calendar.get(Calendar.HOUR);
            int minute = calendar.get(Calendar.MINUTE);
            int second = calendar.get(Calendar.SECOND);
            
            if(calendar.get(Calendar.AM_PM) == 0)
               am_pm = "AM";
            else
               am_pm = "PM";
            String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
            out.println("Current Time: " + CT + "\n");
         %>

      </center>
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
out.println(data+"<br>");
}	
}
}
catch(IOException e)
{
out.println(e.getMessage());
}
%>
   
   </body>
</html>
