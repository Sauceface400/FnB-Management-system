<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #F2E4E1; /* Blush Pink */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .welcome-container {
            background-color: #228B22; /* Forest Green */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <div class="welcome-container">
        <h1>Welcome, <%= session.getAttribute("email") %>!</h1>
        <p>You have successfully logged in.</p>
    </div>
</body>
</html>
