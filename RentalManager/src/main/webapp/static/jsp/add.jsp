<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 孙阔
  Date: 2020/9/30
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <form action="/add" method="post">
            <table border="1" style="width: 600px;height: 100px;">
                <tr>
                    <td>客户姓名:</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>年龄:</td>
                    <td><input type="text" name="age"></td>
                </tr>
                <tr>
                    <td>
                        性别:
                    </td>
                    <td>
                        <input type="radio" name="sex" value="0">女
                        <input type="radio" name="sex" value="1">男
                    </td>
                </tr>
                <tr>
                    <td>证件类型</td>
                    <td>
                        <select name="credentialtypeid">
                            <c:forEach items="${list}" var="item">
                                <option value="${item.id}">${item.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>证件号:</td>
                    <td><input type="text" name="idnumber"></td>
                </tr>
            </table>
            <input type="submit">
        </form>
    </div>
</div>
</body>
</html>
