

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletFetchingDataFromDatabase
 */
@WebServlet("/ServletFetchingDataFromDatabase")
public class ServletFetchingDataFromDatabase extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final String JDBC_DRIVER = "org.postgresql.Driver";
	static final String DB_URL = "jdbc:postgresql://127.0.0.1:5433/s2c130050131527";

	static final String USER = "postgres";
	static final String PASS = "shrey97266";

	Connection Conn;
	PreparedStatement stmt;
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		ResultSet rs = null;
		String sql="select actno,name,balance,phone,address from bank";
		try {
			Class.forName(JDBC_DRIVER);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		try {
			Conn=DriverManager.getConnection(DB_URL, USER, PASS);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			stmt=Conn.prepareStatement(sql);
			rs=stmt.executeQuery();
			while (rs.next())
			{
				out.println("<h3>"+rs.getInt("actno")+"	"+rs.getString("name")
				+"	"+rs.getInt("balance")+"	"+rs.getString("phone")
				+"	"+rs.getString("address")+"<h5>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		out.println("Enroll No: 130050131527");

	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
