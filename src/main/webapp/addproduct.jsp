<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
    <style>
        /* Apply a gradient background */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #667eea, #764ba2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 10px;
        }

        /* Form container styling with inner gradient */
        .form-container {
            background: linear-gradient(to bottom, #ffffff, #f2f2f2);
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
            transition: transform 0.3s;
        }

        .form-container:hover {
            transform: scale(1.02);
        }

        h2 {
            color: #333;
            margin-bottom: 15px;
        }

        /* Form label styling */
        label {
            display: block;
            text-align: left;
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }

        /* Input field styling with proper width */
        input {
            width: calc(100% - 20px); /* Ensures input stays within the container */
            padding: 10px;
            border: 2px solid #ddd;
            border-radius: 6px;
            font-size: 14px;
            margin-bottom: 15px;
            transition: all 0.3s ease-in-out;
            display: block;
            background-color: #f9f9f9;
        }

        input:focus {
            border-color: #764ba2;
            outline: none;
            box-shadow: 0 0 8px rgba(118, 75, 162, 0.5);
            background-color: #fff;
        }

        /* Button styles */
        .button-container {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        button {
            flex: 1;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }

        /* Add button */
        .add-btn {
            background-color: #4CAF50;
            color: white;
        }

        .add-btn:hover {
            background-color: #45a049;
        }

        /* Back button */
        .back-btn {
            background-color: #f44336;
            color: white;
            text-decoration: none;
            padding: 12px;
            border-radius: 6px;
            display: inline-block;
            text-align: center;
            width: 100px;
        }

        .back-btn:hover {
            background-color: #d32f2f;
        }

    </style>
</head>
<body>

    <div class="form-container">
        <h2>Add Product</h2>
        <form action="addproduct" method="POST">
            <label for="productId">Product ID</label>
            <input type="text" id="productId" name="pId" placeholder="Enter Product ID" required>

            <label for="productName">Product Name</label>
            <input type="text" id="productName" name="pName" placeholder="Enter Product Name" required>

            <label for="productBrand">Brand</label>
            <input type="text" id="productBrand" name="pBrand" placeholder="Enter Product Brand" required>

            <label for="productCost">Cost</label>
            <input type="number" id="productCost" name="pCost" placeholder="Enter Product Cost" required>

            <div class="button-container">
                <button type="submit" class="add-btn">Add</button>
                <a href="product.jsp" class="back-btn">Back</a>
                         </div>
        </form>
    </div>

</body>
</html>
