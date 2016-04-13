<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>

<html>
<head>
<title>JSTL xml tag Example</title>
</head>
<body>
	<center>
		<h3>Enroll No: 130050131527</h3>
		<h3>Books Info:</h3>

		<c:set var="xmltext">
			<books> <book> <id>1</id> <name>half gf</name> <author>Chetan
			Bhagat </author> </book> <book> <id>2</id> <name>Revolution 2020</name> <author>Chetan
			Bhagat</author> </book> <book> <id>3</id> <name>Till the last Breadth</name> <author>Durjoy
			Dutta </author> </book> <book> <id>4</id> <name>Shiva Triology</name> <author>Amish
			Tripathi </author> </book> </books>
		</c:set>

		<x:parse xml="${xmltext}" var="output" />
		<table border="0">
			<tr>
				<th>S.No</th>
				<th>Book Name</th>
				<th>Author</th>
			</tr>
			<x:forEach select="$output/books/book" var="item">
				<tr>
					<td><x:out select="$item/id" /></td>
					<td><x:out select="$item/name" /></td>
					<td><x:out select="$item/author" /></td>
				</tr>
			</x:forEach>
		</table>

		<h2>Books with S.No >1 are in bold</h2>
		<x:parse var="doc" xml="${xmltext}" />
		<table border="0">
			<x:forEach var="book" select="$doc/books/book">
				<tr>
					<x:choose>
						<x:when select="id>1">
							<td><b><x:out select="name" /></b></td>
							<td><b><x:out select="author" /></b></td>
						</x:when>
						<x:otherwise>
							<td><x:out select="name" /></td>
							<td><x:out select="author" /></td>
						</x:otherwise>
					</x:choose>
				</tr>
			</x:forEach>
		</table>
	</center>
</body>
</html>