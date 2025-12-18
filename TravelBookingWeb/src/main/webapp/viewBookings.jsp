<%@ page import="java.util.*" %>
<html>
<head>
    <title>My Bookings</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #9face6);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: #ffffff;
            padding: 30px;
            border-radius: 14px;
            width: 80%;
            max-width: 900px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.25);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #2c3e50;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #2c3e50;
            color: white;
            font-size: 15px;
        }

        tr:nth-child(even) {
            background-color: #f7f7f7;
        }

        tr:hover {
            background-color: #eef2f3;
        }

        .price {
            font-weight: bold;
            color: #27ae60;
        }

        .status {
            font-weight: bold;
            color: #2980b9;
        }

        .back-btn {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background: #3498db;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            font-size: 14px;
        }

        .back-btn:hover {
            background: #217dbb;
        }

        .empty {
            padding: 20px;
            color: #777;
            font-style: italic;
        }
    </style>
</head>

<body>

<div class="container">
    <h2>📖 My Bookings</h2>

    <table>
        <tr>
            <th>Booking ID</th>
            <th>Source</th>
            <th>Destination</th>
            <th>Travel Date</th>
            <th>Price (₹)</th>
            <th>Status</th>
        </tr>

        <%
            List<String[]> bookings =
                    (List<String[]>) request.getAttribute("bookings");

            if (bookings != null && !bookings.isEmpty()) {
                for (String[] b : bookings) {
        %>
        <tr>
            <td><%= b[0] %></td>
            <td><%= b[1] %></td>
            <td><%= b[2] %></td>
            <td><%= b[3] %></td>
            <td class="price">₹ <%= b[4] %></td>
            <td class="status"><%= b[5] %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="6" class="empty">No bookings found</td>
        </tr>
        <%
            }
        %>
    </table>

    <a class="back-btn" href="dashboard.jsp">⬅ Back to Dashboard</a>
</div>

</body>
</html>