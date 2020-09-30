<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/30
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息显示</title>
</head>
<body>
<table border="1px" width="700px">
    <tr style="text-align: center">
        <td>商品编号</td>
        <td>商品名称</td>
        <td>商品价格</td>
        <td>库存数量</td>
        <td>订单状态</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${goods}" var="g">
        <tr style="text-align: center">
            <td>${g.id}</td>
            <td>${g.goodsname}</td>
            <td>${g.goodsprice}</td>
            <td>${g.goodscount}</td>
            <td>
                <c:if test="${g.billstatus==0}">
                    待处理
                </c:if>
                <c:if test="${g.billstatus==1}">
                    处理中
                </c:if>
                <c:if test="${g.billstatus==2}">
                    已处理
                </c:if>
            </td>
            <td><a href="update?id=${g.id}">修改</a></td>
        </tr>
    </c:forEach>
    <c:if test="${goods.size()==0}">
        <tr style="text-align: center">
            <td colspan="6">
                <a>该区域没有数据</a>
            </td>
        </tr>
    </c:if>
</table>
</body>
</html>
