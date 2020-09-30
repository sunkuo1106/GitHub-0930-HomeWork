<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/30
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据修改</title>
    <script type="text/javascript" src="/static/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<form action="/updateOver" method="post">
    <table border="1px" width="700px">
        <%--<input type="hidden" name="id" value="${id}">--%>
        <tr>
            <td>商品编号</td>
            <td>
                <input type="text" name="id" value="${goods.id}" readonly="readonly">
            </td>
        </tr>
        <tr>
            <td>商品名称</td>
            <td>
                <input type="text" name="goodsname" value="${goods.goodsname}">
            </td>
        </tr>
        <tr>
            <td>商品价格</td>
            <td>
                <input type="text" name="goodsprice" value="${goods.goodsprice}">
            </td>
        </tr>
        <tr>
            <td>库存数量</td>
            <td>
                <input type="text" name="goodscount" value="${goods.goodscount}">
            </td>
        </tr>
        <tr>
            <td>订单状态</td>
            <td>
                <select name="billstatus">
                    <option value="0">待处理</option>
                    <option value="1">处理中</option>
                    <option value="2">已处理</option>
                </select>
            </td>
        </tr>
        <tr style="text-align: center">
            <td colspan="2">
                <input type="submit" value="提交">
                <button>返回</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
