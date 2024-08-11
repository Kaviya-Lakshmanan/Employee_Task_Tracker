<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Page</title>
</head>
 <style>
        /* General Styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
            
        }

        /* Header Styling */
        header {
            background-color: #4CAF50;
            color: white;
            padding: 20px 0;
            text-align: center;
            font-size: 24px;
        }

        /* Navigation Menu */
        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            text-align: center;
            background-color: #333;
        }

        nav ul li {
            display: inline;
            margin: 0 10px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            padding: 14px 20px;
            display: inline-block;
        }

        nav ul li a:hover {
            background-color: #575757;
        }

        /* Content Styling */
        .container {
            width: 80%;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #4CAF50;
            text-align: center;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        ul li {
            margin: 10px 0;
        }

        ul li a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }

        ul li a:hover {
            text-decoration: underline;
        }

        /* Button Styling */
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }

        /* Footer Styling */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
<body>
<!--  
     session = request.getSession(false);
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return; // Ensure no further processing is done after redirection
    } else if (!session.getAttribute("role").equals("1")) {
        response.sendRedirect("dashboard.jsp");
        return; // Ensure no further processing is done after redirection
    }
-->
    <h2>Admin Page</h2>
    <ul>
        <li><a href="viewAllTasks.jsp">View All Tasks</a></li>
        <li><a href="viewAllCharts.jsp">View All Charts</a></li>
    </ul>
    <a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>