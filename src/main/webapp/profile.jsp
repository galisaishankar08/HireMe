<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="<%=request.getContextPath()%>/images/favicon.ico')}}" type="image/x-icon">
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
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hire_me","root","2010030054");
				
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
				String resume = null;
				while (rs.next()){
					name = rs.getString(2);
					session.setAttribute("name",name);
					phno = rs.getString(3);
					session.setAttribute("phonenumber",phno);
					location = rs.getString(4);
					session.setAttribute("location",location);
					skills = rs.getString(5);
					session.setAttribute("skills",skills);
					resume = rs.getString("resumelink");
					session.setAttribute("resumelink",resume);
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
			String uresumelink=(String)session.getAttribute("resumelink");
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
                <i class="fa fa-file" aria-hidden="true"></i>
                <h4><a href=<%= uresumelink%> target="_blank">Resume</a></h4>
            </div> 
            
		<%
		String title = null;
		String status = null;

			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hire_me","root","2010030054");
				
				
				String jsql="select title,status from applied_jobs where username=?";
				PreparedStatement jps=con.prepareStatement(jsql);
				jps.setString(1,username);
				ResultSet jrs=jps.executeQuery();
				%>
				<table id="myTable">
                <tr class="header">
                  <th style="width:40%;">Title</th>
                  <th style="width: 30%;">Status</th>
                </tr>
				 <%
				
				while (jrs.next()){
					title = jrs.getString(1);
					status = jrs.getString(2);
					%>
					 <tr>
	                    <td><% out.print(title);%></td>
	                    <td><% out.print(status);%></td>
	                </tr>
					<%
				}
			}
			catch(Exception e){
				System.out.println(e);
		}
		%>
		
                
         </table>
            
            <div class="flex edit">    
                <a href="edit.jsp"> <i class="fa fa-pencil-square" aria-hidden="true"></i>  edit</a>
            </div>
          </div>

    </div>
</body>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    scroll-behavior: smooth;
}

.layout {
    height: 100vh;
    background: url(https://images.unsplash.com/photo-1528353518104-dbd48bee7bc4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80) no-repeat;
    background-size: cover;
    background-position: center center;
}

.navbar {
    background: rgb(9 13 61);
    display: flex;
    align-items: center;
    height: 70px;
    position: relative;
    transition: all 0.3s ease-in-out;
}

.logo {
    color: white;
    font-size: 30px;
    font-weight: 700;
    margin-left: 40px;
}

.nav-menu {
    position: absolute;
    right: 50px;

}

.nav-items {
    display: flex;
    margin-left: 20px;

}

.nav-items li {
    list-style: none;

}

.nav-items li a {
    text-transform: uppercase;
    color: white;
    position: relative;
    text-decoration: none;
    padding-left: 50px;
    font-size: 20px;

    padding-bottom: 10px;
}

.nav-items li:hover a {
    color: #c6c6c6;

}

.hamburger {
    display: none;
    cursor: pointer;
    transition: 2s linear;
}

.bar {
    height: 3px;
    width: 22px;
    display: block;
    background: white;
    margin: 4px 9px;
    transition-property: all;
    transition-delay: 0.1s;
}

table{
    border-collapse: collapse;
    width: 100%;
    border: 1px solid #03e9f4;
    border-radius: 20px;
    font-size: 18px;
  }

  table th {
    text-align: left;
    padding: 12px;
    color: #03e9f4;
  }

  table td{
    text-align: left;
    padding: 12px;
    color: #fff;
    word-wrap: break-word;
  }
  
 table tr {
    border-bottom: 1px solid #03e9f4;
    border-radius: 20px;
  }
  
  table tr.header {
    background-color:  #243b55;
  }

  a > .edit{
    color: #03e9f4;
  }

@media (max-width:800px) {
    .nav-menu {
        position: absolute;
        right: 130vh;


    }

    .navbar {
        justify-content: space-between;
    }

    .hamburger {
        display: block;
        margin-right: 24px;
    }


    .bar.active:nth-child(1) {

        transform: translateY(8px) rotate(45deg);
    }

    .bar.active:nth-child(2) {

        visibility: hidden;
    }

    .bar.active:nth-child(3) {

        transform: translateY(-5px) rotate(-45deg);
    }

    .nav-items {
        margin: 0 0px;
        background: #090d3d;
        height: 50vh;
        width: 100vw;
        flex-direction: column;
        display: flex;
        text-align: center;
        line-height: 77px;
        margin-top: 30rem;
       
    }

    .nav-menu.active {
        right: unset;
    }
}

.profile-box {
    position: absolute;
    top: 50%;
    left: 50%;
    width: 475px;
    padding: 40px;
    transform: translate(-50%, -50%);
    background: rgba(0,0,0,.5);
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgba(0,0,0,.6);
    border-radius: 10px;
  }
  
  .profile-box h2 {
    margin: 0 0 30px;
    padding: 0;
    text-transform: uppercase;
    color: #fff;
    text-align: center;
  }

  i{
    color: #03e9f4;
  }

  h4{
    color: #fff;
    padding-left: 10px;
  }

  .flex{
    display: flex;
    margin: 15px;
  }

  .profile-box a{
    color: #fff;
  }
  
  .edit{
    text-decoration: none;
    padding-left: 10px;
    color: #03e9f4;
    margin-left: 300px;
    font-size: 20px;
  }

  .profile-box a:hover{
    color: #03e9f4;
    text-decoration: underline;
  }
</style>
</html>