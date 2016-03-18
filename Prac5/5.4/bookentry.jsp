<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Books</title>
</head>
<body>
	<form action="booklist.jsp" method="post">
		<div
			style="border: 3px; border-style: solid; border-color: gray; margin-left: 250px; margin-right: 250px; text-align: center;">
			<h1>Book Entry Form</h1>
			<div>

				<table
					style="padding: 10px; margin-left: auto; margin-right: auto; text-align: left;">
					<tr>
						<td style="padding: 10px">Book Name:</td>
						<td style="padding: 10px"><input type="text" name="bookname"></td>
					</tr>
					<tr>
						<td style="padding: 10px">Author:</td>
						<td style="padding: 10px"><input type="text"
							name="authorname"></td>
					</tr>
				</table>

			</div>
			<input type="submit" value="Add Book">
		</div>
	</form>

</body>
</html>