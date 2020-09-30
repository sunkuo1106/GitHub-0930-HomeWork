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
<form action="/add" method="post">
<table border="1" style="width: 600px;height: 100px;">
    <tr>
        <td colspan="7">添加人员</td>
    </tr>
    <tr>
        <td>姓名</td>
        <td><input type="text" name="name"><span style="color:red;">*</span></td>
    </tr>
    <tr>
        <td>性别</td>
        <td>
            <select name="gender">
                <option value="2">请选择</option>
                <option value="0">女</option>
                <option value="1">男</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>年龄</td>
        <td><input type="text" name="age"><span style="color:red;">*</span></td>
    </tr>
    <tr>
        <td>等级</td>
        <td>
            <select name="rank">
                <option value="1">1级</option>
                <option value="2">2级</option>
                <option value="3">3级</option>
                <option value="4">4级</option>
                <option value="5">5级</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>部门</td>
        <td>
            <select name="department">
                <option value="开发部">开发部</option>
                <option value="技术部">技术部</option>
                <option value="销售部">销售部</option>
            </select>
        </td>
    </tr>
</table>
    <input type="submit">
</form>
</body>
</html>
