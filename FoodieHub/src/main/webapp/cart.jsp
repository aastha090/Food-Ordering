<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.Map.Entry" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
           
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        .cart-heading {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }
        .checkout-btn {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
        }
        .checkout-btn:hover {
            background-color: #45a049;
        }
        .navbar {
            overflow: hidden;
            background-color: #333;
        }
        .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="welcome.jsp">Continue Shopping</a>
        <a href="logout.jsp">Logout</a>
    </div>
    <h2 class="cart-heading">Your Cart</h2>
    <table>
        <thead>
            <tr>
                <th>Item Name</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <% 
                double total = 0.0;
                // Retrieve cart from session
                Map<String, Double> cart = (Map<String, Double>) request.getSession().getAttribute("cart");
                
                // Check if cart is not null and iterate through its entries
                if (cart != null) {
                    for (Entry<String, Double> entry : cart.entrySet()) {
                        total += entry.getValue();
            %>
            <tr>
                <td><%= entry.getKey() %></td>
                <td>Rs<%= entry.getValue() %></td>
            </tr>
            <% 
                    }
                } else {
            %>
            <tr>
                <td colspan="2">Your cart is empty</td>
            </tr>
            <% 
                }
            %>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="2" style="text-align: right; font-weight: bold;">Total: Rs<%= total %></td>
            </tr>
        </tfoot>
    </table>
    <a href="checkout.jsp" class="checkout-btn">Checkout</a>
</body>
</html>
