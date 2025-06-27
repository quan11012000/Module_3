<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/27/2025
  Time: 11:13 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <style>
    .container{
      width: 30% !important;
      height: auto;
      background-color: beige;
    }
    input{
      width: 100%;
    }

  </style>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container text-center p-2 mt-2">
  <h2>Product Discount Calculator</h2>
  <form action="/display-discount" method="post">
    <label>Product Description:</label><br>
    <input type="text" name="description" required><br><br>

    <label>List Price ($):</label><br>
    <input type="number" name="listPrice" step="0.01" required><br><br>

    <label>Discount Percent (%):</label><br>
    <input type="number" name="discountPercent" step="0.01" required><br><br>

    <input type="submit" value="Calculate Discount">
  </form>
</div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>
