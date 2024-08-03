<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        html {
            height: 100%;
        }
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
            background-color: #F2E4E1; /* Blush Pink */
        }
        .login-container {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300px;
            padding: 40px;
            transform: translate(-50%, -50%);
            background: rgba(34, 139, 34, 0.8); /* Semi-transparent Forest Green */
            box-sizing: border-box;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.6);
            border-radius: 10px;
        }
        .login-container h1 {
            margin: 0 0 30px;
            padding: 0;
            color: #FFFFFF; /* White */
            text-align: center;
        }
        .login-container label {
            color: #FFFFFF; /* White */
            display: block;
            margin-bottom: 5px;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: none;
            border-radius: 5px;
            background: transparent;
            color: #FFFFFF; /* White */
            border-bottom: 1px solid #FFFFFF; /* White */
        }
        .login-container input[type="text"]:focus,
        .login-container input[type="password"]:focus {
            border-bottom: 1px solid #03e9f4; /* Light Blue */
            outline: none;
        }
        .login-container button {
            width: 100%;
            padding: 10px;
            background-color: #228B22; /* Forest Green */
            color: #FFFFFF; /* White */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .login-container button:hover {
            background-color: #03e9f4; /* Light Blue */
        }
        .login-container .already-have-account {
            text-align: center;
            margin-top: 20px;
        }
        .login-container .already-have-account a {
            color: #03e9f4; /* Light Blue */
            text-decoration: none;
        }
        .login-container .already-have-account a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <form action="loginServlet" method="post">
            <label for="email">Email</label>
            <input type="text" id="email" name="email" required>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            <button type="submit">Login</button>
        </form>
        <div class="already-have-account">
            <p>Don't have an account? <a href="registration_page.jsp">Register</a></p>
        </div>
    </div>
</body>
</html>
