

import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Applyjob
 */
@WebServlet("/Applyjob")
public class Applyjob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Applyjob() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String title = request.getParameter("title");
		int duration = Integer.parseInt(request.getParameter("duration"));
		String stipend = request.getParameter("stipend");
		String location = request.getParameter("location");
		String status = request.getParameter("status");
		String company = request.getParameter("company");
		
		HttpSession session=request.getSession(false);  
        String username=(String)session.getAttribute("username");
        
        String name = "";
        String phno = "";
        String ulocation = "";
        String skills = "";
        String email = "";
        String resume_link = "";
        int id = 0;
        
        String sql= "INSERT INTO `hire_me`.`applied_jobs` (`username`, `title`, `duration`, `stipend`, `location`, `status`, `name`, `phno`, `ulocation`, `skills`, `email`, `company`, `resumelink`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?);";
        
		try{
			int st = 0;
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hire_me","root","2010030054");
			
			String useremsql = "select id,email from user where username= '"+username+"'";
			PreparedStatement eups=con.prepareStatement(useremsql);
			ResultSet ers=eups.executeQuery();
			if(ers.next()) {
				id = ers.getInt(1);
				email = ers.getString(2);
			}
			
			String usersql = "select * from profile where id= '"+id+"'";
			
			PreparedStatement ups=con.prepareStatement(usersql);
			ResultSet rs=ups.executeQuery();
			if(rs.next()) {
				name = rs.getString(2);
				phno = rs.getString(3);
				ulocation = rs.getString(4);
				skills = rs.getString(5);
				resume_link = rs.getNString(6);
			}
			
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, username);
			ps.setString(2,title);
			ps.setInt(3,duration);
			ps.setString(4,stipend);
			ps.setString(5,location);
			ps.setString(6,status);
			ps.setString(7,name);
			ps.setString(8,phno);
			ps.setString(9,ulocation);
			ps.setString(10,skills);
			ps.setString(11,email);
			ps.setString(12,company);
			ps.setString(13,resume_link);
			   
			st=ps.executeUpdate();
			if(st!=0) {
				response.sendRedirect("profile.jsp");
			}
			else {
				response.sendRedirect("index.jsp");
			}
			con.close();
		}
		catch(Exception ex) {
			response.sendRedirect("index.jsp");
			ex.printStackTrace();
		}
	}

}
