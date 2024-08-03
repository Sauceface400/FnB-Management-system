<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #F2E4E1; /* Blush Pink */
            text-align: center;
            padding: 20px;
        }
        .header {
            background-color: #228B22; /* Forest Green */
            padding: 10px;
            color: #FFFFFF;
        }
        .error-container {
            background-color: #FFFFFF;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            display: inline-block;
            margin-top: 50px;
        }
        .error-container h1 {
            color: #FF0000; /* Red for error */
        }
        .error-container p {
            color: #333333;
        }
        a {
            color: #228B22; /* Forest Green */
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Oops! Something went wrong.</h1>
</div>

<div class="error-container">
    <h1>Error 404: Page Not Found</h1>
    <p>Sorry, the page you are looking for does not exist.</p>
    <p><a href="dashboard.jsp">Go to Dashboard</a></p>
</div>

</body>
</html>
