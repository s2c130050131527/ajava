<html>
<head>
<title>Using JavaBeans in JSP</title>
</head>
<body>

	<h1>130050131059</h1>
	<h2>Using JavaBeans in JSP</h2>

	<jsp:useBean id="test" class="usebean" />

	<jsp:setProperty name="test" property="message" value="Hello JSP..." />

	<p>Got message....</p>

	<jsp:getProperty name="test" property="message" />


</body>
</html>