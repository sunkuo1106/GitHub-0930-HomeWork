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
<div style="width: 800px;height: 500px;">
    <h1>房屋租凭管理系统</h1>
    <div style="margin-left: 0px;width: 60px;">
        <a href="">首页</a>
        <a href="">客户管理</a>
        <a href="/toadd">添加客户</a>
        <a href="">房屋管理</a>
        <a href="">租凭管理</a>
        <a href="">修改密码</a>
        <a href="">退出</a>
    </div>
    <div style="margin-top: -160px;margin-left: 100px;">
        <table border="1" style="width: 700px;height: 150px;">
            <tr>
                <td>编号</td>
                <td>姓名</td>
                <td>年龄</td>
                <td>性别</td>
                <td>证件类型</td>
                <td>证件号码</td>
                <td>添加日期</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${list}" var="item">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td>${item.age}</td>
                    <td>
                        <c:if test="${item.sex==0}">女</c:if>
                        <c:if test="${item.sex==1}">男</c:if>
                    </td>
                    <td>
                        <c:if test="${item.credentialtypeid==1}">
                            身份证
                        </c:if>
                        <c:if test="${item.credentialtypeid==2}">
                            护照
                        </c:if>
                        <c:if test="${item.credentialtypeid==3}">
                            军官证
                        </c:if>
                        <c:if test="${item.credentialtypeid==4}">
                            组织机构代码证书
                        </c:if>
                    </td>
                    <td>${item.idnumber}</td>
                    <td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.addtime}" type="both"/></td>
                    <td><a href="/del?id=${item.id}">删除</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
