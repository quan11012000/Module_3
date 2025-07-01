<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 7/1/2025
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="w-50 justify-content: center;align-items: center" style="background-color: beige">
    <h1 class="text-center">Danh sách sản phẩm</h1>
   <div class="text-center">
       <div class="text-center">
           <table border="1">
               <tr>
                   <th>ID</th>
                   <th>Tên</th>
                   <th>Giá</th>
                   <th>Hãng</th>
                   <th>Hành động</th>
               </tr>
               <c:forEach var="product" items="${products}">
               <tr>
                   <td>${product.id}</td>
                   <td>${product.name}</td>
                   <td>${product.price}</td>
                   <td>${product.manufacturer}</td>
                   <td>
                       <a href="/products?action=view&id=${product.id}">Xem</a> |
                       <a href="/products?action=edit&id=${product.id}">Sửa</a> |
                       <button onclick="deleteProduct(${product.id})">Xoá</button>
                   </td>
               </tr>
               </c:forEach>
       </div>
           <form action="/products" method="get">
               <a href="/products?action=create">Thêm sản phẩm</a>
               <input type="text" name="search" placeholder="Tìm theo tên"/>
               <input type="hidden" name="action" value="search"/>
               <input type="submit" value="Tìm kiếm"/>
           </form>
       </table>
   </div>

    <form id="deleteForm" action="/products?action=delete" method="post">
        <input type="hidden" name="deleteId">
    </form>
    <script>
        function deleteProduct(id) {
            let confirmDelete = confirm("ban co chac chan muon xoa san pham nay");
            if (confirmDelete) {
                document.querySelector("input[name='deleteId']").value = id;
                document.querySelector("#deleteForm").submit();
            }
        }
    </script>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
        crossorigin="anonymous"></script>
</body>
</html>
