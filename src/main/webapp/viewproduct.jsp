 <%@ page import="taskproduct.com.ProductDAO" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>



<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #f0f2f5, #d9e4f5);
            color: #333;
        }
        .navbar {
            background: #343a40;
            display: flex;
            justify-content: space-between;
            padding: 15px 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .navbar a {
            color: white;
            text-decoration: none;
            padding: 12px 20px;
            font-size: 16px;
            transition: 0.3s;
            border-radius: 5px;
        }
        .navbar a:hover {
            background: #495057;
        }
        h2 {
            text-align: center;
            font-size: 28px;
            color: #333;
            margin-top: 30px;
        }
        .table-container {
            width: 90%;
            margin: 30px auto;
            overflow-x: auto;
            background: white;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 12px;
            overflow: hidden;
        }
        th, td {
            padding: 14px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        th {
            background: #007BFF;
            color: white;
            font-size: 18px;
        }
        tr:nth-child(even) {
            background: #f9f9f9;
        }
        tr:hover {
            background: #f1f1f1;
            transform: scale(1.02);
            transition: 0.3s ease-in-out;
        }
        .btn-container {
            text-align: center;
            margin: 20px 0;
        }
        .btn {
            display: inline-block;
            background: #28a745;
            color: white;
            padding: 12px 24px;
            border-radius: 8px;
            font-size: 16px;
            transition: 0.3s;
            text-decoration: none;
            font-weight: bold;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .btn:hover {
            background: #218838;
            transform: scale(1.05);
        }
        .delete-btn {
            background: #dc3545;
            padding: 8px 16px;
            border-radius: 5px;
            color: white;
            font-size: 14px;
            text-decoration: none;
            transition: 0.3s;
        }
        .delete-btn:hover {
            background: #c82333;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="home.jsp">🏠 Home</a>
        <a href="addproduct.jsp">➕ Add Product</a>
      <a href="product.jsp">🔙 Back</a>
      
    </div>
    
    <% HttpSession s = request.getSession();
       String uemail = (String)s.getAttribute("cemail");
       String upwd = (String)s.getAttribute("cpwd");
    %>

    <% if (uemail != null && upwd != null) {
        ProductDAO dao = new ProductDAO();
        ResultSet rs = dao.viewAllProducts();
    %>

    <h2>📦 Product List</h2>
    <div class="table-container">
        <table>
            <tr>
                <th>🆔 Product ID</th>
                <th>📌 Name</th>
                <th>🏷️ Brand</th>
                <th>💰 Cost</th>
                <th>🗑️ Action</th>
            </tr>
            <% while (rs.next()) { %>
            <tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td>₹<%=rs.getDouble(4)%></td>
                
                <td>  <a href="updateProduct.jsp?pid=<%= rs.getInt(1) %>&pname=<%= rs.getString(2) %>&pbrand=<%= rs.getString(3) %>&pcost=<%= rs.getDouble(4) %>" class="edit-btn">✏ Edit</a>
        &nbsp;
        <a href="delepro.jsp?id=<%= rs.getInt(1) %>" class="delete-btn">🗑 Delete</a></td>
            
            </tr>
            <% } %>
        </table>
    </div>
    
    <div class="btn-container">
        <a href="addproduct.jsp" class="btn">➕ Add New Product</a>
    </div>
    
    <% } else {
        response.sendRedirect("cus-login.jsp");
    } %>
</body>
</html>
