<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
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
            <a href="emp_signin.jsp" class="btn"> Recruiter Login</a>
          </div>

            <p>Not registered yet?  <a href="signup.jsp" class="signup" style="color: #03e9f4;">Create an Account</a> </p>
              
        </form>
      </div>

</body>

<style>
html {
    height: 100%;
  }
  body {
    margin:0;
    padding:0;
    font-family: sans-serif;
    background: linear-gradient(#141e30, #243b55);
  }
  
  .login-box {
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
  
  .login-box h2 {
    margin: 0 0 30px;
    padding: 0;
    color: #fff;
    text-align: center;
  }
  
  .login-box .user-box {
    position: relative;
  }
  
  .login-box .user-box input {
    width: 100%;
    padding: 10px 0;
    font-size: 16px;
    color: #fff;
    margin-bottom: 30px;
    border: none;
    border-bottom: 1px solid #fff;
    outline: none;
    background: transparent;
  }
  .login-box .user-box label {
    position: absolute;
    top:0;
    left: 0;
    padding: 10px 0;
    font-size: 16px;
    color: #fff;
    pointer-events: none;
    transition: .5s;
  }
  
  .login-box .user-box input:focus ~ label,
  .login-box .user-box input:valid ~ label {
    top: -20px;
    left: 0;
    color: #03e9f4;
    font-size: 12px;
  }

  .flex {
    display: flex;
    justify-content: space-between;
    margin-top: -15px;
  }
  
  button{
    background-color: transparent;
  }

  .btns a, button {
    position: relative;
    display: inline-block;
    padding: 10px 20px;
    color: #03e9f4;
    border: 1px solid #03e9f4;
    font-size: 16px;
    text-decoration: none;
    text-transform: uppercase;
    overflow: hidden;
    transition: .5s;
    margin-top: 40px;
    letter-spacing: 4px
  }
  
  .btns a:hover, button:hover {
    background: #03e9f4;
    color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 5px #03e9f4,
                0 0 25px #03e9f4,
                0 0 50px #03e9f4,
                0 0 100px #03e9f4;
  }

  .forget {
    color: #03e9f4;
    margin-left: 250px;
  }

  .login-box p {
    margin: 30px 0 0 0;
    padding: 0;
    color: #fff;
    text-align: center;
  }

</style>
</html>
