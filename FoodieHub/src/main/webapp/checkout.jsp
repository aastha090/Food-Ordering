<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
    body {
            background: url('tq.gif') no-repeat center center fixed;
            background-size: cover;
            height:100vh;
            overflow: hidden;
            
           
        }
    
        
        .container {
            text-align: center;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            padding: 20px;
            border-radius: 10px;
            animation: fadeIn 2s ease-in-out; /* Apply animation to container */
        }
        .heading {
            font-size: 3em; /* Larger font size */
        }
        .thank-you-message {
            font-size: 1.5em; /* Larger font size */
            margin-top: 20px;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>
    
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-white bg-dark">
    <b><a class="navbar-brand" href="#">FoodieHub</a></b>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <b><a class="nav-link" href="welcome.jsp">Continue Shopping</a></b>
            </li>
            <li class="nav-item">
               <b><a class="nav-link" href="LogoutServlet">Logout</a></b> 
            </li>
        </ul>
    </div>
</nav>

<div class="container mt-5">
    <h2 class="text-center">THANK YOU!</h2>
    <div class="alert alert-success mt-3" role="alert">
        Your order has been successfully placed. Thank you for shopping with us!<br>
        <% 
            Date currentDate = new Date();
            out.println("Order dated: " + currentDate + ", placed at " + currentDate.getHours() + ":" + currentDate.getMinutes() + ":" + currentDate.getSeconds());
        %>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
