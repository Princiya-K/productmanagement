<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');
    
        /* General styling for body */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #6e8efb, #a777e3);
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
            margin: 0;
        }

        /* Container for the action buttons */
        .button-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 350px;
            animation: fadeIn 1s ease-in-out;
        }

        /* Keyframe animation for smooth fade-in effect */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Styling for the heading */
        h2 {
            color: #444;
            font-size: 24px;
            margin-bottom: 20px;
            letter-spacing: 1px;
        }

        /* Styling for buttons */
        a {
            display: block;
            background: linear-gradient(135deg, #ff7eb3, #ff758c);
            color: white;
            text-align: center;
            padding: 12px;
            margin: 12px 0;
            border-radius: 8px;
            text-decoration: none;
            font-size: 18px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.15);
            position: relative;
            overflow: hidden;
        }

        /* Button hover effect */
        a:hover {
            background: linear-gradient(135deg, #ff758c, #ff7eb3);
            transform: scale(1.05);
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
        }

        /* Add subtle animation on click */
        a:active {
            transform: scale(0.98);
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.15);
        }

        /* Responsive design */
        @media (max-width: 400px) {
            .button-container {
                width: 90%;
            }
        }
    </style>
</head>
<body>

<div class="button-container">
        <h2>Product Actions</h2>
        <a href="addproduct.jsp">➕ Add Product</a>
        <a href="viewproduct">📋 View All Products</a>
        <a href="updateProduct.jsp">🔄 Update Product</a>
        <a href="delepro.jsp">❌ Delete Product</a>
        <a href="delecus.jsp">🚫 Delete Customer</a>
         
    </div>


</body>
</html>