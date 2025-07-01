<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/1/2025
  Time: 9:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Sửa sản phẩm</title>
</head>
<body>
<h1>Cập nhật sản phẩm</h1>
<form action="/products?action=edit" method="post">
  <input type="hidden" name="id" value="${product.id}"/>

  <label>Tên sản phẩm:</label>
  <input type="text" name="name" value="${product.name}"/><br/>

  <label>Giá:</label>
  <input type="text" name="price" value="${product.price}"/><br/>

  <label>Mô tả:</label>
  <textarea name="description">${product.description}</textarea><br/>

  <label>Nhà sản xuất:</label>
  <input type="text" name="manufacturer" value="${product.manufacturer}"/><br/>

  <input type="submit" value="Cập nhật"/>
</form>
<a href="/products">Quay lại danh sách</a>
</body>
</html>
