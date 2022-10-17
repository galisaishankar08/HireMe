<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="./css/profile.css">
    <link rel="shortcut icon" href="./images/favicon.ico')}}" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <title>Profile</title>
</head>

<body>
    <div class="layout">
        <nav class="navbar">
            <div class="logo">Hire Me</div>
            <div class="nav-menu">
                <ul class="nav-items">
                    <li><a href="index.jsp" class="nav-links">Home</a></li>
                    <li><a href="profile.jsp" class="nav-links">Profile</a></li>
                    <li><a href="signin.jsp" class="nav-links">Logout</a></li>
                </ul>
            </div>
            <div class="hamburger">
                <span class="bar"></span>
                <span class="bar"></span>
                <span class="bar"></span>
            </div>
        </nav>
		
		
		<%
			String username=(String)session.getAttribute("username");
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hireme","root","2010030054");
				
				String idsql="select id,email from user where userName='"+username+"'";
				PreparedStatement ips=con.prepareStatement(idsql);
				ResultSet irs=ips.executeQuery();
				
				int id=0;
				String email=null;
				while (irs.next()) {
					id = irs.getInt(1);
					email = irs.getString(2);
					session.setAttribute("id",id);
					session.setAttribute("email",email);
					break;
				}
				
				String sql="select * from profile where id=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setInt(1,id);
				ResultSet rs=ps.executeQuery();
				
				String name = null;
				String phno = null;
				String location = null;
				String skills = null;
				while (rs.next()){
					name = rs.getString(2);
					session.setAttribute("name",name);
					phno = rs.getString(3);
					session.setAttribute("phonenumber",phno);
					location = rs.getString(4);
					session.setAttribute("location",location);
					skills = rs.getString(5);
					session.setAttribute("skills",skills);
				}
			}
			catch(Exception e){
				System.out.println(e);
		}
		%>
		
		<%
			String uname=(String)session.getAttribute("name");
			String uemail=(String)session.getAttribute("email");
			String uphno=(String)session.getAttribute("phonenumber");
			String uloc=(String)session.getAttribute("location");
			String uskills=(String)session.getAttribute("skills");
		%>
		
        <div class="profile-box">
            <h2><% out.print(uname);%></h2>

            <div class="flex">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <h4><% out.print(uemail);%></h4>
            </div>

            <div class="flex">
                <i class="fa fa-phone-square" aria-hidden="true"></i>
                <h4><% out.print(uphno);%></h4>
            </div>

            <div class="flex">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <h4><% out.print(uloc);%></h4>
            </div>

            <div class="flex">
                <i class="fa fa-code" aria-hidden="true"></i>
                <h4><% out.print(uskills);%></h4>
            </div>
            
            <div class="flex">    
                <a href="edit.jsp"> <i class="fa fa-pencil-square" aria-hidden="true"></i>  edit</a>
            </div>
          </div>

    </div>
</body>
</html>