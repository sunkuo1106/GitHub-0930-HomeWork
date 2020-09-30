<%--
  Created by IntelliJ IDEA.
  User: 孙阔
  Date: 2020/9/30
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/">
<p>
    资产编号:
    <input type="text" name="assetid">
</p>
    <p>
        资产类型:
        <select name="assettype">
            <option value="0">请选择</option>
            <option value="1">电子设备</option>
            <option value="2">机械设备</option>
            <option value="3">运输设备</option>
        </select>
    </p>
    <p>
        <input type="submit">
    </p>
</form>
<table border="1" style="width: 600px;height: 100px;">
    <tr>
        <td>资产编号</td>
        <td>资产名称</td>
        <td>资产类型</td>
        <td>入库日期</td>
    </tr>
    <c:forEach items="${list}" var="item">
        <tr>
            <td>${item.assetid}</td>
            <td>${item.assetname}</td>
            <td>${item.assettype}</td>
            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.intodate}" type="both"/></td>
        </tr>
    </c:forEach>
</table>
<input type="button" value="新增固定资产" onclick="add()">
<script type="text/javascript">
    function add() {
        location.href="/static/jsp/add.jsp ";
    }
</script>
</body>
</html>
