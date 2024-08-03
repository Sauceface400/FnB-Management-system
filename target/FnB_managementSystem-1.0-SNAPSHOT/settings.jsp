<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Settings</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #F2E4E1; /* Blush Pink */
        }
        .header {
            background-color: #228B22; /* Forest Green */
            padding: 10px;
            color: #FFFFFF;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .header h1 {
            margin: 0;
        }
        .menu-icon {
            cursor: pointer;
            font-size: 24px;
        }
        .content {
            margin-left: 60px;
            padding: 20px;
        }
        .section {
            background-color: #FFFFFF;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        .section h2 {
            color: #228B22; /* Forest Green */
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 5px;
        }
        input, select {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        button {
            background-color: #228B22; /* Forest Green */
            color: #FFFFFF;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #1e7e1e;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Settings</h1>
    <span class="menu-icon" onclick="openSidebar()">&#9776;</span>
</div>

<div class="content">
    <div class="section">
        <h2>Update Settings</h2>
        <form action="updateSettingsServlet" method="post">
            <label for="siteName">Site Name</label>
            <input type="text" id="siteName" name="siteName" required>

            <label for="contactEmail">Contact Email</label>
            <input type="email" id="contactEmail" name="contactEmail" required>

            <label for="currency">Currency</label>
            <select id="currency" name="currency">
                <option value="USD">USD</option>
                <option value="MYR">MYR</option>
                <!-- Add more currencies as needed -->
            </select>

            <button type="submit">Save Changes</button>
        </form>
    </div>
</div>

<script>
    function openSidebar() {
        document.getElementById("sidebar").style.width = "250px";
    }

    function closeSidebar() {
        document.getElementById("sidebar").style.width = "0";
    }
</script>

</body>
</html>
