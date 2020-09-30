<%--
  Created by IntelliJ IDEA.
  User: 孙阔
  Date: 2020/9/30
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" style="width: 600px;height: 100px;">
    <tr>
        <td colspan="7">人员列表</td>
    </tr>
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>等级</td>
        <td>部门</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${list}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td>
                <c:if test="${item.gender==0}">女</c:if>
                <c:if test="${item.gender==1}">男</c:if>
            </td>
            <td>${item.age}</td>
            <td>${item.rank}级</td>
            <td>${item.department}</td>
            <td><a href="/del?id=${item.id}">删除</a></td>
        </tr>
    </c:forEach>
</table>
<input type="button" value="添加人员" onclick="add()">
<script type="text/javascript">
    function add() {
        location.href="/static/jsp/add.jsp ";
    }
</script>
</body>
</html>
