<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Product</title>
    <style>
        /* General styling for body */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #ff9a9e, #fad0c4);
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Styling for the form container */
        .form-container {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
            transition: transform 0.3s;
        }

        .form-container:hover {
            transform: scale(1.05);
        }

        /* Form elements styling */
        label {
            display: block;
            font-size: 16px;
            font-weight: 600;
            color: #333;
            margin-bottom: 8px;
            text-align: left;
        }

        input {
            width: 100%;
            padding: 12px;
            border: 2px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            margin-bottom: 15px;
            box-sizing: border-box;
            transition: border 0.3s;
        }

        input:focus {
            border: 2px solid #f44336;
            outline: none;
        }

        /* Button styling */
        .btn-container {
            display: flex;
            justify-content: space-between;
        }

        button, .back-btn {
            flex: 1;
            padding: 12px;
            border-radius: 8px;
            font-size: 16px;
            text-align: center;
            cursor: pointer;
            transition: 0.3s;
            text-decoration: none;
            display: inline-block;
            font-weight: bold;
            border: none;
        }

        button {
            background-color: #f44336;
            color: white;
            margin-right: 10px;
        }

        button:hover {
            background-color: #d32f2f;
        }

        .back-btn {
            background-color: #555;
            color: white;
            line-height: 40px;
        }

        .back-btn:hover {
            background-color: #333;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
            font-size: 24px;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Delete Product</h2>
        <form action="deleteProduct" method="POST">
            <label for="productId">Product ID</label>
            <input type="text" id="productId" name="pId" placeholder="Enter Product ID to delete" required>
            
            <div class="btn-container">
                <button type="submit">Delete</button>
                <a href="product.jsp" class="back-btn">Back</a>
            </div>
        </form>
    </div>
</body>
</html>
