

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Savejob
 */
@WebServlet("/Savejob")
public class Savejob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Savejob() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String title = request.getParameter("title");
		int duration = Integer.parseInt(request.getParameter("duration"));
		String stipend = request.getParameter("stipend");
		String location = request.getParameter("location");
		
		HttpSession session=request.getSession(false);  
        String emp=(String)session.getAttribute("emp_username");  
        
		Job j = new Job();
		j.setEmp(emp);
		j.setTitle(title);
		j.setDuration(duration);
		j.setStipend(stipend);
		j.setLocation(location);
		
		int status = EmpDao.savejob(j);
		
		if(status !=0) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Jobs.jsp");
		    dispatcher.include(request, response);
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("postajob.jsp");
		    dispatcher.include(request, response);
		}
	}

}
