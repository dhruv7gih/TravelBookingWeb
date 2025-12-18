<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Book Travel</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #9face6);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card {
            background: #ffffff;
            padding: 30px 40px;
            border-radius: 14px;
            width: 380px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        }

        .card h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #2c3e50;
        }

        label {
            font-weight: 600;
            color: #34495e;
            display: block;
            margin-top: 10px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        button {
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background-color: #2980b9;
        }

        .back {
            display: block;
            text-align: center;
            margin-top: 18px;
            text-decoration: none;
            color: #555;
            font-size: 14px;
        }

        .back:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

<div class="card">
    <h2>🚆 Book Travel</h2>

    <!-- IMPORTANT: name attributes servlet ke saath match karte hain -->
    <form action="bookTravel" method="post">

        <label>Source</label>
        <input type="text" name="source" placeholder="Enter source city" required>

        <label>Destination</label>
        <input type="text" name="destination" placeholder="Enter destination city" required>

        <label>Travel Date</label>
        <input type="date" name="travelDate" required>

        <label>Price (₹)</label>
        <input type="number" name="price" placeholder="Enter price" required>

        <button type="submit">Confirm Booking</button>
    </form>

    <a class="back" href="dashboard.jsp">⬅ Back to Dashboard</a>
</div>

</body>
</html>