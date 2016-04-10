<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>Info</title>
</head>
<body>
 
<sql:setDataSource var="con" driver="org.postgresql.Driver" 
url="jdbc:postgresql://127.0.0.1:5433/s2c130050131527" 
user="postgres" password="shrey97266"/>

<%
Date DoB = new Date("2001/09/12");
int studentId = 103;
%>
 
<sql:update dataSource="${con}" var="count">
   UPDATE student SET dob = ? WHERE Id = ?
   <sql:dateParam value="<%=DoB%>" type="DATE" />
   <sql:param value="<%=studentId%>" />
</sql:update>
 
<sql:query dataSource="${con}" var="result">
   SELECT * from student;
</sql:query>
 
<table border="1">
<tr>
   <th>Emp ID</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>DoB</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.firstname}"/></td>
   <td><c:out value="${row.lastname}"/></td>
   <td><c:out value="${row.dob}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>