<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout</title>
</head>
<body>
    <h1>Logging out...</h1>
    <% 
        session.invalidate(); // Invalidate the session to log out
        response.sendRedirect("login.jsp"); // Redirect to the login page after logout
    %>
</body>
</html>
