

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogInServlet
 */
@WebServlet("/LogInServlet")
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	FetchUser fs = new FetchUser();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
		User user = fs.fetchUser(userName);
		
		if(user == null) {
			response.sendRedirect("ErrorPage.jsp");
		}else if(user.getPassword().equals(password)){
			
			HttpSession session = request.getSession();
			
			session.setAttribute("uname", user.getUserName());
			session.setAttribute("profileImg", user.getImage());
			
			response.sendRedirect("Welcome.jsp");
		}else {
			response.sendRedirect("ErrorPage.jsp");
		}
	}

}
