

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JobStatus
 */
@WebServlet("/JobStatus")
public class JobStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JobStatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email = request.getParameter("email");
		String title = request.getParameter("title");
		String status = request.getParameter("status");
		
		String query = "UPDATE applied_jobs, (select id from applied_jobs where email=? and title=?) t SET `status` = ? WHERE applied_jobs.id = t.id;";
		
		try{
			int st = 0;
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hire_me","root","2010030054");
			
			PreparedStatement ups=con.prepareStatement(query);
			ups.setString(1, email);
			ups.setString(2, title);
			ups.setString(3, status);
			
			st=ups.executeUpdate();
			if(st!=0) {
				response.sendRedirect("emp_index.jsp");
			}
			else {
				response.sendRedirect("emp_index.jsp");
			}
			con.close();
		}
		catch(Exception ex) {
			response.sendRedirect("emp_index.jsp");
			ex.printStackTrace();
		}
	}

}
