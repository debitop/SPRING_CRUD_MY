<%--
  Created by IntelliJ IDEA.
  User: Саша
  Date: 02.05.2018
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Update User</title>
</head>
<body>
<h2><a href="/">Home</a></h2>
<c:url var="saveUrl" value="/updateUser/${userAttribute.id}"/>
<form:form modelAttribute="userAttribute" method="post" action="${saveUrl}">
    <table>
        <tr>
            <td><form:label path="id">Id:</form:label></td>
            <td><form:input path="id" disabled="true"/></td>
        </tr>
        <tr>
            <td><form:label path="name">Name:</form:label></td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td><form:label path="age">Age:</form:label></td>
            <td><form:input path="age"/></td>
        </tr>
        <tr>
            <td>Is admin? <form:checkbox path="admin"/></td>
        </tr>
    </table>
    <input type="submit" value="Save"/>
</form:form>
</body>
</html>
