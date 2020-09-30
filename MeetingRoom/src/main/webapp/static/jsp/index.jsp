<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/30
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>会议室使用情况</title>
    <script type="text/javascript" src="/static/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<table border="1px" width="700px">
    <tr style="text-align: center">
        <td>预定编号</td>
        <td>会议室</td>
        <td>预订人</td>
        <td>日期</td>
    </tr>
<c:forEach items="${meetingrooms}" var="m">
    <tr style="text-align: center">
        <td>${m.id}</td>
        <td>${m.meetingName}</td>
        <td>${m.advanceName}</td>
        <td>
            <fmt:formatDate pattern="yyyy-MM-dd" value="${m.meetingOrder}" type="both"/>
        </td>
    </tr>
</c:forEach>
</table>
<a style="margin-left: 600px;position: relative;top: 30px" href="/static/jsp/add.jsp">预定会议室</a>
</body>
</html>
<script type="text/javascript">
    $("tr:eq(0)").css("background-color","#999999");
    $("tr:gt(1):even").css("background-color","#C29E00");
</script>
