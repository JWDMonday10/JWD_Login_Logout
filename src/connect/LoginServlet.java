package connect;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class LoginServlet
 */
@SuppressWarnings("serial")
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String username =request.getParameter("username");
		String password =request.getParameter("password");
		String email =request.getParameter("email");


		if(request.getParameter("optradio") != null) {
			if(request.getParameter("optradio").equals("radio1")) {
				if(connectDB.ConnDB(username, password, email)){
					HttpSession session =request.getSession();
					session.getAttribute("username");
					request.setCharacterEncoding("UTF-8");
					response.setCharacterEncoding("UTF-8");
					response.setContentType("text/html; charset=UTF-8");
					response.sendRedirect("DV_Home.jsp");
				}
				else
				{																						
					HttpSession session =request.getSession();
					session.getAttribute("username");
					request.setCharacterEncoding("UTF-8");
					response.setCharacterEncoding("UTF-8");
					response.setContentType("text/html; charset=UTF-8");
					response.sendRedirect("Form_Login.jsp");
				}

			}

		}
	}

}
