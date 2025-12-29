<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Users Management</title>
    <style>
        table { border-collapse: collapse; width: 100%; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #4CAF50; color: white; }
        .form-container { margin: 20px 0; padding: 20px; border: 1px solid #ccc; }
        .form-group { margin: 10px 0; }
        label { display: inline-block; width: 100px; }
        input { padding: 5px; width: 200px; }
        button { padding: 8px 15px; margin: 5px; }
    </style>
</head>
<body>
<h1>Users Management</h1>

<!-- Форма для добавления/редактирования -->
<div class="form-container">
    <h2>${user.id == null ? 'Add New User' : 'Edit User'}</h2>
    <form action="${pageContext.request.contextPath}/users/save" method="post">
        <input type="hidden" name="id" value="${user.id}">

        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${user.name}" required>
        </div>

        <div class="form-group">
            <label for="surname">Surname:</label>
            <input type="text" id="surname" name="surname" value="${user.surname}" required>
        </div>

        <div class="form-group">
            <label for="department">Department:</label>
            <input type="text" id="department" name="department" value="${user.department}" required>
        </div>

        <div class="form-group">
            <label for="salary">Salary:</label>
            <input type="number" step="0.01" id="salary" name="salary" value="${user.salary}" required>
        </div>

        <button type="submit">${user.id == null ? 'Add User' : 'Update User'}</button>
        <button type="button" onclick="window.location.href='${pageContext.request.contextPath}/users'">Cancel</button>
    </form>
</div>

<!-- Таблица пользователей -->
<h2>Users List</h2>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.department}</td>
            <td>${user.salary}</td>
            <td>
                <a href="${pageContext.request.contextPath}/users/edit/${user.id}">Edit</a>
                <a href="${pageContext.request.contextPath}/users/delete/${user.id}"
                   onclick="return confirm('Delete this user?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<p><a href="${pageContext.request.contextPath}/">Back to Home</a></p>
</body>
</html>