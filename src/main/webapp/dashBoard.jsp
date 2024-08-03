<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
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
        .sidebar {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }
        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 18px;
            color: #FFFFFF;
            display: block;
            transition: 0.3s;
        }
        .sidebar a:hover {
            background-color: #575757;
        }
        .sidebar .close-btn {
            position: absolute;
            top: 20px;
            right: 25px;
            font-size: 36px;
            margin-left: 50px;
        }
        .content {
            margin-left: 60px;
            padding: 20px;
        }
        .summary {
            background-color: #228B22; /* Forest Green */
            color: #FFFFFF;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .dashboard-grid {
            display: grid;
            grid-template-columns: 1fr 2fr;
            gap: 20px;
        }
        .recent-orders {
            background-color: #FFFFFF;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            grid-column: 1 / 2;
        }
        .features {
            background-color: #FFFFFF;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            grid-column: 2 / 3;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-template-rows: repeat(2, auto);
            gap: 10px;
        }
        .feature-box {
            background-color: #FFFFFF;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            text-align: center;
        }
        .feature-box h3 {
            margin: 0;
            color: #228B22; /* Forest Green */
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Dashboard</h1>
    <span class="menu-icon" onclick="openSidebar()">&#9776;</span>
</div>

<div id="sidebar" class="sidebar">
    <a href="javascript:void(0)" class="close-btn" onclick="closeSidebar()">&times;</a>
    <a href="#">Settings</a>
    <a href="#">Logout</a>
    <a href="#">Profile</a>
    <a href="#">Help</a>
</div>

<div class="content">
    <div class="summary">
        <h2>Sales Summary</h2>
        <p>Total Sales: $10,000</p>
        <p>Total Orders: 200</p>
    </div>

    <div class="dashboard-grid">
        <div class="recent-orders">
            <h2>Recent Orders of the Week</h2>
            <ul>
                <li>Order #1 - $100</li>
                <li>Order #2 - $150</li>
                <li>Order #3 - $200</li>
                <!-- Add more recent orders as needed -->
            </ul>
        </div>
        <div class="features">
            <div class="feature-box">
                <h3>Products</h3>
                <p><a href="productManagement.jsp">Manage your products</a></p>
            </div>
            <div class="feature-box">
                <h3>Orders</h3>
                <p><a href="orderManagement.jsp">View and manage orders</a></p>
            </div>
            <div class="feature-box">
                <h3>Inventory</h3>
                <p><a href="inventoryManagement.jsp">Track your inventory</a></p>
            </div>
            <div class="feature-box">
                <h3>Customers</h3>
                <p><a href="customerManagement.jsp">Manage customer information</a></p>
            </div>
            <div class="feature-box">
                <h3>Users</h3>
                <p><a href="userManagement.jsp">Manage system users</a></p>
            </div>
            <div class="feature-box">
                <h3>Reports</h3>
                <p><a href="report.jsp">Generate and view reports</a></p>
            </div>
        </div>
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
