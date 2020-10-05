<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/30
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<center>
<form action="/doUpd" method="post">
<table border="1px" width="400px">
    <tr align="center"><td colspan="2" style="background-color: aqua"><h1>学员信息</h1></td></tr>
    <tr>
        <td width="150px" style="background-color: aqua">姓名：</td>
        <td><input hidden class="sid" name="sid" value="${sessionScope.sid}">
            <input class="sname" name="sname" value="${sessionScope.sname}"></td>
    </tr>
    <tr>
        <td width="150px" style="background-color: aqua">性别：</td>
        <td><input class="sgender" name="sgender" value="${sessionScope.sgender}"></td>
    </tr>
    <tr>
        <td width="150px" style="background-color: aqua">年龄：</td>
        <td><input class="sage" name="sage" value="${sessionScope.sage}"></td>
    </tr>
    <tr>
        <td width="150px" style="background-color: aqua">家庭住址：</td>
        <td><input class="saddress" name="saddress"  value="${sessionScope.saddress}"></td>
    </tr>
    <tr>
        <td width="150px" style="background-color: aqua">Email:</td>
        <td><input class="semail" name="semail" value="${sessionScope.semail}"></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="修改">
            <input type="reset" value="重置">
        </td>
    </tr>
</table>
</form>
</center>
</body>
</html>
