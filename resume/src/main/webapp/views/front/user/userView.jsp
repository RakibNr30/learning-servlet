<%--
  Created by IntelliJ IDEA.
  User: rakib
  Date: 1/29/24
  Time: 4:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap-5.0.2.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css">
</head>
<body>

<div class="container">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/home">RESUME</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/user">User</a>
                    </li>
                </ul>
                <form class="d-flex margin-block-end-auto" action="#">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>

    <div class="card">
        <div class="card-header">
            <h5 class="card-title float-start">${user.name}</h5>
            <a href="${pageContext.request.contextPath}/user" class="btn btn-primary btn-sm float-end">User List</a>
        </div>
        <div class="card-body">
            <div class="container">
                <table class="table">
                    <tr>
                        <th>E-mail</th>
                        <td>${user.email}</td>
                    </tr>
                    <tr>
                        <th>Mobile</th>
                        <td>${user.mobile}</td>
                    </tr>
                    <tr>
                        <th>Date of Birth</th>
                        <td>${user.dob}</td>
                    </tr>
                    <tr>
                        <th>Created At</th>
                        <td>${user.createdAt}</td>
                    </tr>
                    <tr>
                        <th>Updated At</th>
                        <td>${user.updatedAt}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</div>

</body>
</html>

