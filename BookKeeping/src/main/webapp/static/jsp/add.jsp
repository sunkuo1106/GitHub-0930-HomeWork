<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/30
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/addOver" method="post">
<table border="1px" width="700px">
    <tr>
        <td colspan="2"><h1>记账</h1></td>
    </tr>
    <tr>
        <td>类型：</td>
        <td>
            <select name="typeId">
                <c:forEach items="${billTypes}" var="b">
                    <option value="${b.id}">${b.name}</option>
                </c:forEach>
            </select>
        </td>
    </tr>
    <tr>
        <td>标题：</td>
        <td>
            <input type="text" name="title">
        </td>
    </tr>
    <tr>
        <td>日期：</td>
        <td>
            <input type="text" name="billTime">
        </td>
    </tr>
    <tr>
        <td>金额：</td>
        <td>
            <input type="text" name="price">
        </td>
    </tr>
    <tr>
        <td>说明：</td>
        <td>
            <input type="text" name="explainn">
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="reset" value="重置">
            <input type="submit" value="保存">
            <button>返回</button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
