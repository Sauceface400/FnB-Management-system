<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.model.inventoryItem" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Inventory Management</title>
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
        button {
            background-color: #228B22; /* Forest Green */
            color: #FFFFFF;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 5px 0;
        }
        button:hover {
            background-color: #1e7e1e;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Inventory Management</h1>
    <span class="menu-icon" onclick="openSidebar()">&#9776;</span>
</div>

<div class="content">
    <div class="section">
        <h2>Inventory List</h2>
        <table>
            <thead>
                <tr>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Stock Quantity</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<inventoryItem> inventoryItems = (List<inventoryItem>) request.getAttribute("inventoryItems");
                    if (inventoryItems != null) {
                        for (inventoryItem item : inventoryItems) {
                %>
                <tr>
                    <td><%= item.getProductId() %></td>
                    <td><%= item.getProductName() %></td>
                    <td><%= item.getCategory() %></td>
                    <td><%= item.getStockQuantity() %></td>
                    <td><a href="editInventory.jsp?id=<%= item.getProductId() %>">Edit</a></td>
                </tr>
                <%
                        }
                    }
                %>
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
