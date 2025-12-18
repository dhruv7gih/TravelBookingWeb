<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>

    <style>
        body {
            margin: 0;
            height: 100vh;
            font-family: Arial, sans-serif;

            /* Gradient background */
            background: linear-gradient(135deg, #43cea2, #185a9d);

            /* CENTER EVERYTHING */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .dashboard-card {
            background: white;
            width: 350px;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            text-align: center;
        }

        .dashboard-card h2 {
            margin-bottom: 10px;
        }

        .dashboard-card p {
            color: #555;
            margin-bottom: 20px;
        }

        .dashboard-card a {
            display: block;
            margin: 10px 0;
            padding: 10px;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
            color: white;
        }

        .view { background: #3498db; }
        .book { background: #2ecc71; }
        .mybook { background: #9b59b6; }
        .logout { background: #e74c3c; }

        .dashboard-card a:hover {
            opacity: 0.9;
        }
    </style>

</head>
<body>

<div class="dashboard-card">
    <h2>Welcome User 👋</h2>
    <p>Choose an option below:</p>

    <a class="view" href="listings.jsp">View Listings</a>
    <a class="book" href="book.jsp">Book Travel</a>
    <a class="mybook" href="viewBookings">View My Bookings</a>
    <a class="logout" href="logout">Logout</a>
</div>

</body>
</html>