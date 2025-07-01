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
  <title>Chi tiết sản phẩm</title>
</head>
<body>
<h1>Chi tiết sản phẩm</h1>
<p><strong>ID:</strong> ${product.id}</p>
<p><strong>Tên sản phẩm:</strong> ${product.name}</p>
<p><strong>Giá:</strong> ${product.price}</p>
<p><strong>Mô tả:</strong> ${product.description}</p>
<p><strong>Nhà sản xuất:</strong> ${product.manufacturer}</p>
<a href="/products">Quay lại danh sách</a>
</body>
</html>

