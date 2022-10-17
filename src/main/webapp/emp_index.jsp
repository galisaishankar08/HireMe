<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/index.css">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/images/favicon.ico')}}" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <title>Employee Dashboard</title>
</head>

<body>
    <header class="layout">
        <nav class="navbar">
            <div class="logo">GSS</div>
            <div class="nav-menu">
                <ul class="nav-items">
                    <li>
                        <form method="post">
                            <select id="type" name="type">
                                <option value="All">All</option>
                                <option value="location">Location</option>
                                <option value="skill">Skill</option>
                            </select>
                            <input type="text" placeholder="Search" name="key" class="nav-links">
                        </form>
                    </li>
                    <li><a href="emp_index.html" class="nav-links">Home</a></li>
                    <li><a href="emp_signin.html" class="nav-links">Logout</a></li>
                </ul>
            </div>
            <div class="hamburger">
                <span class="bar"></span>
                <span class="bar"></span>
                <span class="bar"></span>
            </div>
        </nav>

        <div class="section">
            <h2>Hi {{emp_uname}} !</h2>

            {% for i in range(0,n) %}
                    <div class="e-box">
                        <div class="name flex">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <h3>{{ results[i][3] }}</h3>
                        </div>
        
                        <div class="flex">
                            <div class="flex">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                <div>
                                    <h4>Email</h4>
                                    <p>{{ results[i][2] }}</p> 
                                </div>
                            </div>
        
                            <div class="flex">
                                <i class="fa fa-phone-square" aria-hidden="true"></i>
                                <div>
                                    <h4>Phone Number</h4>
                                    <p>{{ results[i][4] }}</p> 
                                </div>
                            </div>
        
                            <div class="location flex">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                                <div>
                                    <h4>Location</h4>
                                    <p>{{ results[i][5] }}</p> 
                                </div>
                            </div>
        
                            <div class="flex">
                                <i class="fa fa-code" aria-hidden="true"></i>
                                <div>
                                    <h4>Skills</h4>
                                    <p>{{ results[i][6] }}</p> 
                                </div>
                            </div>
        
                        </div>
                    </div>   
            {%endfor%}
            
        </div>

    </header>
    
</body>
</html>
