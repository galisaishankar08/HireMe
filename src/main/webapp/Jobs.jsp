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
    
    <title>Jobs</title>
</head>

<body>
    <div class="layout">
        <nav class="navbar">
            <div class="logo">Hire Me</div>
            <div class="nav-menu">
                <ul class="nav-items">
                    <li><a href="emp_index.jsp" class="nav-links">Home</a></li>
                    <li><a href="Jobs.jsp" class="nav-links">Jobs</a></li>
                    <li><a href="selectedpersons.jsp" class="nav-links">Selected</a></li>
                    <li><a href="emp_signin.jsp" class="nav-links">Logout</a></li>
                </ul>
            </div>
            <div class="hamburger">
                <span class="bar"></span>
                <span class="bar"></span>
                <span class="bar"></span>
            </div>
        </nav>
		
	    <div class="profile-box">
            <table id="myTable">
                <tr class="header">
                  <th style="width:30%;">Title</th>
                  <th style="width:40%;">Duration</th>
                  <th style="width: 40%;">Stipend</th>
                  <th style="width: 40%;">location</th>
                </tr>
		<%
			String username=(String)session.getAttribute("emp_username");
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hire_me","root","2010030054");
				
				
				String sql="select title,duration,stipend,location from jobs where emp=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,username);
				ResultSet rs=ps.executeQuery();
				
				String title = null;
				int duration = 0;
				String stipend = null;
				String location = null;
				while (rs.next()){
					title = rs.getString(1);
					duration = rs.getInt(2);
					stipend = rs.getString(3);
					location = rs.getString(4);
					%>
					 <tr>
	                    <td><% out.print(title);%></td>
	                    <td><% out.print(duration);%> months</td>
	                    <td><% out.print(stipend);%> /month</td>
	                    <td><% out.print(location);%></td>
	                </tr>
					<%
				}
			}
			catch(Exception e){
				System.out.println(e);
		}
		%>
		
                
               
                
            </table>
            
            <div class="flex">    
                <a href="postajob.jsp"> <i class="fa fa-pencil-square" aria-hidden="true"></i>  Create Job</a>
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

  table a{
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
    top: 35%;
    left: 50%;
    width: 80%;
    padding: 40px;
    transform: translate(-50%, -50%);
    background: rgba(0,0,0,.5);
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgba(0,0,0,.6);
    border-radius: 10px;
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
    text-decoration: none;
    padding-left: 10px;
    color: #03e9f4;
    margin-left: 300px;
    font-size: 20px;
  }

  .profile-box a:hover{
    text-decoration: underline;
  }
</style>
</html>