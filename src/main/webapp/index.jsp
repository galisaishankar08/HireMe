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
    
    <title>Home</title>
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

        <div class="grid">

            <div class="box">
                <h3>Python Web Development</h3>
                
                <div class="flex">
                    <div class="flex">
                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                        <div>
                            <h4>Duration</h4>
                            <p>4 Months</p> 
                        </div>
                    </div>

                    <div class="flex">
                        <i class="fa fa-money" aria-hidden="true"></i>
                        <div>
                            <h4>Stipend</h4>
                            <p>10000 /month</p> 
                        </div>
                    </div>

                    <div class="location flex">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <h4>Remote</h4> 
                    </div>
                    
                    <div class="apply flex">
                        <button type="Submit" name="save" class="btn"> Apply </button>
                    </div>
                </div>
            </div>

            <div class="box">
                <h3>React, Node.js Development</h3>
                
                <div class="flex">
                    <div class="flex">
                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                        <div>
                            <h4>Duration</h4>
                            <p>3 Months</p> 
                        </div>
                    </div>

                    <div class="flex">
                        <i class="fa fa-money" aria-hidden="true"></i>
                        <div>
                            <h4>Stipend</h4>
                            <p>10000 /month</p> 
                        </div>
                    </div>

                    <div class="location flex">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <h4>Remote</h4> 
                    </div>
                    
                    <div class="apply flex">
                        <button type="Submit" name="save" class="btn"> Apply </button>
                    </div>
                </div>
            </div>

            <div class="box">
                <h3>Mobile App Development</h3>
                
                <div class="flex">
                    <div class="flex">
                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                        <div>
                            <h4>Duration</h4>
                            <p>6 Months</p> 
                        </div>
                    </div>

                    <div class="flex">
                        <i class="fa fa-money" aria-hidden="true"></i>
                        <div>
                            <h4>Stipend</h4>
                            <p>12000 /month</p> 
                        </div>
                    </div>

                    <div class="location flex">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <h4>Remote</h4> 
                    </div>
                    
                    <div class="apply flex">
                        <button type="Submit" name="save" class="btn"> Apply </button>
                    </div>
                </div>
            </div>

        </div>
    </div>
</body>
</html>