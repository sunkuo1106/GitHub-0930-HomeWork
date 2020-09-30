<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/30
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>订单查询</title>
    <script type="text/javascript" src="/static/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<p>
    <form action="/cha" method="post">
    <a>请选择区域:</a>
    <select name="quyu">
                <option value="1">朝阳</option>
                <option value="2">海淀</option>
                <option value="3">丰台</option>
                <option value="4">西城</option>
                <option value="5">昌平</option>
    </select>
    <input type="submit" value="查询">
    </form>
</p>
</body>
</html>
