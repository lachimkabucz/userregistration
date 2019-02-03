<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 03.02.19
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>User Added</title>
</head>
<body>
<div>User added: <%= request.getParameter("firstName") %> <%= request.getParameter("lastName") %> </div>
</body>
</html>
