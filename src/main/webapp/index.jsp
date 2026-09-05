<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>DharshinMart | Login</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #f4f6f9;
        }

        .login-box {
            width: 420px;
            padding: 45px 40px;
            background: #ffffff;
            border-radius: 16px;
            box-shadow: 0 12px 35px rgba(0, 0, 0, 0.12);
            text-align: center;
        }

        .symbol {
            font-size: 32px;
            color: #2563eb;
            margin-bottom: 15px;
        }

        h1 {
            font-size: 30px;
            color: #1f2937;
            margin-bottom: 10px;
        }

        .subtitle {
            font-size: 15px;
            color: #6b7280;
            margin-bottom: 30px;
        }

        input {
            width: 100%;
            padding: 14px;
            margin-bottom: 16px;
            border: 1px solid #d1d5db;
            border-radius: 9px;
            font-size: 15px;
        }

        input:focus {
            outline: none;
            border-color: #2563eb;
        }

        button {
            width: 100%;
            padding: 14px;
            margin-top: 5px;
            border: none;
            border-radius: 9px;
            background: #2563eb;
            color: #ffffff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background: #1d4ed8;
        }

        .signup-text {
            margin-top: 25px;
            color: #6b7280;
            font-size: 14px;
        }

        .signup-text a {
            color: #2563eb;
            text-decoration: none;
            font-weight: bold;
        }

        .signup-text a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

<div class="login-box">

    <div class="symbol">•••</div>

    <h1>DharshinMart</h1>

    <p class="subtitle">Welcome back. Please sign in.</p>

    <form action="login" method="post">

        <input
            type="text"
            name="username"
            placeholder="Username"
            required>

        <input
            type="password"
            name="password"
            placeholder="Password"
            required>

        <button type="submit">Login</button>

    </form>

    <div class="signup-text">
        Don't have an account?
        <a href="signup.jsp">Create Account</a>
    </div>

</div>

</body>
</html>