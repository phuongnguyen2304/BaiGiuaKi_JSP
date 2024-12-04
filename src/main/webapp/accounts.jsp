<%@ page import="java.util.List" %>
<%@ page import="Bai7.Account" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/4/2024
  Time: 9:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Tài Khoản Ngân Hàng</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<Account> accountList = new ArrayList<>();
    accountList.add(new Account("9022999","Bảo Thiên",50000,"Đóng"));
    accountList.add(new Account("83339922","Khương Thảo",8000000,"Hoạt động"));
    accountList.add(new Account("578995554","Thanh Nga",30000000,"Hoạt động"));
    accountList.add(new Account("29997733","Văn Nam",100000,"Đóng"));
    accountList.add(new Account("72299911","Nguyên Phương",2000000,"Hoạt động"));
    request.setAttribute("accounts",accountList);
%>
<h2>Danh Sách Tài Khoản Ngân Hàng</h2>
<table border="1">
    <tr>
    <th>Số Tài Khoản</th>
        <th>Tên Chủ Tài Khoản</th>
        <th>Số Dư</th>
        <th>Trạng Thái</th>
    </tr>
    <c:forEach var="account" items="${accounts}">
        <tr>
            <td>${account.accountNumber}</td>
            <td>${account.accountHolderName}</td>
            <td>${account.balance}</td>
            <td>${account.status}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
