<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome - User Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }
        .nav-menu {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            justify-content: center;
            margin: 30px 0;
        }
        .nav-button {
            background-color: #007bff;
            color: white;
            padding: 12px 24px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .nav-button:hover {
            background-color: #0056b3;
        }
        .info-box {
            background-color: #e8f4f8;
            padding: 20px;
            border-radius: 5px;
            margin: 20px 0;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome to User Management System</h1>

    <div class="info-box">
        <h3>System Status</h3>
        <p>Total Users in System: <strong>${totalUsers}</strong></p>
    </div>

    <div class="nav-menu">
        <a href="${pageContext.request.contextPath}/login" class="nav-button">User Login</a>
        <a href="${pageContext.request.contextPath}/createUser" class="nav-button">Create New User</a>
        <a href="${pageContext.request.contextPath}/userList" class="nav-button">View All Users</a>
    </div>

    <div style="text-align: center; margin-top: 30px;">
        <p>Select an option above to get started!</p>
    </div>
</div>
</body>
</html>