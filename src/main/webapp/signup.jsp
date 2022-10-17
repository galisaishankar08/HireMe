<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="./static/css/signup.css">
    <link rel="shortcut icon" href="./static/css/favicon.ico')}}" type="image/x-icon">

    <title>Register</title>
</head >
<body >
    <div class="login-box">
        <h2>Register</h2>
        <form action="Signup" method="post">
          <div class="user-box">
            <input type="text" name="username" autocomplete="false" required>
            <label>Username</label>
          </div>
          <div class="user-box">
            <input type="email" name="email" autocomplete="false" required>
            <label>Email</label>
          </div>
          <div class="user-box">
            <input type="password" name="password" autocomplete="false" required>
            <label>Password</label>
          </div>
          
          <div class="btns">
            <button type="Submit" name="save" class="btn"> Submit </button>
          </div>

            <p>Already registered?   <a href="signin.html" class="signup" style="color: #03e9f4;">SignIn</a> </p>
              
        </form>
      </div>

</body>
</html>
