<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/edit.css">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/images/favicon.ico')}}" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <title>Edit Profile</title>
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

        <div class="edit-box">
            <h2>Edit Profile</h2>
            <form action="Save" method="post">
              <div class="user-box">
                <input type="text" name="name" autocomplete="false" required>
                <label>Name</label>
              </div>
              <div class="user-box">
                <input type="number" name="phno" autocomplete="false" required>
                <label>Phone Number</label>
              </div>

              <div class="user-box">
                <input type="text" name="location" autocomplete="false" required>
                <label>Loction</label>
              </div>

              <div class="user-box">
                <input type="text" name="skills" autocomplete="false" required>
                <label>skills</label>
              </div>
              
              <div class="btns flex">
                <button type="Submit" name="save" class="btn"> Submit </button>
              </div>
                  
            </form>
          </div>

    </div>
</body>
</html>
