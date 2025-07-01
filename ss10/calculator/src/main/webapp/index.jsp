<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body>
<h1><%= "Simple Calculator" %>
</h1>
<div>
    <form action="/calculate" method="post">
        <p>Calculator</p>
        <table>
            <tr>
                <td>First operand:</td>
                <td><input type="text" name="first-operand"></td>
            </tr>
            <tr>
                <td>Operator:</td>
                <td><select name="operator">
                    <option value="+">add</option>
                    <option value="-">apart</option>
                    <option value="*">core</option>
                    <option value="/">divide</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Second operand</td>
                <td><input type="text" name="second-operand"></td>
            </tr>
        </table>
        <button type="submit" name="btn-calculate" value="calculate">Calculate</button>
    </form>
</div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
        crossorigin="anonymous"></script>
</body>
</html>