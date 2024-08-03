<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Management</title>
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
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #228B22; /* Forest Green */
            color: #FFFFFF;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Customer Management</h1>
    <span class="menu-icon" onclick="openSidebar()">&#9776;</span>
</div>

<div class="content">
    <div class="section">
        <h2>Customer List</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Populate with customer data -->
                <tr>
                    <td>1</td>
                    <td>John Doe</td>
                    <td>john@example.com</td>
                    <td>123-456-7890</td>
                    <td><a href="editCustomer.jsp?id=1">Edit</a> | <a href="deleteCustomerServlet?id=1" onclick="return confirm('Are you sure?')">Delete</a></td>
                </tr>
                <!-- Add more rows as needed -->
            </tbody>
        </table>
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
