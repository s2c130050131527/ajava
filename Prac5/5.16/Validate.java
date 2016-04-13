

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.avin.services.validation;

/**
 * Servlet implementation class Validate
 */
@WebServlet("/Validate")
public class Validate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String s=request.getParameter("uname");
		String n=request.getParameter("pass");
		HttpSession s1=request.getSession();
		s1.setAttribute("Name", s);
		String p=request.getParameter("pass");
		
		validation v=new validation();
		Boolean b=v.confirm(s,n);
		if(b){
			response.sendRedirect("/jspexamples/16/redirect.jsp");
		}
		else {
				response.sendRedirect("/jspexamples/16/login.jsp");
				}
		}
}


