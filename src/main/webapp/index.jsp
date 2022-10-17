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
.grid{
    position: absolute;
    top: 10%;
    left: 5%;
}

.box {
    width: 800px;
    margin: 20px;
    padding: 30px;
    background: rgba(0,0,0,.5);
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgba(0,0,0,.6);
    border-radius: 10px;
  }

  i{
    color: #03e9f4;
  }

  h3, h4{
    color: #fff;
    padding-left: 10px;
  }

  p{
    color: #fff;
    padding-top: 15px;
  }

  .flex{
    display: flex;
    margin: 10px 10px 0px 40px;
  }

  .section h2{
    color: #03e9f4;
    margin: 20px;
  }

  .e-box {
    width: 80%;
    margin: 30px;
    padding: 30px;
    background: rgba(0,0,0,.5);
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgba(0,0,0,.6);
    border-radius: 10px;
  }

 input, select{
    background: transparent;
    border: 1px solid #03e9f4;
    border-radius: 5px;
    color: #fff;
    padding: 5px;
  }

  option{
    background-color: #090d3d;
  }

  .location p{
    text-transform: capitalize;
  }

  .name h3{
    text-transform: uppercase;
  }
  
  button{
    background-color: transparent;
  }
  
  button {
    position: relative;
    display: inline-block;
    padding: 10px 20px;
    color: #03e9f4;
    border: 1px solid #03e9f4;
    font-size: 16px;
    text-decoration: none;
    overflow: hidden;
    transition: .5s;
    margin-top: 10px;
    margin-left: 50px;
    letter-spacing: 2px;
  }
 button:hover {
    background: #03e9f4;
    color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 5px #03e9f4,
                0 0 25px #03e9f4,
                0 0 50px #03e9f4,
                0 0 100px #03e9f4;
  }
</style>

</html>