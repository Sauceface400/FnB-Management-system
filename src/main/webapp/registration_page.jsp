<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Page</title>
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
        .registration-box {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 400px;
            padding: 40px;
            transform: translate(-50%, -50%);
            background: rgba(34, 139, 34, 0.8); /* Semi-transparent Forest Green */
            box-sizing: border-box;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.6);
            border-radius: 10px;
        }
        .registration-box h2 {
            margin: 0 0 30px;
            padding: 0;
            color: #FFFFFF; /* White */
            text-align: center;
        }
        .registration-box .user-box {
            position: relative;
            margin-bottom: 20px;
        }
        .registration-box .user-box input {
            width: 100%;
            padding: 10px 0;
            font-size: 16px;
            color: #FFFFFF; /* White */
            border: none;
            border-bottom: 1px solid #FFFFFF; /* White */
            outline: none;
            background: transparent;
        }
        .registration-box .user-box label {
            position: absolute;
            top: 0;
            left: 0;
            padding: 10px 0;
            font-size: 16px;
            color: #FFFFFF; /* White */
            pointer-events: none;
            transition: 0.5s;
        }
        .registration-box .user-box input:focus ~ label,
        .registration-box .user-box input:valid ~ label {
            top: -20px;
            left: 0;
            color: #03e9f4; /* Light Blue */
            font-size: 12px;
        }
        .registration-box a {
            position: relative;
            display: inline-block;
            padding: 10px 20px;
            color: #FFFFFF; /* White */
            background: #228B22; /* Forest Green */
            text-decoration: none;
            text-transform: uppercase;
            overflow: hidden;
            transition: 0.5s;
            margin-top: 20px;
            border-radius: 5px;
            display: block;
            text-align: center;
        }
        .registration-box a:hover {
            background: #03e9f4; /* Light Blue */
            color: #FFFFFF; /* White */
        }
        .registration-box .already-have-account {
            text-align: center;
            margin-top: 20px;
        }
        .registration-box .already-have-account a {
            color: #03e9f4; /* Light Blue */
            text-decoration: none;
        }
        .registration-box .already-have-account a:hover {
            text-decoration: underline;
        }
        
    </style>
</head>
<body>
    <div class="registration-box">
        <h2>Register</h2>
        <form action="registerServlet" method="post">
            <div class="user-box">
                <input type="text" name="email" required>
                <label>Email</label>
            </div>
            <div class="user-box">
                <input type="text" name="phone" required>
                <label>Phone No.</label>
            </div>
            <div class="user-box">
                <input type="password" name="password" required>
                <label>Password</label>
            </div>
            <div class="user-box">
                <input type="password" name="confirm_password" required>
                <label>Confirm Password</label>
            </div>
            <a href="#" onclick="this.closest('form').submit();return false;">Register</a>
        </form>
        <div class="already-have-account">
            <p>Already have an account? <a href="login_page.jsp">Login</a></p>
        </div>
    </div>
</body>
</html>
