<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | Elite Products</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #485563, #29323c);
            font-family: 'Poppins', sans-serif;
            color: white;
            text-align: center;
        }
        .navbar {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
        }
        .navbar-brand {
            font-size: 28px;
            font-weight: bold;
            color: #f5f5f5;
        }
        .container {
            margin-top: 100px;
        }
        .hero-section {
            padding: 60px;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(12px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease-in-out;
        }
        .hero-section:hover {
            transform: scale(1.03);
        }
        .hero-title {
            font-size: 48px;
            font-weight: 700;
            color: #f5f5f5;
            text-shadow: 3px 3px 8px rgba(0, 0, 0, 0.3);
        }
        .hero-text {
            font-size: 20px;
            margin-bottom: 20px;
            color: #e0e0e0;
            opacity: 0.9;
        }
        .btn-custom {
            background-color: #ff9800;
            color: white;
            padding: 14px 30px;
            border-radius: 30px;
            font-size: 18px;
            font-weight: 600;
            text-decoration: none;
            box-shadow: 0 4px 15px rgba(255, 152, 0, 0.4);
            transition: all 0.3s ease-in-out;
        }
        .btn-custom:hover {
            background-color: #ff5722;
            box-shadow: 0 6px 20px rgba(255, 87, 34, 0.5);
        }
        .footer {
            margin-top: 50px;
            padding: 15px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            color: #e0e0e0;
            font-size: 14px;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">Elite Products</a>
        </div>
    </nav>
    
    <div class="container">
        <div class="hero-section">
            <h1 class="hero-title">Discover Premium Products</h1>
            <p class="hero-text">Experience innovation and quality like never before.</p>
            <a href="cus-reg.html" class="btn btn-custom">Get Started</a>
        </div>
    </div>
    
    <div class="footer">
        &copy; 2025 Elite Products. All Rights Reserved.
    </div>
</body>
</html>
