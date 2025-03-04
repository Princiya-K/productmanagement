<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form</title>
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <style>
        /* Background with gradient */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #89f7fe, #66a6ff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Form container with glassmorphism effect */
        form {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            width: 320px;
            text-align: center;
            border: 2px solid rgba(255, 255, 255, 0.3);
            animation: fadeIn 1.2s ease-in-out;
        }

        /* Heading */
        h2 {
            color: white;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Label styles */
        label {
            font-size: 14px;
            color: white;
            font-weight: bold;
            display: block;
            text-align: left;
            margin-bottom: 5px;
        }

        /* Input container */
        .input-container {
            position: relative;
            width: 100%;
            margin-bottom: 15px;
        }

        /* Input fields */
        input {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 8px;
            font-size: 16px;
            background: rgba(255, 255, 255, 0.2);
            color: white;
            outline: none;
            box-sizing: border-box; /* Prevents input from overflowing */
        }

        /* Input placeholders */
        input::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        /* Input focus effect */
        input:focus {
            border-color: white;
            background: rgba(255, 255, 255, 0.3);
        }

        /* Icons inside input fields */
        .input-container i {
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: white;
        }

        /* Submit button */
        button {
            background: linear-gradient(45deg, #ff512f, #dd2476);
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            width: 100%;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s ease-in-out;
            box-sizing: border-box;
        }

        /* Button hover effect */
        button:hover {
            background: linear-gradient(45deg, #e03e2d, #b81d5a);
            transform: scale(1.05);
        }

        /* Fade-in animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

<form action="customer-signup" method="POST">
    <h2>SignUp</h2>

    <!-- User Name -->
    <div class="input-container">
        <label for="uname">User Name:</label>
        <input type="text" id="uname" name="uname" placeholder="Enter your name" required>
        <i class="fas fa-user"></i>
    </div>

    <!-- User Age -->
    <div class="input-container">
        <label for="uage">User Age:</label>
        <input type="number" id="uage" name="uage" placeholder="Enter your age" required>
        <i class="fas fa-calendar-alt"></i>
    </div>

    <!-- User Email -->
    <div class="input-container">
        <label for="uemail">User Email:</label>
        <input type="text" id="uemail" name="uemail" placeholder="Enter your email" required>
        <i class="fas fa-envelope"></i>
    </div>

    <!-- User Password -->
    <div class="input-container">
        <label for="upwd">User Password:</label>
        <input type="password" id="upwd" name="upwd" placeholder="Enter your password" required>
        <i class="fas fa-lock"></i>
    </div>

    <!-- User Contact -->
    <div class="input-container">
        <label for="ucont">User Contact:</label>
        <input type="number" id="ucont" name="ucont" placeholder="Enter your contact" required>
        <i class="fas fa-phone"></i>
    </div>

    <button type="submit">Submit</button>
</form>

</body>
</html>
