<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create User - User Management System</title>
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
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }
        input[type="text"]:focus, textarea:focus {
            outline: none;
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0,123,255,0.3);
        }
        textarea {
            resize: vertical;
            height: 80px;
        }
        .submit-button {
            background-color: #28a745;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-right: 10px;
        }
        .submit-button:hover {
            background-color: #218838;
        }
        .reset-button {
            background-color: #6c757d;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .reset-button:hover {
            background-color: #545b62;
        }
        .success-message {
            background-color: #d4edda;
            color: #155724;
            padding: 12px;
            border-radius: 5px;
            margin-bottom: 20px;
            border: 1px solid #c3e6cb;
        }
        .error-message {
            background-color: #f8d7da;
            color: #721c24;
            padding: 12px;
            border-radius: 5px;
            margin-bottom: 20px;
            border: 1px solid #f5c6cb;
        }
        .navigation {
            text-align: center;
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid #eee;
        }
        .nav-link {
            color: #007bff;
            text-decoration: none;
            margin: 0 15px;
            font-weight: bold;
        }
        .nav-link:hover {
            text-decoration: underline;
        }
        .button-group {
            text-align: center;
            margin-top: 30px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Create New User</h2>

    <!-- Success message -->
    <c:if test="${not empty success}">
        <div class="success-message">
                ${success}
        </div>
    </c:if>

    <!-- Error message -->
    <c:if test="${not empty error}">
        <div class="error-message">
                ${error}
        </div>
    </c:if>

    <!-- User creation form -->
    <form:form modelAttribute="user"
               action="${pageContext.request.contextPath}/createUser"
               method="post">

        <div class="form-group">
            <label for="userName">User Name: <span style="color: red;">*</span></label>
            <form:input path="userName"
                        id="userName"
                        placeholder="Enter full name"
                        required="true"
                        maxlength="50"/>
        </div>

        <div class="form-group">
            <label for="address">Address: <span style="color: red;">*</span></label>
            <form:textarea path="address"
                           id="address"
                           placeholder="Enter complete address"
                           required="true"
                           maxlength="200"/>
        </div>

        <div class="form-group">
            <label for="mobileNum">Mobile Number: <span style="color: red;">*</span></label>
            <form:input path="mobileNum"
                        id="mobileNum"
                        placeholder="Enter 10-digit mobile number"
                        required="true"
                        pattern="[0-9]{10}"
                        maxlength="10"
                        title="Please enter a 10-digit mobile number"/>
        </div>

        <div class="button-group">
            <button type="submit" class="submit-button">Create User</button>
            <button type="reset" class="reset-button">Reset Form</button>
        </div>

    </form:form>

    <!-- Navigation links -->
    <div class="navigation">
        <a href="${pageContext.request.contextPath}/welcome" class="nav-link">Home</a>
        <a href="${pageContext.request.contextPath}/userList" class="nav-link">View All Users</a>
        <a href="${pageContext.request.contextPath}/login" class="nav-link">Login</a>
    </div>
</div>
</body>
</html>