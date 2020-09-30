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
<form action="/" method="post">
<p>
    申报状态:<select name="status">
        <option value="3">全部</option>
        <option value="0">已申报</option>
        <option value="1">审核中</option>
        <option value="2">已审核</option>
    </select>
    <input type="submit">
</p>
</form>
<table border="1" style="width: 800px;height: 280px;">
    <tr align="center">
        <td colspan="6" style="height: 100px;font-size: 30px;">申报项目列表</td>
    </tr>
    <tr align="center" style="font-weight: bolder">
        <td>项目编号</td>
        <td>项目名称</td>
        <td>申报开始日期</td>
        <td>申报结束日期</td>
        <td>申报状态</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${PageInfo.list}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.projectname}</td>
            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.startdate}" type="both"/></td>
            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.enddate}" type="both"/></td>
            <td>
                <c:if test="${item.status==0}">已申报</c:if>
                <c:if test="${item.status==1}">审核中</c:if>
                <c:if test="${item.status==2}">已审核</c:if>
            </td>
            <c:if test="${item.status==2}"><td></td></c:if>
            <c:if test="${item.status!=2}"><td>
                <a href="/toupd?id=${item.id}">审核</a>
            </td></c:if>
        </tr>
    </c:forEach>
    <tr align="right">
        <td colspan="6">
            <c:if test="${flag==true}"><span style="color:red;">审核成功!</span> </c:if>
            <c:if test="${flag==false}"><span style="color:red;">审核失败!</span> </c:if>
            <div>
                <a href="/?pageNum=${PageInfo.firstPage}">首页</a>
                <c:if test="${PageInfo.hasPreviousPage}">
                    <a href="/?pageNum=${PageInfo.prePage}">上一页</a>
                </c:if>
                <c:if test="${PageInfo.hasNextPage}">
                    <a href="/?pageNum=${PageInfo.nextPage}">下一页</a>
                </c:if>
                <a href="/?pageNum=${PageInfo.lastPage}">末页</a>
                <span>第${PageInfo.pageNum}页/共${PageInfo.pages}页</span>
            </div>
        </td>
    </tr>
</table>
</body>
</html>
