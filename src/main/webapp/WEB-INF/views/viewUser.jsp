<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>View User - User Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }
        .user-details {
            background-color: #f8f9fa;
            padding: 30px;
            border-radius: 8px;
            border: 1px solid #dee2e6;
        }
        .detail-row {
            display: flex;
            margin-bottom: 15px;
            align-items: flex-start;
        }
        .detail-label {
            font-weight: bold;
            color: #495057;
            width: 120px;
            flex-shrink: 0;
        }
        .detail-value {
            color: #212529;
            flex: 1;
            word-wrap: break-word;
        }
        .user-id {
            background-color: #007bff;
            color: white;
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 14px;
            font-weight: bold;
        }
        .navigation {
            text-align: center;
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid #eee;
        }
        .nav-button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            margin: 0 10px;
            display: inline-block;
            transition: background-color 0.3s;
        }
        .nav-button:hover {
            background-color: #0056b3;
            text-decoration: none;
            color: white;
        }
        .nav-button.secondary {
            background-color: #6c757d;
        }
        .nav-button.secondary:hover {
            background-color: #545b62;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>User Details</h2>

    <div class="user-details">
        <div class="detail-row">
            <span class="detail-label">User ID:</span>
            <span class="detail-value">
                    <span class="user-id">ID: ${user.userId}</span>
                </span>
        </div>

        <div class="detail-row">
            <span class="detail-label">Name:</span>
            <span class="detail-value">${user.userName}</span>
        </div>

        <div class="detail-row">
            <span class="detail-label">Address:</span>
            <span class="detail-value">${user.address}</span>
        </div>

        <div class="detail-row">
            <span class="detail-label">Mobile:</span>
            <span class="detail-value">${user.mobileNum}</span>
        </div>
    </div>

    <!-- Navigation links -->
    <div class="navigation">
        <a href="${pageContext.request.contextPath}/userList" class="nav-button">← Back to User List</a>
        <a href="${pageContext.request.contextPath}/createUser" class="nav-button secondary">Create New User</a>
        <a href="${pageContext.request.contextPath}/welcome" class="nav-button secondary">Home</a>
    </div>
</div>
</body>
</html>