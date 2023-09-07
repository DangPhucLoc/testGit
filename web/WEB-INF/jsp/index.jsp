<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Spring MVC</title>
    <base href="${pageContext.request.contextPath}/StudentController">
    <style>
        div {
            display: inline-block;
            text-align: center;
            margin: 5px;
            padding: 5px;
            border: 1px dotted orangered;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1>EL & JSTL</h1>
    <div>
        <img src="${pageContext.request.contextPath}/${photo}">
        <br>
        <strong>${name}</strong>
        <em>${salary * level}</em>
    </div>

    <div>
        <img src="${pageContext.request.contextPath}/${photo}">
        <br>
        <strong>${name}</strong>
        <em>${salary * level}</em>
    </div>

    <div>
        <img src="${pageContext.request.contextPath}/${photo}">
        <br>
        <strong>${pageContext.request.contextPath}/${name}</strong>
        <em>${salary * level}</em>
    </div>
</body>
</html>
