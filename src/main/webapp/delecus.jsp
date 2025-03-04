<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Customer</title>
<style>
    /* General Styles */
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #ff758c, #ff7eb3);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    
    .form-container {
        background: white;
        padding: 25px;
        border-radius: 15px;
        box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
        width: 400px;
        text-align: center;
        transition: transform 0.3s;
    }

    .form-container:hover {
        transform: scale(1.05);
    }
    
    h2 {
        color: #333;
        margin-bottom: 20px;
        font-size: 24px;
    }
    
    label {
        display: block;
        text-align: left;
        margin: 10px 0 5px;
        font-weight: bold;
        color: #555;
        font-size: 14px;
    }
    
    input {
        width: 100%;
        padding: 12px;
        margin-bottom: 15px;
        border: 2px solid #ccc;
        border-radius: 8px;
        font-size: 16px;
        box-sizing: border-box;
        transition: border 0.3s;
    }
    
    input:focus {
        border-color: #ff758c;
        outline: none;
    }
    
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
        font-weight: bold;
        border: none;
        display: inline-block;
    }
    
    button {
        background-color: #dc3545;
        color: white;
        margin-right: 10px;
    }
    
    button:hover {
        background-color: #c82333;
    }
    
    .back-btn {
        background-color: #555;
        color: white;
        text-decoration: none;
        line-height: 40px;
    }
    
    .back-btn:hover {
        background-color: #333;
    }
    
    @media (max-width: 400px) {
        .form-container {
            width: 90%;
        }
    }
</style>
</head>
<body>

<div class="form-container">
    <h2>Delete Customer</h2>
    <form action="deletecustomer" method="POST">
        <label for="customer_name">Customer Name</label>
        <input type="text" id="customer_name" name="customer_name" placeholder="Enter customer name to delete" required>
        <div class="btn-container">
            <button type="submit">Delete Customer</button>
            <a href="product.jsp" class="back-btn">Back</a>
        </div>
    </form>
</div>

</body>
</html>
