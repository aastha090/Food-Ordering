<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome | Order Your Food</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background: url('welcome.png') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            overflow: hidden;
        }
        .container-scrollable {
            height: 70vh; 
            overflow: auto;
        }
        .container {
            margin-top: 20px;
        }
        .card {
            margin-bottom: 20px;
        }
        .card-header {
            font-weight: bold;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">FoodieHub</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="logout.jsp">Logout</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Cart">Cart</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container container-scrollable">
    <h2 class="text-center mb-4">Welcome to FoodieHub</h2>
    <div class="row">
        <div class="col-md-6">
            <h3 class="text-center mb-4">Food Items</h3>
            <!-- Food items -->
            <div class="card">
                <div class="card-header">Pizza</div>
                <div class="card-body">
                    <img src="pizza.jpeg" class="img-fluid mb-2" alt="Pizza">
                    <p>Peppy Paneer</p>
                    <p>Price: Rs350</p>
                    <!-- Add to Cart button -->
                    <form action="AddToCart" method="post">
                        <input type="hidden" name="itemName" value="Pizza">
                        <input type="hidden" name="itemPrice" value="350">
                        <button type="submit" class="btn btn-primary">Add to Cart</button>
                    </form>
                </div>
            </div>
            <div class="card">
                <div class="card-header">Sushi</div>
                <div class="card-body">
                    <img src="sushi.jpeg" class="img-fluid mb-2" alt="Sushi">
                    <p>Shushi</p>
                    <p>Price: Rs280</p>
                    <!-- Add to Cart button -->
                    <form action="AddToCart" method="post">
                        <input type="hidden" name="itemName" value="Sushi">
                        <input type="hidden" name="itemPrice" value="280">
                        <button type="submit" class="btn btn-primary">Add to Cart</button>
                    </form>
                </div>
            </div>
            <div class="card">
                <div class="card-header">Mcpuff</div>
                <div class="card-body">
                    <img src="mcpuff.jpeg" class="img-fluid mb-2" alt="Mcpuff">
                    <p>Mcpuff</p>
                    <p>Price: Rs55</p>
                    <!-- Add to Cart button -->
                    <form action="AddToCart" method="post">
                        <input type="hidden" name="itemName" value="Mcpuff">
                        <input type="hidden" name="itemPrice" value="50">
                        <button type="submit" class="btn btn-primary">Add to Cart</button>
                    </form>
                </div>
            </div>
            <div class="card">
                <div class="card-header">Burger</div>
                <div class="card-body">
                    <img src="burger.jpeg" class="img-fluid mb-2" alt="Burger">
                    <p>Veg patty</p>
                    <p>Price: Rs80</p>
                    <!-- Add to Cart button -->
                    <form action="AddToCart" method="post">
                        <input type="hidden" name="itemName" value="Burger">
                        <input type="hidden" name="itemPrice" value="80">
                        <button type="submit" class="btn btn-primary">Add to Cart</button>
                    </form>
                </div>
            </div>
            <div class="card">
                <div class="card-header"> Pasta</div>
                <div class="card-body">
                    <img src="pasta.jpeg" class="img-fluid mb-2" alt="Pasta">
                    <p>Delicious White sauce pasta </p>
                    <p>Price: Rs120</p>
                    <!-- Add to Cart button -->
                    <form action="AddToCart" method="post">
                        <input type="hidden" name="itemName" value="Pasta">
                        <input type="hidden" name="itemPrice" value="120">
                        <button type="submit" class="btn btn-primary">Add to Cart</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <h3 class="text-center mb-4">Drink Items</h3>
            <!-- Drink items -->
            <div class="card">
                <div class="card-header">Coke</div>
                <div class="card-body">
                    <img src="coke.jpeg" class="img-fluid mb-2" alt="Coke">
                    <p> Coke</p>
                    <p>Price: Rs40</p>
                    <!-- Add to Cart button -->
                    <form action="AddToCart" method="post">
                        <input type="hidden" name="itemName" value="Coke">
                        <input type="hidden" name="itemPrice" value="40">
                        <button type="submit" class="btn btn-primary">Add to Cart</button>
                    </form>
                </div>
            </div>
            <div class="card">
                <div class="card-header">kitkat shake</div>
                <div class="card-body">
                    <img src="kit.png" class="img-fluid mb-2" alt="kitkat shake">
                    <p>kitkat shake</p>
                    <p>Price: Rs70</p>
                    <!-- Add to Cart button -->
                    <form action="AddToCart" method="post">
                        <input type="hidden" name="itemName" value="kitkat shake">
                        <input type="hidden" name="itemPrice" value="70">
                        <button type="submit" class="btn btn-primary">Add to Cart</button>
                    </form>
                </div>
            </div>
            <div class="card">
                <div class="card-header">Orange Juice</div>
                <div class="card-body">
                    <img src="juice.jpeg" class="img-fluid mb-2" alt="Orange Juice">
                    <p>Orange Juice</p>
                    <p>Price: Rs30</p>
                    <!-- Add to Cart button -->
                    <form action="AddToCart" method="post">
                        <input type="hidden" name="itemName" value="Orange Juice">
                        <input type="hidden" name="itemPrice" value="30">
                        <button type="submit" class="btn btn-primary">Add to Cart</button>
                    </form>
                </div>
            </div>
            <div class="card">
                <div class="card-header">Lemonade</div>
                <div class="card-body">
                    <img src="lemon.jpeg" class="img-fluid mb-2" alt="Lemonade">
                    <p> Lemonade</p>
                    <p>Price: Rs30</p>
                    <!-- Add to Cart button -->
                    <form action="AddToCart" method="post">
                        <input type="hidden" name="itemName" value="Lemonade">
                        <input type="hidden" name="itemPrice" value="30">
                        <button type="submit" class="btn btn-primary">Add to Cart</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
