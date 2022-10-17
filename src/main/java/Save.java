

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Save
 */
@WebServlet("/Save")
public class Save extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Save() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String phonenumber = request.getParameter("phno");
		String location = request.getParameter("location");
		String skills = request.getParameter("skills");
		
		HttpSession session=request.getSession(false);  
        String username=(String)session.getAttribute("username");  
        
		User u = new User();
		u.setUsername(username);
		u.setName(name);
		u.setPhoneNumber(phonenumber);
		u.setLocation(location);
		u.setSkills(skills);
		
		int status = UserDao.save(u);
		
		if(status !=0) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
		    dispatcher.include(request, response);
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
		    dispatcher.include(request, response);
		}
	}

}
