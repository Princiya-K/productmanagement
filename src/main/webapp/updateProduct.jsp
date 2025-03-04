<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Product</title>
    <style>
        /* Import Google Font */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        /* General Page Styles */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #1d2671, #c33764);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            animation: fadeInBackground 1.2s ease-in-out;
        }

        /* Form Container */
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

        /* Heading */
        h2 {
            color: #fff;
            margin-bottom: 18px;
            font-size: 24px;
            font-weight: 600;
        }

        /* Success/Error Messages */
        .message {
            font-size: 14px;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 10px;
            font-weight: bold;
        }
        .success {
            background: rgba(46, 204, 113, 0.8);
            color: #fff;
            border: 1px solid #2ecc71;
        }
        .error {
            background: rgba(231, 76, 60, 0.8);
            color: #fff;
            border: 1px solid #e74c3c;
        }

        /* Form Styling */
        label {
            display: block;
            margin: 12px 0 5px;
            font-weight: 500;
            color: #ddd;
            text-align: left;
        }

        input {
            width: 100%;
            padding: 12px;
            margin-bottom: 14px;
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

        /* Submit Button */
        input[type="submit"] {
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

        input[type="submit"]:hover {
            background: #e67e22;
            transform: scale(1.05);
        }

        /* Back Link */
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

        /* Animations */
        @keyframes fadeInBackground {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes slideIn {
            from { transform: translateY(-30px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Update Product</h2>

        <!-- Success/Error Messages -->
        <% String updateStatus = request.getParameter("update"); %>
        <% if(updateStatus != null) { %>
            <% if(updateStatus.equals("success")) { %>
                <p class="message success">✅ Product updated successfully!</p>
            <% } else { %>
                <p class="message error">❌ Update failed. Please try again.</p>
            <% } %>
        <% } %>

        <!-- Product Update Form -->
        <form action="updateProduct" method="post">
            <label>Product ID:</label>
            <input type="text" name="pid" value="<%= request.getParameter("pid") != null ? request.getParameter("pid") : "" %>" readonly>

            <label>Product Name:</label>
            <input type="text" name="pname" value="<%= request.getParameter("pname") != null ? request.getParameter("pname") : "" %>">

            <label>Product Brand:</label>
            <input type="text" name="pbrand" value="<%= request.getParameter("pbrand") != null ? request.getParameter("pbrand") : "" %>">

            <label>Product Cost:</label>
            <input type="text" name="pcost" value="<%= request.getParameter("pcost") != null ? request.getParameter("pcost") : "" %>">

            <input type="submit" value="Update Product">
        </form>

        <!-- Back Link -->
        <a href="viewproduct.jsp" class="back-link">&#x1F519; Back to Products</a>

    </div>

</body>
</html>
