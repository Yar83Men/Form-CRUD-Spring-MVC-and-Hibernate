<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        * {
            font-family: sans-serif;
            font-size: 18px;
        }

        table {
            border: 1px solid silver;
        }

        td, th {
            border: 1px solid silver;
            padding: 10px;
        }
    </style>
    <title>Employee</title>
</head>
<body>
<h2>Все работники</h2>
<table>
    <tr>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Департамент</th>
        <th>Зарплата</th>
        <th>Изменить</th>
    </tr>
    <c:forEach var="emp" items="${allEmps}">

        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="Обновить"
                       onClick="window.location.href='${updateButton}'"/>

                <input type="button" value="Удалить"
                       onClick="window.location.href='${deleteButton}'"/>
            </td>
        </tr>
    </c:forEach>
</table>
<p>
    <input type="button" value="Добавить"
           onclick="window.location.href = 'addNewEmployee'"
    />
</p>
</body>
</html>
