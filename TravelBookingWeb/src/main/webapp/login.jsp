<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login | Travel Booking</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #43cea2, #185a9d);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-card {
            background: #ffffff;
            padding: 35px 40px;
            border-radius: 12px;
            width: 320px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.25);
        }

        .login-card h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #2c3e50;
        }

        label {
            font-weight: bold;
            color: #34495e;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0 18px 0;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #27ae60;
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #1e8449;
        }

        .note {
            text-align: center;
            margin-top: 15px;
            font-size: 13px;
            color: #7f8c8d;
        }

        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>

<body>

<div class="login-card">
    <h2>🔐 Login</h2>

    <% if (request.getAttribute("error") != null) { %>
        <div class="error"><%= request.getAttribute("error") %></div>
    <% } %>

    <form action="login" method="post">
        <label>Username</label>
        <input type="text" name="username" placeholder="Enter username" required>

        <label>Password</label>
        <input type="password" name="password" placeholder="Enter password" required>

        <button type="submit">Login</button>
    </form>

    <div class="note">
        Travel Booking Platform
    </div>
</div>

</body>
</html>