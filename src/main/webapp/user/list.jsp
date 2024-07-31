<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 31/07/2024
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<!-- user/list.jsp -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
</head>
<body>
<h2>User List</h2>
<form action="users" method="get">
    <input type="hidden" name="action" value="search">
    <label for="country">Search by Country:</label>
    <input type="text" name="country" id="country">
    <input type="submit" value="Search">
</form>
<form action="users" method="get">
    <input type="hidden" name="action" value="sort">
    <input type="submit" value="Sort by Name">
</form>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${listUser}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.country}</td>
            <td>
                <a href="users?action=edit&id=${user.id}">Edit</a>
                <a href="users?action=delete&id=${user.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
