<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 孙阔
  Date: 2020/9/30
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/upd" method="post">
<table border="1" style="width: 600px;height: 280px;">
    <tr align="center">
        <td colspan="2" style="height: 100px;font-size: 30px;">申报项目信息</td>
    </tr>
    <tr align="center" style="font-weight: bolder">
        <td>项目编号</td>
        <td><input type="text" name="id" value="${projectinfo.id}" readonly></td>
    </tr>
    <tr align="center" style="font-weight: bolder">
        <td>项目名称</td>
        <td><input type="text" name="id" value="${projectinfo.projectname}" readonly></td>
    </tr>
    <tr align="center" style="font-weight: bolder">
        <td>申报开始日期</td>
        <td><input type="text" name="id" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${projectinfo.startdate}" type="both"/>" readonly></td>
    </tr>
    <tr align="center" style="font-weight: bolder">
        <td>申报结束日期</td>
        <td><input type="text" name="id" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${projectinfo.enddate}" type="both"/>" readonly></td>
    </tr>
    <tr align="center" style="font-weight: bolder">
        <td>申报状态</td>
        <td>
            <select name="status">
                <option value="0" <c:if test="${projectinfo.status==0}">selected</c:if> >已申报</option>
                <option value="1" <c:if test="${projectinfo.status==1}">selected</c:if>>审核中</option>
                <option value="2" <c:if test="${projectinfo.status==2}">selected</c:if>>已审核</option>
            </select>
        </td>
    </tr>
    <tr align="center">
        <td colspan="2"><input type="submit" value="审核"><input type="reset"></td>
    </tr>
</table>
</form>
</body>
</html>
