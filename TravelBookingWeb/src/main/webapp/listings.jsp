<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Available Travel Listings</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #acb6e5);
            min-height: 100vh;
        }

        .container {
            width: 80%;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #2c3e50;
            color: white;
        }

        tr:hover {
            background-color: #f2f2f2;
        }

        .book-btn {
            padding: 6px 12px;
            background-color: #27ae60;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .book-btn:hover {
            background-color: #1e8449;
        }

        .back {
            margin-top: 20px;
            text-align: center;
        }

        .back a {
            text-decoration: none;
            color: #2980b9;
            font-weight: bold;
        }
    </style>
</head>

<body>

<div class="container">
    <h2>🚍 Available Travel Listings</h2>

    <table>
        <tr>
            <th>Source</th>
            <th>Destination</th>
            <th>Date</th>
            <th>Price (₹)</th>
            <th>Action</th>
        </tr>

        <tr>
            <td>Delhi</td>
            <td>Mumbai</td>
            <td>20-12-2025</td>
            <td>4500</td>
            <td><a href="book.jsp" class="book-btn">Book</a></td>
        </tr>

        <tr>
            <td>Mumbai</td>
            <td>Goa</td>
            <td>22-12-2025</td>
            <td>3500</td>
            <td><a href="book.jsp" class="book-btn">Book</a></td>
        </tr>

        <tr>
            <td>Bangalore</td>
            <td>Chennai</td>
            <td>25-12-2025</td>
            <td>1800</td>
            <td><a href="book.jsp" class="book-btn">Book</a></td>
        </tr>

        <tr>
            <td>Pune</td>
            <td>Hyderabad</td>
            <td>28-12-2025</td>
            <td>3200</td>
            <td><a href="book.jsp" class="book-btn">Book</a></td>
        </tr>

        <tr>
            <td>Jaipur</td>
            <td>Delhi</td>
            <td>30-12-2025</td>
            <td>1200</td>
            <td><a href="book.jsp" class="book-btn">Book</a></td>
        </tr>
    </table>

    <div class="back">
        <br>
        <a href="dashboard.jsp">⬅ Back to Dashboard</a>
    </div>
</div>

</body>
</html>