<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Request Information</title>
</head>
<body>
<h3>130050131527</h3><br><br><hr>
<%out.println("Method:"+request.getMethod()+"<br/>");
out.println("Request URI:"+request.getRequestURI()+"<br/>");
out.println("Protocol:"+request.getProtocol()+"<br/>");
out.println("Path Info:"+request.getPathInfo()+"<br/>");
out.println("Path Translation:"+request.getPathTranslated()+"<br/>"); 
out.println("Query String:"+request.getQueryString()+"<br/>");
out.println("Content Length:"+request.getContentLength()+"<br/>");
out.println("Content Type:"+request.getContentType()+"<br/>");
out.println("Server Name:"+request.getServerName()+"<br/>");
out.println("Server Port"+request.getServerPort()+"<br/>");
out.println("Remote User:"+request.getRemoteUser()+"<br/>"); 
out.println("Remote Address:"+request.getRemoteAddr()+"<br/>");
out.println("Remote Host:"+request.getRemoteHost()+"<br/>");
out.println("Authentication Type:"+request.getAuthType()+"<br/>"); %>

</body>
</html>