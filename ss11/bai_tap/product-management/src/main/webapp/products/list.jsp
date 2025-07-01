<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/1/2025
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<a href="/products?action=create">Thêm sản phẩm</a>
<table border="1">
    <tr><th>ID</th><th>Tên</th><th>Giá</th><th>Hãng</th><th>Hành động</th></tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.manufacturer}</td>
            <td>
                <a href="/products?action=view&id=${product.id}">Xem</a> |
                <a href="/products?action=edit&id=${product.id}">Sửa</a> |
                <a href="/products?action=delete&id=${product.id}">Xoá</a>
            </td>
        </tr>
    </c:forEach>
    <form action="/products" method="get">
        <input type="text" name="search" placeholder="Tìm theo tên"/>
        <input type="hidden" name="action" value="search"/>
        <input type="submit" value="Tìm kiếm"/>
    </form>
</table>
</body>
</html>
