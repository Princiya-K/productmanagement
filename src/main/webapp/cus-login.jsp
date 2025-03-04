<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    // Handle form submission
    String loginMessage = "";
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String uemail = request.getParameter("uemail");
        String upwd = request.getParameter("upwd");

        // Database connection
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load JDBC driver
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/products", "root", "password");

            // Check user credentials
            PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE cemail=? AND cpwd=?");
            ps.setString(1, uemail);
            ps.setString(2, upwd);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                session.setAttribute("userEmail", uemail);
                response.sendRedirect("dashboard.jsp"); // Redirect to dashboard on success
            } else {
                loginMessage = "⚠️ Error connecting to database.";
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            loginMessage = "❌ Invalid email or password. Try again.";
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <style>
        /* Import Google Font */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #1d2671, #c33764);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        
        label {
            font-size: 14px;
            color: white;
            font-weight: bold;
            display: block;
            text-align: left;
            margin-bottom: 5px;
        }
        
        button:hover {
            background: linear-gradient(45deg, #e03e2d, #b81d5a);
            transform: scale(1.05);
        }

        .container {
            width: 420px;
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(8px);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            text-align: center;
            color: white;
            animation: slideIn 0.8s ease-in-out;
        }

        h2 {
            color: #fff;
            margin-bottom: 18px;
            font-size: 24px;
            font-weight: 600;
        }

        .message {
            font-size: 14px;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .error {
            background: rgba(231, 76, 60, 0.8);
            color: #fff;
            border: 1px solid #e74c3c;
        }

        .input-container {
            position: relative;
            width: 100%;
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin: 12px 0 5px;
            font-weight: 500;
            color: #ddd;
            text-align: left;
        }

        input {
            width: 100%;
            padding: 12px 40px 12px 12px;
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 6px;
            font-size: 14px;
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
            outline: none;
            transition: 0.3s;
        }

        input:focus {
            border-color: #f1c40f;
            box-shadow: 0px 0px 8px rgba(241, 196, 15, 0.6);
            background: rgba(255, 255, 255, 0.2);
        }

        .input-container i {
            position: absolute;
            right: 12px;
            top: 50%;
            transform: translateY(-50%);
            color: white;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #f39c12;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: bold;
        }

        button:hover {
            background: #e67e22;
            transform: scale(1.05);
        }

        .back-link {
            display: block;
            margin-top: 16px;
            font-size: 14px;
            color: #f1c40f;
            text-decoration: none;
            transition: 0.3s;
            font-weight: 500;
        }

        .back-link:hover {
            text-decoration: underline;
            color: #f39c12;
            transform: scale(1.1);
        }

        @keyframes slideIn {
            from { transform: translateY(-30px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
    </style>
    
    
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #1d2671, #c33764);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
     

    .container {
        width: 420px;
        background: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(8px);
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        text-align: center;
        color: white;
        animation: slideIn 0.8s ease-in-out;
    }

    h2 {
        color: #fff;
        margin-bottom: 18px;
        font-size: 24px;
        font-weight: 600;
    }

    .message {
        font-size: 14px;
        padding: 10px;
        border-radius: 6px;
        margin-bottom: 10px;
        font-weight: bold;
    }

    .error {
        background: rgba(231, 76, 60, 0.8);
        color: #fff;
        border: 1px solid #e74c3c;
    }

    .input-container {
        display: flex;
        align-items: center;
        background: rgba(255, 255, 255, 0.1);
        border-radius: 10px;
        border: 1px solid rgba(255, 255, 255, 0.3);
        padding: 10px;
        margin-bottom: 15px;
    }

    .input-container i {
        color: white;
        padding-right: 10px;
    }

    input {
        flex: 1;
        background: transparent;
        border: none;
        outline: none;
        color: white;
        font-size: 14px;
        padding: 10px;
    }

    button {
        width: 100%;
        padding: 12px;
        background: #f39c12;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 10px;
        cursor: pointer;
        transition: all 0.3s ease;
        font-weight: bold;
    }

    button:hover {
        background: #e67e22;
        transform: scale(1.05);
    }

    .back-link {
        display: block;
        margin-top: 16px;
        font-size: 14px;
        color: #f1c40f;
        text-decoration: none;
        transition: 0.3s;
        font-weight: 500;
    }

    .back-link:hover {
        text-decoration: underline;
        color: #f39c12;
        transform: scale(1.1);
    }

    @keyframes slideIn {
        from { transform: translateY(-30px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }
</style>
    
</head>
<body>

    <div class="container">
        <h2>Login</h2>

        <% if (!loginMessage.isEmpty()) { %>
            <p class="message error"><%= loginMessage %></p>
        <% } %>

        <form action="" method="post">
            <div class="input-container">
                <label for="uemail">User Email:</label>
                <input type="text" id="uemail" name="uemail" placeholder="Enter your email" required>
                <i class="fas fa-envelope"></i>
            </div>

            <div class="input-container">
                <label for="upwd">User Password:</label>
                <input type="password" id="upwd" name="upwd" placeholder="Enter your password" required>
                <i class="fas fa-lock"></i>
            </div>

            <button type="submit">Login</button>
        </form>

        <a href="cus-reg.html" class="back-link">&#x1F519; Back to Home</a>
    </div>

</body>
</html>
