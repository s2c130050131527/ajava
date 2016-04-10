<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
	import="java.io.*,java.sql.*,javax.servlet.*,javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<c:set var="srno" value="${param.id}" />
	<c:set var="bookname" value="${param.bookname}" />
	<c:set var="authorname" value="${param.author}" />
	<sql:setDataSource var="con" driver="org.postgresql.Driver"
		url="jdbc:postgresql://127.0.0.1:5433/s2c130050131527" user="postgres"
		password="shrey97266" />
	<sql:update dataSource="${con}" var="count">
            insert into books(bookname,authorname,srno) values(?,?,?); 
        <sql:param value="${srno}" />
		<sql:param value="${bookname}" />
		<sql:param value="${authorname}" />
	</sql:update>
	<sql:query dataSource="${con}" var="rs">select * from books;</sql:query>
	<h1 align="center">Book Details</h1>
	<table align="center" border="1">
		<tr>
			<th>Id</th>
			<th>Book Name</th>
			<th>Author</th>
		</tr>
		<c:forEach var="row" items="${rs.rows}">
			<tr>
				<td><c:out value="${row.bookname}" /></td>
				<td><c:out value="${row.authorname}" /></td>
				<td><c:out value="${row.srno}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
