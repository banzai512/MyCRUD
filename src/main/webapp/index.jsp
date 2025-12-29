<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>MyCRUD Application</title>
    <meta charset="UTF-8">
</head>
<body>
<h1>Welcome to MyCRUD Application</h1>

<h2>Test Links:</h2>
<ul>
    <li><a href="test">/test - Spring Controller Test</a></li>
    <li><a href="users">/users - User Management</a></li>
</ul>

<h2>Debug Info:</h2>
<pre>
Context Path: <%= request.getContextPath() %>
Request URI: <%= request.getRequestURI() %>
Server Info: <%= application.getServerInfo() %>
Java Version: <%= System.getProperty("java.version") %>
Time: <%= new java.util.Date() %>
    </pre>
</body>
</html>