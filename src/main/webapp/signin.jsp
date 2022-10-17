<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/signin.css">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/images/favicon.ico')}}" type="image/x-icon">
    <title>Login</title>
</head >
<body >
    <div class="login-box">
        <h2>Login</h2>
        <form action="Signin" method="post">
          <div class="user-box">
            <input type="text" name="username" autocomplete="false" required>
            <label>Username</label>
          </div>
          <div class="user-box">
            <input type="password" name="password" autocomplete="false" required>
            <label>Password</label>
          </div>

            <a class="forget" href="#">Forget Password ?</a>
          
          <div class="btns flex">
            <button type="Submit" name="save" class="btn"> Submit </button>
            <a href="emp_signin.html" class="btn"> Employee Login</a>
          </div>

            <p>Not registered yet?  <a href="signup.html" class="signup" style="color: #03e9f4;">Create an Account</a> </p>
              
        </form>
      </div>

</body>
</html>
