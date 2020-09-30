<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/30
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会议室预定</title>
    <script type="text/javascript" src="/static/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<form action="/add" method="post">
    <table border="1px" width="700px">
        <tr style="text-align: center" id="shou">
            <td colspan="2">会议室预定</td>
        </tr>
        <tr>
            <td>会议室:</td>
            <td>
                <select name="meetingName">
                    <option value="一号会议室">一号会议室</option>
                    <option value="一号会议室">一号会议室</option>
                    <option value="一号会议室">一号会议室</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>申请人:</td>
            <td>
                <input type="text" name="advanceName">
            </td>
        </tr>
        <tr>
            <td>预定日期:</td>
            <td>
                <input type="text" name="meetingOrder">日期格式yyyy-mm-dd
            </td>
        </tr>
        <tr style="text-align: center">
            <td colspan="2">
                <input type="submit" value="申请">
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
<script type="text/javascript">
    $("#shou").css("background-color", "#999999");
    $("form").submit(function () {
        var people=$("[name='advanceName']").val();
        if(people==""){
            alert("申请人不能为空!!!");
            return false;
        }
        var time = $("[name='meetingOrder']").val();
        var reg = /^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$/;
        if (!time.match(reg)) {
            alert("上传时间格式不正确!!!");
            return false;
        }
        return true;
    })
</script>
