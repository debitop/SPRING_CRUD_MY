<%--
  Created by IntelliJ IDEA.
  User: Саша
  Date: 02.05.2018
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Add User</title>
</head>
<body>
<form:form method="post" action="addUser" commandName="user">
    <table border="1" cellspacing="8" cellpadding="0">
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" value=""/></td>
        </tr>
        <tr>
            <td>Age</td>
            <td><input type="text" name="age" value=""></td>
        </tr>
        <tr>
            <td>isAdmin</td>
            <td><input type="checkbox" name="isAdmin"</td>
        </tr>
        <input type="submit" value="Save"/>
    </table>
</form:form>
</body>
</html>
