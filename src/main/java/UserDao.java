import java.sql.*;

public class UserDao {
	
	public static Connection getConnection(){
		Connection con=null;
		String url ="jdbc:mysql://gsaishankar.mysql.database.azure.com:3306/hireme?useSSL=true&requireSSL=false";
		try{
		   Class.forName("com.mysql.jdbc.Driver");
		   con = DriverManager.getConnection(url, "gss@gsaishankar","08052002@Sai");
		}
		catch(Exception e){
			System.out.println(e);
		}
		return con;
	}
	
	public static int register(User u){
		int status=0;
		String sql= "INSERT INTO `hireme`.`user` (`username`, `email`, `password`) VALUES (?,?,?);";
		try{
			Connection con=UserDao.getConnection();
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,u.getUsername());
			ps.setString(2,u.getEmail());
			ps.setString(3,u.getPassword());
			   
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public static boolean validate(User u) {
		boolean status = false;
		String sql="select * from user where userName=? and password=?";
		
		try{
			Connection con=UserDao.getConnection();
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,u.getUsername());
			ps.setString(2,u.getPassword());
			
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				if(u.getUsername().equals(rs.getString("username"))  && u.getPassword().equals(rs.getString("password")) ) {
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
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;	
	}
}
