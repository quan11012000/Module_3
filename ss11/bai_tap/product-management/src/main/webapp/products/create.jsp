<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/1/2025
  Time: 9:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Thêm sản phẩm</title>
</head>
<body>
<h1>Thêm sản phẩm mới</h1>
<form action="/products?action=create" method="post">
    <label>ID:</label>
    <input type="text" name="id"/><br/>

    <label>Tên sản phẩm:</label>
    <input type="text" name="name"/><br/>

    <label>Giá:</label>
    <input type="text" name="price"/><br/>

    <label>Mô tả:</label>
    <textarea name="description"></textarea><br/>

    <label>Nhà sản xuất:</label>
    <input type="text" name="manufacturer"/><br/>

    <input type="submit" value="Thêm sản phẩm"/>
</form>
<a href="/products">Quay lại danh sách</a>
</body>
</html>
