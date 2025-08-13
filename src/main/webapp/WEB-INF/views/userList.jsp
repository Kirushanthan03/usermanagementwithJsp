<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>User List - User Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 1000px;
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
        .summary {
            background-color: #e8f4f8;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 30px;
            text-align: center;
        }
        .users-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }
        .users-table th {
            background-color: #007bff;
            color: white;
            padding: 12px;
            text-align: left;
            font-weight: bold;
        }
        .users-table td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            vertical-align: top;
        }
        .users-table tr:nth-child(even) {
            background-color: #f8f9fa;
        }
        .users-table tr:hover {
            background-color: #e3f2fd;
        }
        .user-id {
            background-color: #28a745;
            color: white;
            padding: 4px 8px;
            border-radius: 12px;
            font-size: 12px;
            font-weight: bold;
            display: inline-block;
        }
        .view-button {
            background-color: #17a2b8;
            color: white;
            padding: 6px 12px;
            text-decoration: none;
            border-radius: 4px;
            font-size: 14px;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .view-button:hover {
            background-color: #138496;
            text-decoration: none;
            color: white;
        }
        .no-users {
            text-align: center;
            padding: 50px;
            color: #6c757d;
            font-style: italic;
        }
        .actions {
            text-align: center;
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid #eee;
        }
        .action-button {
            background-color: #28a745;
            color: white;
            padding: 12px 24px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            margin: 0 10px;
            display: inline-block;
            transition: background-color 0.3s;
        }
        .action-button:hover {
            background-color: #218838;
            text-decoration: none;
            color: white;
        }
        .action-button.secondary {
            background-color: #6c757d;
        }
        .action-button.secondary:hover {
            background-color: #545b62;
        }
        .mobile-responsive {
            overflow-x: auto;
        }
        @media (max-width: 768px) {
            .container {
                margin: 20px;
                padding: 20px;
            }
            .users-table {
                font-size: 14px;
            }
            .users-table th, .users-table td {
                padding: 8px;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h2>All Users</h2>

    <!-- Summary information -->
    <div class="summary">
        <strong>Total Users: ${totalUsers}</strong>
    </div>

    <!-- Users table -->
    <c:choose>
        <c:when test="${empty users}">
            <div class="no-users">
                <h3>No Users Found</h3>
                <p>There are currently no users in the system.</p>
                <p>Click "Create New User" below to add the first user.</p>
            </div>
        </c:when>
        <c:otherwise>
            <div class="mobile-responsive">
                <table class="users-table">
                    <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Mobile Number</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>
                                <span class="user-id">${user.userId}</span>
                            </td>
                            <td>${user.userName}</td>
                            <td>${user.address}</td>
                            <td>${user.mobileNum}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/viewUser?userId=${user.userId}"
                                   class="view-button">
                                    View Details
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:otherwise>
    </c:choose>

    <!-- Action buttons -->
    <div class="actions">
        <a href="${pageContext.request.contextPath}/createUser" class="action-button">
            Create New User
        </a>
        <a href="${pageContext.request.contextPath}/welcome" class="action-button secondary">
            Back to Home
        </a>
        <a href="${pageContext.request.contextPath}/login" class="action-button secondary">
            Login
        </a>
    </div>
</div>
</body>
</html>