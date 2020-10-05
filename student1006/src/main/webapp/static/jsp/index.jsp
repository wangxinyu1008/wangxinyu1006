<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/3
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jQuery.js"></script>
    <script src="/static/js/index.js"></script>
</head>
<body>
    <center>
    <table border="1px" width="800px">
        <tr align="center"><td colspan="6"><h1>学员信息列表</h1></td></tr>
        <tr style="text-align: center">
            <th>编号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>住址</th>
            <th>Email</th>
        </tr>
        <c:if test="${studentInfos.size()>0}">
            <c:forEach items="${studentInfos}" var="item2">
                <tr style="text-align: center">
                    <td><input hidden value="${item2.sid}" class="sid"><a href="javascript:void(0)" class="aid">${item2.sid}</a></td>
                    <td><input hidden value="${item2.sname}" class="sname">${item2.sname}</td>
                    <td><input hidden value="${item2.sgender}" class="sgender">${item2.sgender}</td>
                    <td><input hidden value="${item2.sage}" class="sage">${item2.sage}</td>
                    <td><input hidden value="${item2.saddress}" class="saddress">${item2.saddress}</td>
                    <td><input hidden value="${item2.semail}" class="semail">${item2.semail}</td>
                </tr>
            </c:forEach>
        </c:if>

    </table>
</center>

</body>
</html>
