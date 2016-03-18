<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.border {
	padding: 5px;
	border: 0.5px;
	border-color: black;
	border-style: solid;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book List</title>
</head>
<body>
	<table
		style="margin-left: auto; margin-right: auto; border: 2px; border-color: black; border-style: solid;">
		<tr>
			<th class="border">S.no</th>
			<th class="border">Book</th>
			<th class="border">Author</th>
		</tr>
		<%
			String bookname = request.getParameter("bookname");
			String authorname = request.getParameter("authorname");
			final String JDBC_DRIVER = "org.postgresql.Driver";
			final String DB_URL = "jdbc:postgresql://127.0.0.1:5433/s2c130050131527";

			final String USER = "postgres";
			final String PASS = "shrey97266";

			Connection conn;
			Statement stmt;

			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			stmt = conn.createStatement();
			String sql = "insert into books (\"bookname\",\"authorname\") values('" + bookname + "','" + authorname
					+ "')";
			int i = 0;
			try {
				i = stmt.executeUpdate(sql);
			} catch (SQLException e) {
				e.printStackTrace();

			}
			if (i == 1) {
		%><script>
	alert("Inserted successfully");
</script>
		<%
			} else {
		%><script>
			alert("Insert Failed!! Book Name or Author name cannot be null");
		</script>
		<%
			}
			sql = "select * from books";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
		%>
		<tr>
			<td class="border">
				<%
					out.print(rs.getInt(1));
				%>
			</td>
			<td class="border">
				<%
					out.print(rs.getString(2));
				%>
			</td>
			<td class="border">
				<%
					out.print(rs.getString(3));
				%>
			</td>
		</tr>
		<%
			}
		%>

	</table>

</body>
</html>