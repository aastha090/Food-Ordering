<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background: url('login_bg.png') no-repeat center center fixed;
        background-size: cover;
        height: 100vh;
        overflow: hidden;
    }
    .login-form {
        background: rgba(255, 255, 255, 0.8);
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.5);
        margin-top: 20vh;
    }
    .register-link {
        color: blue;
    }
   
    .welcome-text {
        position: absolute;
        top: 50px;
        left: 50%;
        transform: translateX(-50%);
        text-align: center;
        font-size: 36px; 
        color: #ffcc00; 
        text-transform: uppercase; 
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    }
</style>

</head>
<body>
<div class="container">
    <div class="welcome-text">
        <p>Welcome to Foodie Hub!</p>
    </div>
    </div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <form action="welcome.jsp" method="post" class="login-form"> 
                <h2 class="text-center mb-4">Login</h2>
                <div class="form-group">
                    <label for="inputEmail">Email address</label>
                    <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Enter email" required autofocus>
                </div>
                <div class="form-group">
                    <label for="inputPassword">Password</label>
                    <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
                </div>
                <div class="form-group form-check">
                    <input type="checkbox" class="form-check-input" id="rememberMe">
                    <label class="form-check-label" for="rememberMe">Remember Me</label>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Login</button>
                <div class="text-center mt-3">
                    New user? <a href="register.jsp" class="register-link">Register here</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
