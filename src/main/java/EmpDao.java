import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmpDao {
	
	public static Connection getConnection(){
		Connection con=null;
//		Azure Database 
//		String url ="jdbc:mysql://gsaishankar.mysql.database.azure.com:3306/hireme?useSSL=true&requireSSL=false";
//		try{
//		   Class.forName("com.mysql.jdbc.Driver");
//		   con = DriverManager.getConnection(url, "gss@gsaishankar","08052002@Sai");
//		}
//		catch(Exception e){
//			System.out.println(e);
//		}
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hire_me","root","2010030054");
		}
		catch(Exception e){
			System.out.println(e);
		}
		return con;
	}
	
	public static boolean validate(Emp e) {
		boolean status = false;
		String sql="select * from emp where username=? and password=?";
		
		try{
			Connection con=UserDao.getConnection();
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,e.getUsername());
			ps.setString(2,e.getPassword());
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				if(e.getUsername().equals(rs.getString("username"))  && e.getPassword().equals(rs.getString("password")) ) {
					status=true;
				}
				else {
					status = false;
				}
			}
			else {
				status = false;
			}
			con.close();
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return status;	
	}
	
	public static int savejob(Job j){
		int status=0;
		String sql= "INSERT INTO `hire_me`.`jobs` (`id`, `emp`, `title`, `duration`, `stipend`, `location`) VALUES (?, ?, ?, ?, ?, ? );";
		try{
			Connection con=UserDao.getConnection();
			PreparedStatement ps=con.prepareStatement(sql);
			
			String username = j.getEmp();
			String idsql="select id from emp where userName='"+username+"'";
			PreparedStatement ips=con.prepareStatement(idsql);
			ResultSet rs=ips.executeQuery();
			
			int id;
			while (rs.next()) {
				id = rs.getInt(1);
				j.setId(id);
				break;
			}
			
			ps.setInt(1,j.getId());
			ps.setString(2, j.getEmp());
			ps.setString(3,j.getTitle());
			ps.setInt(4,j.getDuration());
			ps.setString(5,j.getStipend());
			ps.setString(6,j.getLocation());
			   
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		System.out.println(status);
		return status;
	}
}
