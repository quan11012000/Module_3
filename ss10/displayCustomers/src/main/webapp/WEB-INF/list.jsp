<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/30/2025
  Time: 10:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Danh sach khach hang</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <button class="btn btn-primary" >Thêm mới</button>
    <h2 class="mb-4 text-center">Danh sách khach hang</h2>

    <table class="table table-bordered table-hover table-striped align-middle">
        <thead class="table-primary">
        <tr class="text-center">
            <th scope="col">Name</th>
            <th scope="col">DateOfBirth</th>
            <th scope="col">Address</th>
            <th scope="col">Img</th>
        </tr>
        </thead>

    <tbody>
    <c:forEach items="${customers}" var="customer" varStatus="temp">
        <tr>
            <td>${customer.nameCus}</td>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.addressCus}</td>
            <td><img style="width: 100px; height: auto" src="${customer.img}"></td>
        </tr>
    </c:forEach>
    </tbody>
    </table>
    </div>
</body>
</html>
