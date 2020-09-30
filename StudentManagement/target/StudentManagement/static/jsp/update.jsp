<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/30
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/static/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<form action="/updateOver" method="post">
    <table border="1px" width="500px">
        <tr class="se">
            <td colspan="2">学员信息</td>
        </tr>
        <tr>
            <td>姓名:</td>
            <td><input type="text" name="sname" value="${studentInfo.sname}"></td>
            <input type="hidden" name="sid" value="${studentInfo.sid}">
        </tr>
        <tr>
            <td>年龄:</td>
            <td><input type="text" name="sage" value="${studentInfo.sage}"></td>
        </tr>
        <tr>
            <td>性别:</td>
            <td><input type="text" name="sgender" value="${studentInfo.sgender}"></td>
        </tr>
        <tr>
            <td>家庭住址:</td>
            <td><input type="text" name="saddress" value="${studentInfo.saddress}"></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input type="text" name="semail" value="${studentInfo.semail}"></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="修改">
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
<script type="text/javascript">
    $("form").submit(function () {
        var sage=$("[name='sage']").val();
        if(sage==""){
            alert("年龄不能为空");
            return false;
        }
        var sgender=$("[name='sgender']").val();
        if(sgender==""){
            alert("性别不能为空");
            return false;
        }
        var saddress=$("[name='saddress']").val();
        if(saddress==""){
            alert("地址不能为空");
            return false;
        }
        var semail=$("[name='semail']").val();
        if(semail==""){
            alert("邮箱不能为空");
            return false;
        }
        return true;
    })
</script>
