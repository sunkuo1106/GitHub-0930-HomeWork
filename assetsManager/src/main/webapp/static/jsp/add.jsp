<%--
  Created by IntelliJ IDEA.
  User: 孙阔
  Date: 2020/9/30
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/add" method="post">
    <table border="1" style="width: 600px;height: 100px;">
        <tr>
            <td>资产编号</td>
            <td><input type="text" name="assetid"></td>
        </tr>
        <tr>
            <td>资产名称</td>
            <td><input type="text" name="assetname"></td>
        </tr>
        <tr>
            <td>资产类型</td>
            <td>
                <select name="assettype">
                    <option value="0">请选择</option>
                    <option value="1">电子设备</option>
                    <option value="2">机械设备</option>
                    <option value="3">运输设备</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>入库日期</td>
            <td><input type="text" name="intodate"></td>
        </tr>
    </table>
    <input type="submit">
</form>
</body>
</html>
