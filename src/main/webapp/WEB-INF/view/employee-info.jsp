<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<body>
<h2>Добавление нового работника</h2>
<br><br>
    <form:form action="saveEmployee" modelAttribute="employee">
        
        <form:hidden path="id" />

        Имя: <form:input path="name" />
        <br><br>
        Фамилия: <form:input path="surname" />
        <br><br>
        Департамент: <form:input path="department" />
        <br><br>
        Зарплата: <form:input path="salary" />
        <br><br>
        <input type="submit" value="Отправить"/>
    </form:form>

</body>
</html>