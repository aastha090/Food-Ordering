<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background: url('login_bg.png') no-repeat center center fixed;
        background-size: cover;
        height: 100vh;
        overflow: hidden;
    }
    .register-form {
        background: rgba(255, 255, 255, 0.8);
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.5);
        margin-top: 20vh;
    }
</style>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form action="RegistrationServlet" method="post" class="register-form">
                <h2 class="text-center mb-4">Register</h2>
                <div class="form-group">
                    <label for="inputName">Name</label>
                    <input type="text" id="inputName" class="form-control" name="name" placeholder="Enter your name" required>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Address</label>
                    <input type="text" id="inputAddress" class="form-control" name="address" placeholder="Enter your address" required>
                </div>
                <div class="form-group">
                    <label for="inputEmail">Email address</label>
                    <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Enter email" required>
                </div>
                <div class="form-group">
                    <label for="inputPassword">Password</label>
                    <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
