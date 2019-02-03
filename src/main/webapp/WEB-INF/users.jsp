<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 03.02.19
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="pl.sdacademy.registration.userDTO" %>
<%@ page import="java.util.Collection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users list</title>

    <style>
        td,
        th {
            border: 1px solid rgb(190, 190, 190);
            padding: 10px;
        }

        td {
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #eee;
        }

        th[scope="col"] {
            background-color: #696969;
            color: #fff;
        }

        th[scope="row"] {
            background-color: #d7d9f2;
        }

        caption {
            padding: 10px;
            caption-side: bottom;
        }

        table {
            border-collapse: collapse;
            border: 2px solid rgb(200, 200, 200);
            letter-spacing: 1px;
            font-family: sans-serif;
            font-size: .8rem;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <th>First</th>
        <th>Last</th>
        <th>Address</th>
    </tr>
    <% for (userDTO user : (Collection<userDTO>)request.getAttribute("users")) { %>
    <tr>
        <td><%= user.getFirstName() %></td>
        <td><%= user.getLastName() %></td>
        <td><%= user.getAddressDTO() %></td>
    </tr>
    <% } %>
</table>
</body>
</html>
