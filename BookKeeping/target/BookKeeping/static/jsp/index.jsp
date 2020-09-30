<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/30
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>记账管理</title>
    <script type="text/javascript" src="/static/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<table border="1px" width="700px">
    <tr style="text-align: center">
        <td colspan="5">
            <h1>记账管理</h1>
        </td>
    </tr>
    <tr style="text-align: center">
        <td colspan="5">
            <form action="/mocha" method="post">
                类型:
                <select name="lei">
                    <option value="-1">无</option>
                    <c:forEach items="${billTypes}" var="b">
                    <option value="${b.id}">${b.name}</option>
                    </c:forEach>
                </select>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                时间:
                <input type="text" name="yishi">
                到
                <input type="text" name="ershi">
                <input type="submit" value="搜索">
                <button id="jizhang"><a href="/add">记账</a></button>
            </form>
        </td>
    </tr>
    <tr style="text-align: center">
        <td>标题</td>
        <td>记账时间</td>
        <td>类别</td>
        <td>金额</td>
        <td>说明</td>
    </tr>
    <c:forEach items="${bills}" var="b">
        <tr style="text-align: center">
            <td>${b.title}</td>
            <td>
                <fmt:formatDate pattern="yyyy-MM-dd" value="${b.billTime}" type="both"/>
            </td>
            <td>${b.billType.name}</td>
            <td>${b.price}</td>
            <td>${b.explainn}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
<script type="text/javascript">
    $("#jizhang").onclick(function () {
        location.href="/add";
    })
</script>
