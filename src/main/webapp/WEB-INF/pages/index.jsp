<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Саша
  Date: 02.05.2018
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:if test="${!empty users}">
    <table border="1" cellpadding="1" cellspacing="1">
        <tr>
            <th>Id</th>
            <th>name</th>
            <th>age</th>
            <th>isadmin</th>
            <th>date</th>
            <th>&nbsp;</th>
            <th>&nbsp;</th>


        </tr>
        <tbody>
        <c:forEach items="${users}" var="user">
            <tr>
                <td><c:out value="${user.id}"></c:out></td>
                <td><c:out value="${user.name}"></c:out></td>
                <td><c:out value="${user.age}"></c:out></td>
                <td>
                    <c:if test="${user.admin!=false }">+</c:if>
                <td><c:out value="${user.createDate}"></c:out></td>
                <td><a href="updateUser/${user.id}">Update</a></td>
                <td><a href="deleteUser/${user.id}">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</c:if>
<a href="addUser">Add user</a>

</body>
</html>
