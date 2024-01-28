<%--
  Created by IntelliJ IDEA.
  User: rakib
  Date: 1/23/24
  Time: 5:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/main.css">
</head>
<body>
<div class="container bg-secondary border-radius-5">
    <div class="body text-center">
        <h3>
            Exception <%= exception.getMessage() %>
        </h3>
    </div>
</div>
</body>
</html>
