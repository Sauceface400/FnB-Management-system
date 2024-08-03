<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, com.example.model.DatabaseUtils" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Product Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #F2E4E1; /* Blush Pink */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 90%;
            max-width: 1200px;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #228B22; /* Forest Green */
            color: white;
        }
        .btn {
            padding: 5px 10px;
            color: #fff;
            background-color: #228B22; /* Forest Green */
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #006400; /* Darker Green */
        }
        .add-form {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Product Management</h1>
        <div class="add-form">
            <form action="productServlet" method="post">
                <input type="hidden" name="action" value="add">
                <input type="text" name="name" placeholder="Product Name" required>
                <input type="text" name="description" placeholder="Description" required>
                <input type="number" name="price" step="0.01" placeholder="Price" required>
                <input type="number" name="quantity" placeholder="Quantity" required>
                <button type="submit" class="btn">Add Product</button>
            </form>
        </div>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    try (Connection conn = DatabaseUtils.getConnection()) {
                        String sql = "SELECT * FROM products";
                        try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {
                            while (rs.next()) {
                                int id = rs.getInt("id");
                                String name = rs.getString("name");
                                String description = rs.getString("description");
                                double price = rs.getDouble("price");
                                int quantity = rs.getInt("quantity");
                %>
                <tr>
                    <td><%= id %></td>
                    <td><%= name %></td>
                    <td><%= description %></td>
                    <td><%= price %></td>
                    <td><%= quantity %></td>
                    <td>
                        <form action="productServlet" method="post" style="display:inline;">
                            <input type="hidden" name="action" value="edit">
                            <input type="hidden" name="id" value="<%= id %>">
                            <button type="submit" class="btn">Edit</button>
                        </form>
                        <form action="productServlet" method="post" style="display:inline;">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="id" value="<%= id %>">
                            <button type="submit" class="btn">Delete</button>
                        </form>
                    </td>
                </tr>
                <%
                            }
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
