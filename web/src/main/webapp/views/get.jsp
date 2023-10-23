<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get Name of User</title>
</head>
<body>
<div>
    <h3>Информация о пользователе по его ID</h3>
</div>
<div>
    <%
        if (request.getAttribute("name") != null) {
            out.println("<p>This is user = " + request.getAttribute("name") + "</p>");
        }
    %>
</div>

<div>
    <form method="post">
        <label>ID:
            <input type="number" name="id"> (введите ID пользователя)<br/>
        </label>
        <button type="submit">Отправить</button>
    </form>
</div>
<div>
    <button onclick="location.href='/'">На главную</button>
</div>
</body>
</html>
