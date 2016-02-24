
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionLastAccessTime
 */
@WebServlet("/SessionLastAccessTime")
public class SessionLastAccessTime extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession hs = request.getSession();
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		Date st = new Date(hs.getCreationTime());
		Date lt = new Date(hs.getLastAccessedTime());
		out.println("Enroll No :130050131527");
		out.println("<h4>Session Start Time:" + st.toString() + "<h4>");
		out.println("<h4>Session Last Access Time:" + lt.toString() + "<h4>");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
