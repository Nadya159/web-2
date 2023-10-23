<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Users</title>
</head>
<body>
<div>
    <div>
        <h3>Список всех пользователей:</h3>
    </div>
    <%
        List<String> usersNames = (List<String>) request.getAttribute("usersNames");
        if (usersNames != null && !usersNames.isEmpty()) {
            out.println("<ui>");
            for (String s : usersNames) {
                out.println("<li>" + s + "</li>");
            }
            out.println("</ui>");
        } else out.println("<p>There are no users yet!</p>");
    %>
</div>
<div>
    <button onclick="location.href='/'">На главную</button>
</div>
</body>
</html>
