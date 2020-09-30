<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/30
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/static/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<table border="1px" width="700px">
    <tr style="text-align: center">
        <td colspan="6">
            <h1>学员信息列表</h1>
        </td>
    </tr>
    <tr style="text-align: center">
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>住址</td>
        <td>Email</td>
    </tr>
<c:forEach items="${studentinfo}" var="s">
    <tr style="text-align: center">
        <td><a href="update?id=${s.sid}">${s.sid}</a></td>
        <td>${s.sname}</td>
        <td>${s.sgender}</td>
        <td>${s.sage}</td>
        <td>${s.saddress}</td>
        <td>${s.semail}</td>
    </tr>
</c:forEach>
    <c:if test="${jie==1}">
        <tr style="text-align: center">
            <td colspan="6"><a style="color:red;">更新成功</a></td>
        </tr>
    </c:if>
    <c:if test="${jie==-1}">
        <tr style="text-align: center">
            <td colspan="6"><a style="color:red;">更新失败</a></td>
        </tr>
    </c:if>
</table>
</body>
</html>
<script type="text/javascript">
    $("tr:odd").css("background-color","#59FEC9");
</script>
