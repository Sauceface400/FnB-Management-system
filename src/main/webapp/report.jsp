<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reports</title>
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
    <h1>Reports</h1>
    <span class="menu-icon" onclick="openSidebar()">&#9776;</span>
</div>

<div class="content">
    <div class="section">
        <h2>Generate Report</h2>
        <form action="generateReportServlet" method="post">
            <label for="reportType">Report Type</label>
            <select id="reportType" name="reportType">
                <option value="sales">Sales Report</option>
                <option value="inventory">Inventory Report</option>
                <option value="orders">Orders Report</option>
                <!-- Add more report types as needed -->
            </select>

            <label for="startDate">Start Date</label>
            <input type="date" id="startDate" name="startDate" required>

            <label for="endDate">End Date</label>
            <input type="date" id="endDate" name="endDate" required>

            <button type="submit">Generate Report</button>
        </form>
    </div>
    <div class="section">
        <h2>Report List</h2>
        <table>
            <thead>
                <tr>
                    <th>Report ID</th>
                    <th>Type</th>
                    <th>Date Generated</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Populate with report data -->
                <tr>
                    <td>1</td>
                    <td>Sales Report</td>
                    <td>2024-07-28</td>
                    <td><a href="viewReport.jsp?id=1">View</a></td>
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
