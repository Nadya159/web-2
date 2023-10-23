<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Set new user name</title>
</head>
<body>
<div>
    <h3>Изменение имени пользователя по его ID</h3>
</div>

<div>
    <%
        if (request.getAttribute("name") != null) {
            if (request.getAttribute("userName") != null && request.getAttribute("userName").equals(request.getAttribute("name"))) {
                out.println("<p>New name is set = " + request.getAttribute("name") + "</p>");
            } else {
                out.println("<p style='color:Red'>User with this ID not found!</p>");
            }
        }
    %>
</div>
<div>
    <form method="post">
        <label>ID:
            <input type="number" name="id"> (введите ID пользователя)<br/>
        </label>
        <label>New user name:
            <input type="text" name="name"> (введите новое имя пользователя)<br/>
        </label>
        <button type="submit">Отправить</button>
    </form>
</div>

<div>
    <button onclick="location.href='/'">На главную</button>
</div>
</body>
</html>
