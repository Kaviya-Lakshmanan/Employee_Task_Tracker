<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpServletRequest"%>
<%@page import="jakarta.servlet.http.HttpServletResponse"%>
<%
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    } else {
        String role = (String) session.getAttribute("role");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        color: #333;
    }
    h2 {
        color: #0056b3;
        text-align: center;
        margin-top: 20px;
    }
    a {
        display: inline-block;
        margin: 10px;
        padding: 10px 20px;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        font-size: 16px;
    }
    .admin-link {
        background-color: #007bff;
    }
    .user-link {
        background-color: #28a745;
    }
    .logout-link {
        background-color: #dc3545;
    }
    a:hover {
        opacity: 0.8;
    }
    a:visited {
        color: #fff;
    }
</style>
<body>
    <h2>Welcome, <%= session.getAttribute("username") %></h2>
    <%
        if ("Admin".equals(role)) {
    %>
    <a class="admin-link" href="adminPage.jsp">Admin Page</a><br>
    <%
        } else {
    %>
    <a class="user-link" href="taskPage.jsp">Task Management</a><br>
    <a class="user-link" href="associaterPage.jsp">View Associater</a>
    <a class="user-link" href="register.jsp">Register</a>
    <%
        }
    %>
    <a class="logout-link" href="LogoutServlet">Logout</a>
  
</body>
</html>
<%
    }
%>
